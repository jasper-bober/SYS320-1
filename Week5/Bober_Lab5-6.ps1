. (Join-Path $PSScriptRoot Bober_Lab5-3.ps1)


$FullTable2 = daysTranslator($FullTable)

$ITSInstructors = $FullTable2 | Where-Object { ($_."Class Code" -ilike "*SYS*") -or `
                             ($_."Class Code" -ilike "*NET*") -or  `
                             ($_."Class Code" -ilike "*SEC*") -or `
                             ($_."Class Code" -ilike "*FOR*") -or `
                             ($_."Class Code" -ilike "*CSI*") -or `
                             ($_."Class Code" -ilike "*DAT*") -and
                             ($_."Instrcutor" -notmatch "\d") }`
                             | Sort-Object "Instrcutor" | Select-Object -Property "Instrcutor"

#$ITSInstructors


 
