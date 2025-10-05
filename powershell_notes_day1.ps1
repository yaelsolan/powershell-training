c:
ipconfig.exe
Robocopy.exe
cacls.exe
ping www.google.com
HOSTNAME.EXE
ping CLASS-110-WS1
Get-Process
Get-Service
Start-Process calc
Get-Command
Get-Help 
Get-Help  Test-Connection 
Get-Help Get-Process
Get-Help Get-Process -Full
Get-Command *print*
Get-Process | Out-Printer
ping CLASS-110-WS1
Test-Connection -ComputerName  CLASS-110-WS1 -Count 1
ping CLASS-110-WS1 -n 1
Test-Connection -ComputerName  CLASS-110-WS1 -Count 1 | Get-Member
Test-Connection -ComputerName  CLASS-110-WS1 -Count 1 | select ResponseTime, IPV4Address | fl
Get-Process 
Get-Process | Get-Member
Get-Process | select Path, PM, ID
cls
Get-Process | select name, id, cpu 
Get-Process | select name, id, cpu | Out-GridView
Stop-Process calc
Stop-Process (Get-Process Calculator)
calc.exe
Get-Process Calculator | kill
Get-Alias kill
dir HKLM:\SOFTWARE\
dir Cert:\CurrentUser\My\
dir Cert:\CurrentUser\Root\
1 -in 1..5
7 -in 1..5
"hello world" -like "hello*"
"hello Open uni" -like "hello*"
"ello Open uni" -like "hello*"
help operators
Update-Help -Force -UICulture en-us
Update-Help -Force -UICulture en-us
iwr google.com -ProxyUseDefaultCredentials
iwr google.com 
iwr google.com -UseBasicParsing -UseDefaultCredentials
whoami.exe
gpresult /r
iwr google.com -Proxy "proxy-bc.openu.ac.il"
iwr -Uri google.com -Proxy "proxy-bc.openu.ac.il"
iwr -Uri www.google.com -Proxy "proxy-bc.openu.ac.il"
iwr -Uri www.google.com -Proxy "proxy-bc.openu.ac.il" -ProxyCredential (Get-Credential)
$cred = Get-Credential
$cred
iwr -Uri www.google.com -ProxyCredential $cred
iwr -Uri www.google.com -ProxyCredential $cred -UseDefaultCredentials
iwr -Uri www.google.com -ProxyCredential $cred -Proxy "http://proxy-bc.openu.ac.il"
iwr -Uri www.google.com -Proxy "http://proxy-bc.openu.ac.il"
update-help -Force -Proxy "http://proxy-bc.openu.ac.il"
cls
Test-Path HKLM:\SOFTWARE\Microsoft\
Test-Path c:\temp
if (Test-Path c:\temp) {"hakol tov. folder there"} else {mkdir c:\temp}
if (Test-Path c:\temp) {"hakol tov. folder there"} else {mkdir c:\temp}
if (Test-Path c:\temp) {"hakol tov. folder there"} else {mkdir c:\temp}
(get-process).count

Clear-History
1..5
1..5 | foreach {$_ * 2}
HOSTNAME.EXE
1..19 | foreach {Test-Connection -ComputerName CLASS-110-WS$_ -Count 1}
for ($i = 1; $i -le 19; $i++) {Test-Connection CLASS-110-WS$i -Count 1}
function Add-Number ($NumberOne, $NumberTwo) {$NumberOne+$NumberTwo}
Add-Number -NumberOne 7 -NumberTwo 6
Add-Number 8 8
Add-Number 89 9
function Ping-Class ($number)  {1..$number | foreach {Test-Connection -ComputerName CLASS-110-WS$_ -Count 1}}
Ping-Class -number 5
Ping-Class -number 8
$x = 10
$x
"value of x is $x"
$x+ 20
$x | Get-Member
$x = "hello world"
$x | Get-Member
$x
$x.Length
$x.Split(" ")
$x.Replace("ll","P")
$x.Substring(6,2)
$x.ToUpper()
[datetime]$date = "11/02/2017"
$date
$date.DayOfWeek
$date.DayOfYear
$date.AddDays(23)
[datetime]$date = "11/g"
([adsisearcher]'(name=administrator)').FindOne()
([adsisearcher]'(name=administrator)').FindOne().Properties
$x = "pc1", "pc2","pc3"
$x
$x.Count
$x[0]
$x[1]
net view
1..19 | foreach {"CLASS-110-WS$_"}
$Computers =  1..19 | foreach {"CLASS-110-WS$_"}
$Computers
$Computers.Count
Test-Connection -ComputerName $Computers -Count 1}
Test-Connection -ComputerName $Computers -Count 1
$services = "bits","spooler", "winrm", "dudumesaperlegulu"
Get-Service -Name $services
Get-Process
Get-Process -Name explorer
Get-Process -Name explorer -IncludeUserName
Get-Process -Name explorer -FileVersionInfo
dir C:\Windows\
dir C:\Windows\ -Recurse
$PSVersionTable
$Host.Version
ipconfig.exe; get-process explorer
dir C:\temp\
get-alias dir
get-alias cd
get-alias cls
Get-ChildItem C:\temp\
Set-Alias c calc
c
Set-Alias ie 'C:\Program Files\Internet Explorer\iexplore.exe'
ie
help Test-Connection -ShowWindow
help Test-Connection -Examples
Show-Command Get-Process
Get-Process -Name vm*