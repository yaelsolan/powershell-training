

$num = 100
$x = 0

while ($X -le $num) {


write-host -BackgroundColor Red ("X value is $X")
$x = $x +1

}

while ($True) {

$srv = Get-Service -Name *z*
if ($srv.Status -eq "running") {break}
Start-Sleep -Seconds 3

}