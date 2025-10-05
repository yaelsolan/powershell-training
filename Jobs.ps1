$cred = Get-Credential
Start-Job -Name "dir hklm" -ScriptBlock {dir HKLM:\SOFTWARE}
Start-Job -Name "dir c:\" -ScriptBlock {dir c:\ -Recurse}
Get-Job
Invoke-Command -ComputerName CLASS-110-WS16 -ScriptBlock {ipconfig.exe} -Credential $cred -AsJob
(Get-Job Job5)[0].ChildJobs.JobStateInfo.Reason
#$loop | foreach {$Computers += "CLASS-110-WS$_"}
Get-Job 'dir c:\' | Stop-Job
Get-Job 'dir c:\' | Receive-Job | Out-File C:\temp\dir_c.txt 
# free mem resources
[gc]::Collect()