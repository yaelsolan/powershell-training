#Write-EventLog -LogName Application -EventId 9999 -Message "this is a test for IP 97.54.211.56 new new new " -Source scecli -EntryType Information 

Function Extract-ValidIPAddress {
param ($iptext)

    $IPregex=‘(?<Address>((25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.){3}(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?))’
    
    If ($iptext -Match $IPregex) {$Matches.address}
}

$logs = get-eventlog -LogName Application -InstanceId 9999

foreach ($log in $logs) {


    Extract-ValidIPAddress -iptext ($log.Message)   

}
