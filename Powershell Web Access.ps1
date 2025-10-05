# Install PowerShell Web Access
Install-WindowsFeature WindowsPowerShellWebAccess
# configure PowerShell Web Access gateway with a test certificate  
Install-PswaWebApplication -UseTestCertificate
# add pssession config
Register-PSSessionConfiguration -Name Admins -RunAsCredential PSDOM\administrator -ShowSecurityDescriptorUI
# Configure a Restrictive Authorization Rule
Add-PswaAuthorizationRule –UserName PSDOM\administrator -ComputerName PSHELL-DC -ConfigurationName Admins
# Browse to PSWA (NOTE: Change 'Optional connection settings' to the configuration name Admins)
start chrome https://localhost/pswa/