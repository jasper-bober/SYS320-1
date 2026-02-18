. (Join-Path $PSScriptRoot Bober_Lab5-3.ps1)

$FullTable2 = daysTranslator($FullTable)

$FullTable2 | Where-Object { $_.Instrcutor -ilike "Furkan*" } 
# 






