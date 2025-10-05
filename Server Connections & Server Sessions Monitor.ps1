# Server Connections to specific Shares, openFiles etc
gwmi win32_ServerConnection | Select UserName, ComputerName, @{n='ActiveTime (Minutes)';e={[math]::Round($($_.ActiveTime)/60,1)}}, ShareName, NumberOfFiles | ft -AutoSize
# Server Session - total Active time & Idle Time
gwmi win32_ServerSession | select UserName, ComputerName, @{n='ActiveTime (Minutes)';e={[math]::Round($($_.ActiveTime)/60)}}, @{n='IdleTime (Minutes)';e={[math]::Round($($_.IdleTime)/60,1)}}, ResourcesOpened | sort 'IdleTime (Minutes)' | ft -AutoSize
# Server Sessions monitor
while ($x =1) {gwmi win32_ServerSession | select UserName, ComputerName, @{n='ActiveTime (Minutes)';e={[math]::Round($($_.ActiveTime)/60)}}, @{n='IdleTime (Minutes)';e={[math]::Round($($_.IdleTime)/60,1)}}, ResourcesOpened | sort 'IdleTime (Minutes)' | ft -AutoSize; sleep 1;cls}
