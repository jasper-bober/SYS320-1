. (Join-Path $PSScriptRoot Bober_Lab5-6.ps1)


$FullTable2 | Where-Object { $_.Instrcutor -in $ITSInstructors.Instrcutor } `
| Group-Object "Instrcutor" | Select-Object -Property Count, Name | Sort-Object Count -Descending

