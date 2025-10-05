Function Extract-ValidIPAddress {
param ($iptext)

    $IPregex=‘(?<Address>((25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.){3}(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?))’
    
    If ($iptext -Match $IPregex) {$Matches.allmatches}
}

Extract-ValidIPAddress -iptext "the white fox ate IP address with 10.10.10.66 the value of 123.23.55.66 bla nbdl blksagsd"
