.(Join-Path $PSScriptRoot Bober_LogLab-1.ps1)

$Deliverable = ApacheLogs1
$Filter = Write-Host ($Deliverable | Where-Object{ $_.Message -like "10.0.17.22" -and $_.Referrer -like "*index.html"
                                                    } `
                                                   | Format-Table | Out-String )


