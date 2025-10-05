# Get Counter

(Get-Counter '\Process(*)\% Processor Time').CounterSamples | Where-Object {$_.CookedValue -gt 20} | fl *

# WMI Query

$properties=@(
    @{Name="Process Name"; Expression = {$_.name}},
    @{Name="CPUp"; Expression = {$_.PercentProcessorTime}},    
    @{Name="Memory (MB)"; Expression = {[Math]::Round(($_.workingSetPrivate / 1mb),2)}}
)
Get-WmiObject -class Win32_PerfFormattedData_PerfProc_Process | 
    Select-Object $properties | where {$_.Cpup -ge 20}|
    Format-Table -AutoSize

# Using Get Process

$totalcpu = Get-Process | Select-Object -expand CPU | Measure-Object -Sum | Select-Object -expand Sum
$cpu20 = $totalcpu * 0.2
Get-Process | where {$_.cpu -ge $cpu20}
