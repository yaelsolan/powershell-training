<# This form was created using POSHGUI.com  a free online gui designer for PowerShell
.NAME
    Untitled
#>

$ButtonCode = {
    $Button1.Text = "Running.."
    $Button1.Enabled = $false
    $Label1.Text = "Total of $((dir $TextBox1.Text -Recurse).count) items."
    $Button1.Enabled = $true
    $Button1.Text = "Run"
}

Add-Type -AssemblyName System.Windows.Forms
[System.Windows.Forms.Application]::EnableVisualStyles()

$Form                            = New-Object system.Windows.Forms.Form
$Form.ClientSize                 = '334,194'
$Form.text                       = "My IT Tool"
$Form.BackColor                  = "#e42424"
$Form.TopMost                    = $false

$TextBox1                        = New-Object system.Windows.Forms.TextBox
$TextBox1.multiline              = $false
$TextBox1.width                  = 200
$TextBox1.height                 = 20
$TextBox1.location               = New-Object System.Drawing.Point(64,38)
$TextBox1.Font                   = 'Arial,14'

$Button1                         = New-Object system.Windows.Forms.Button
$Button1.text                    = "Run"
$Button1.width                   = 60
$Button1.height                  = 30
$Button1.location                = New-Object System.Drawing.Point(201,129)
$Button1.Font                    = 'Microsoft Sans Serif,10'
$Button1.add_click($ButtonCode)

$Label1                          = New-Object system.Windows.Forms.Label
$Label1.text                     = "Total Items Count"
$Label1.AutoSize                 = $true
$Label1.width                    = 25
$Label1.height                   = 10
$Label1.location                 = New-Object System.Drawing.Point(68,84)
$Label1.Font                     = 'Microsoft Sans Serif,10'

$Form.controls.AddRange(@($TextBox1,$Button1,$Label1))


#Write your logic code here

[void]$Form.ShowDialog()