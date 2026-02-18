. (Join-Path $PSScriptRoot Bober_Lab5-6.ps1)


$FullTable2 | Where-Object { $_.Instructor -in $ITSInstructors.Instructor } `
| Group-Object "Instructor" | Select-Object -Property Count, Name | Sort-Object Count -Descending

