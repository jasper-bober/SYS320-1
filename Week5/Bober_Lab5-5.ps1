. (Join-Path $PSScriptRoot Bober_Lab5-3.ps1)


$FullTable2 = daysTranslator($FullTable)

$FullTable2 | Where-Object { ($_.Location -ilike "FREE 105") -and ($_.Days -ilike "Wednesday")} | `
Sort-Object -Property "Time Start" | Select-Object -Property "Time Start", "Time End", "Class Code"
 