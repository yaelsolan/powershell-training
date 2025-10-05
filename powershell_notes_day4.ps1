$x = 10
$x
function Show-X {"x is $x"}
Show-X
function Show-X {$x =20; "x is $x"}
Show-X
$x
function Show-X {$global:x =20; "x is $x"}
Show-X
$x
& '.\Get-SecurityEvents - Function Example.ps1'
& '.\Get-SecurityEvents - Function Example.ps1' -ComputerName . -EventID 4634 -NumberOfEvents 2
Import-Module .\MyFunctions.psm1
Test-A
Test-B
Test-C
Get-Module
Resolve-DnsName www.google.com
Get-Module
$PSHOME
Test-A
Test-B
Get-Module
Clear-History
cd\
cd .\temp\
if (Test-Path c:\Openu) {"folder exists."} else {mkdir c:\Openu}
if (Test-Path c:\Openu) {"folder exists."} else {mkdir c:\Openu}
if (ps notepad -ErrorAction SilentlyContinue) {"notepad running"} else {"NO notepad found"}
if (ps notepad -ErrorAction SilentlyContinue) {"notepad running"} else {"NO notepad found"}
if (!(Test-Path c:\Openu)) {mkdir c:\Openu} 
arp -a
ipconfig.exe | sls ipv4
22..30 | foreach {$_}
22..30 | foreach {Test-Connection  10.147.22.$_ -Count 1}
22..30 | foreach {Test-Connection  10.147.22.$_ -Count 1 -ErrorAction SilentlyContinue}
foreach ($ip in 22..30) {Test-Connection  10.147.22.$ip -Count 1 -ErrorAction SilentlyContinue }
for ($ip = 22; $ip -le 30; $ip++) {Test-Connection  10.147.22.$ip -Count 1 -ErrorAction SilentlyContinue}
while (ps notepad -ErrorAction SilentlyContinue) {"waiting for Notepad to exit.."; sleep 3}
do  {"waiting for Notepad to Start.."; sleep 3} until (ps notepad -ErrorAction SilentlyContinue)
do  {"waiting for Notepad to Start.."} until (ps notepad -ErrorAction SilentlyContinue)
do  {"waiting for spooler to Start.."; sleep 3} until ((Get-Service Spooler).status -eq "running")
ps notepad | Get-Member -MemberType Method
(ps notepad).WaitForExit()
$process = start calc -PassThru
$process = start calculator -PassThru
$process = start notepad -PassThru
$process
$process.WaitForExit()