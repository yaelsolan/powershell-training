ipconfig
Invoke-Command -ComputerName pshell-dc -ScriptBlock {ipconfig.exe }
Invoke-Command -ComputerName pshell-dc -ScriptBlock {hostname}
$session = New-PSSession -ComputerName pshell-dc
Get-PSSession
Invoke-Command -Session $session -ScriptBlock {ipconfig.exe}
Invoke-Command -Session $session -ScriptBlock {$x = 1}
Invoke-Command -Session $session -ScriptBlock {$x }
Invoke-Command -ComputerName pshell-dc -ScriptBlock { $x= 1 }
Invoke-Command -ComputerName pshell-dc -ScriptBlock { $x}
Get-Process -ComputerName pshell-dc -Name wsmprovhost
Enable-PSRemoting -Force
help about_Remote_Troubleshooting
$humus = 10
$humus
$humus + 20
$humus |Get-Member 
$humus = "hello world"
$humus + 20
$humus |Get-Member 
$humus.ToUpper()
$humus.Replace("ll","T")
$humus.Substring(7,4)
$humus.Split(" ")
$humus.ToCharArray()
$number = 10
$number + 20
[int]$number = 10
$number = "gg"
$date = "9/11/2001"
 $date
 $date|gm
$date.Split("/")[2]
[datetime]$date = "9/11/2001"
$date
$date.ToShortDateString()
$date.AddDays(-78)
$date.DayOfWeek
$date.DayOfYear
[datetime]$date = "5/7/1981"
$date.DayOfWeek
[datetime]$date = "5/7/2019"
$date.DayOfWeek
$var = "<cars><car name='mazda'/><car name='renault'/><car name='BMW'/></cars>"
$var 
$var  | gm
$var 
[xml]$var = "<cars><car name='mazda'/><car name='renault'/><car name='BMW'/></cars>"
$var
$var.cars
$var.cars.car
$var.Save("c:\temp\cars.xml")
cd .\temp\
.\cars.xml
$numbers = 1..5
$numbers
$numbers.Count
$numbers[0]
$numbers = cat C:\Users\termuser15\Desktop\Openu\Day1_Commands_from_Yossi.txt
$numbers.count
$numbers[0]
$numbers[-1]
$numbers[-1..13]
$numbers[-1..-3]
$numbers[4..7]
$numbers.IsFixedSize
$myArray = @()
$myArray += "hi"
$myArray += "bye"
$myArray += "why"
$myArray.Count
$myArray
$myArray -= "hi"
$myArray.Remove("hi")
$myArray = New-Object System.Collections.ArrayList
$myArray.Add("HI")
$myArray.Add("BYe")
$myArray.Add("why")
$myArray.Add("fly")
$myArray
$myArray.Reverse()
$myArray
$myArray.Remove("why")
$myArray
$numbers = 1, 4, 7, 89
$numbers
$numbers += 99
$numbers
.\New-SelfSignedCertificateEx.ps1
Set-ExecutionPolicy Restricted
Set-ExecutionPolicy Restricted -Scope CurrentUser
Set-ExecutionPolicy Restricted -Scope Process 
Get-ExecutionPolicy -List
.\MyScript.ps1
New-SelfsignedCertificateEx -Subject "CN=Test Script Signing" -EKU "Code Signing" -KeySpec "Signature" -KeyUsage "DigitalSignature" -FriendlyName "Test Script Signing"
dir Cert:\CurrentUser\MSIEHistoryJournal\
dir Cert:\CurrentUser\My\
certmgr.msc
Set-AuthenticodeSignature .\MyScript.ps1 (dir Cert:\CurrentUser\My\)[0]
notepad .\MyScript.ps1help about_Remote_Troubleshooting