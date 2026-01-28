. (Join-Path $PSScriptRoot Bober_Lab3-4.ps1)
. (Join-Path $PSScriptRoot Bober_Lab3-5.ps1)

clear
 

$loginoutsCall = DayNumberFunction 20
$loginoutsCall

$OnAndOffsCall =  StartUpsandShutdowns
$OnAndOffsCall


