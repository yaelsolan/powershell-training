Get-Process 
Get-Process | sort PM -Descending
Get-Process | sort PM -Descending | select name, id -First 5
get-alias ?
get-alias where
Get-Process | where ID -gt 4000
Get-Service
Get-Service | where Status -eq "running"
Get-PSDrive
dir C:\Intel\
dir HKLM:\SOFTWARE\Microsoft\
cd cert:
dir
cd .\\CurrentUser\
dir .\AuthRoot\
cd..
dir -Recurse
dir -Recurse | where Subject -like "*godadd*"
c:
New-SmbShare -Path C:\temp\ -Name TEMP
New-PSDrive -Name Z -PSProvider FileSystem -Root \\CLASS-110-TEACH\openu
Get-PSDrive
dir z:
Remove-PSDrive Z
New-PSDrive -Name X -PSProvider FileSystem -Root \\CLASS-110-TEACH\TEMP -Persist
new-item HKLM:\SOFTWARE\ -Name Test -Value "powerShell Test"
cd HKLM:\SOFTWARE\Tableau\
cd..
cd .\Test\
New-ItemProperty -Path . -Name ServerType -PropertyType DWORD -Value 12
Get-ItemProperty .
cd..
Remove-Item .\Test\
c:
new-item Backup -ItemType Directory 
Get-Command
Get-Command *-item
Get-Command -Noun item, itemproperty
Get-Command -verb start
help new-item -Full
Get-WmiObject win32_logicaldisk
Get-WmiObject win32_logicaldisk | ft 
ps | fl
Get-WmiObject win32_logicaldisk | ft 
Get-Service
Get-Service | fw
Get-Service | fw -Column 4
Get-Service | fw -Property DisplayName -Column 4
Get-Service | select name, StartType
Get-Service | select name, StartType | fl
Get-Service | fl name, StartType
Get-Service
Get-Service | ft -Wrap
Get-Service | sort StartType | ft -GroupBy starttype
Get-Service | ft -GroupBy starttype
Get-Service | group StartType
ps | select -Unique
dir C:\temp\ | Select-String dudu
dir C:\temp\ | Select-String dudu | select Path
dir C:\temp\ | Select-String dudu | select Path -Unique
Get-Service | select name, Status | fl
Get-Service | select name, Status | Get-Member
Get-Service | fl | select name, status
Get-Service | fl | get-member
ps | Out-File c:\temp\proc.txt
cd .\temp\
.\proc.txt
ps | Out-GridView
Get-WmiObject -Class win32_bios
Get-WmiObject -Class win32_computersystem
Get-WmiObject -Class win32_computersystem | select *
Get-WmiObject -Namespace root\WMI -List
Get-WmiObject -list
Get-WmiObject -list *disk*
gwmi Win32_LogicalDisk
gwmi Win32_DiskPartition
gwmi Win32_DiskDrive
gwmi Win32_DiskDrive | select *
gwmi Win32_LogicalDisk | where drivetype -eq 3
gwmi Win32_LogicalDisk -Filter "DriveType=3"
Measure-Command { gwmi Win32_LogicalDisk -Filter "DriveType=3"}
Measure-Command {gwmi Win32_LogicalDisk | where drivetype -eq 5}
gwmi Win32_LogicalDisk -Filter "DriveType=3"
gwmi -Query "select * from Win32_LogicalDisk where Drivetype = 3"
Measure-Command { gwmi -Query "select * from Win32_LogicalDisk where Drivetype = 3"}
gwmi win32_service 
gwmi win32_service -Filter "Name='spooler'"
$Spooler = gwmi win32_service -Filter "Name='spooler'"
$Spooler.StopService()
$Spooler.StartService()
$Spooler.StartService()
$Result = $Spooler.StartService()
if ($Result.ReturnValue -ne 0) {"Something happened.."} else {"all cool"}
Invoke-WmiMethod -InputObject $Spooler -Name ChangeStartMode -ArgumentList "Disabled"
gwmi win32_service -Filter "Name='spooler'"
Invoke-WmiMethod -InputObject $Spooler -Name ChangeStartMode -ArgumentList "automatic"
Clear-History
Get-WmiObject -Class win32_bios
Get-WmiObject -Class win32_computersystem
Get-WmiObject -Class win32_computersystem | select *
Get-WmiObject -Namespace root\WMI -List
Get-WmiObject -list
Get-WmiObject -list *disk*
gwmi Win32_LogicalDisk
gwmi Win32_DiskPartition
gwmi Win32_DiskDrive
gwmi Win32_DiskDrive | select *
gwmi Win32_LogicalDisk | where drivetype -eq 3
gwmi Win32_LogicalDisk -Filter "DriveType=3"
Measure-Command { gwmi Win32_LogicalDisk -Filter "DriveType=3"}
Measure-Command {gwmi Win32_LogicalDisk | where drivetype -eq 5}
gwmi Win32_LogicalDisk -Filter "DriveType=3"
gwmi -Query "select * from Win32_LogicalDisk where Drivetype = 3"
Measure-Command { gwmi -Query "select * from Win32_LogicalDisk where Drivetype = 3"}
gwmi win32_service 
gwmi win32_service -Filter "Name='spooler'"
$Spooler = gwmi win32_service -Filter "Name='spooler'"
$Spooler.StopService()
$Spooler.StartService()
$Spooler.StartService()
$Result = $Spooler.StartService()
if ($Result.ReturnValue -ne 0) {"Something happened.."} else {"all cool"}
Invoke-WmiMethod -InputObject $Spooler -Name ChangeStartMode -ArgumentList "Disabled"
gwmi win32_service -Filter "Name='spooler'"
Invoke-WmiMethod -InputObject $Spooler -Name ChangeStartMode -ArgumentList "automatic"
gwmi -List *networkadapter*
gwmi win32_networkadapterconfiguration
gwmi win32_networkadapterconfiguration | where {$_.dhcpenabled -EQ $true -and $_.ipaddress -ne $null}
gwmi win32_networkadapterconfiguration | where {$_.dhcpenabled -EQ $true -and $_.ipaddress -ne $null -and $_.DefaultIPGateway -ne $null}
$adapter = gwmi win32_networkadapterconfiguration | where {$_.dhcpenabled -EQ $true -and $_.ipaddress -ne $null -and $_.DefaultIPGateway -ne $null}
$adapter
Invoke-WmiMethod -InputObject $adapter -Name Renewdhcplease
Invoke-WmiMethod -InputObject (gwmi win32_networkadapterconfiguration)[0] -Name Renewdhcplease
gwmi -list
gwmi -list | select -ExpandProperty methods
gwmi -list | select -ExpandProperty methods | where name -like "*EnableDHCP*"
gwmi -list | select -ExpandProperty methods | where name -like "*DHCP*"
gwmi -list | select -ExpandProperty methods | where name -like "*Reboot*"
