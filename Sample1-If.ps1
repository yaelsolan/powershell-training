$x = Read-Host -Prompt "Please Enter a number between 1 to 10"

if ($x -eq 5) {

Write-Host -ForegroundColor Yellow ("The Variable X is equal to $x")
    
}

elseif (($x -lt 5) -and ($x -gt 1)){

Write-Host -ForegroundColor Blue -BackgroundColor DarkGreen ("The value of X is less then 5")

}

else {

Write-Host -BackgroundColor Red ("The value of X is more then 5")
    if ($x -eq 8) {
    
        Write-Host -BackgroundColor Magenta ("The value of X is 8")
    }

}