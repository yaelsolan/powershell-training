[int]$EmployeeID = Read-Host "Enter employee ID"

switch ($EmployeeID) {
    1 { $Department = "sales"}
    2 { $Department = "Marketing"}
    3 { $Department = "IT"}
    {$EmployeeID -ge 4} {$Department = "Other Employee ID"}
    Default {$Department = "No ID specified"}
}

"Department is $Department"
