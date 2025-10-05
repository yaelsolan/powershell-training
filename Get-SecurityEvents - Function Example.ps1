function global:Get-SecurityEvents {
<# 
.SYNOPSIS
This command queries Sec events. duh.
.DESCRIPTION
This command does this, and that, and beyond! (to infinity! #4 coming ;))
.PARAMETER ComputerName
Any valid hostname. This is Mandatory
.PARAMETER EventID
Any valid event ID. defaults to 4624
.EXAMPLE
Queries the last 2 successful logon events from host DC1
Get-SecurityEvents -ComputerName DC1 -NumberOfEvents 2
#>
[cmdletBinding()]
param (
    [parameter(mandatory=$true)]
    [string]$ComputerName,
    [int]$EventID =4624,
    [int]$NumberOfEvents = 5
)
Write-Verbose "Initiating query on $ComputerName..."
Get-EventLog -LogName Security -ComputerName $ComputerName | 
    where EventID -eq $EventID | select -First $NumberOfEvents
Write-Verbose "Finished."
}