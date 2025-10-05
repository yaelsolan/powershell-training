$services = Get-Service

foreach ($srv in $services) {

    if (($srv.Status -eq "stopped") -and ($srv.Name -like "*z*")) {

    $srv | Start-Service 
    
    
    }

}