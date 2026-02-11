

function ApacheLogs1(){

    $logsNotFormatted = Get-Content C:\xampp\apache\logs\access.log | Select-String "404"

    $LogTable = @()
    for($i=0; $i -lt $logsNotFormatted.Count; $i++){


    $words = ([String]$logsNotFormatted[$i]).split(" ");

    $LogTable += [pscustomobject]@{ "IP" = $words[0] 
                                    "Time" = $words[3] 
                                    "Method" = $words[5]
                                    "Page" = $words[6]
                                  "Protocol" = $words[7]
                                  "Response" = $words[8]
                                  "Referrer" = $words[10]
    
    }


}

# Write-Host ($logTable | Group-Object IP | Format-Table -AutoSize | Out-String)

return $LogTable


}

$CallingFunction = ApacheLogs1
Write-Host ($logTable | Group-Object IP | Format-Table -AutoSize | Out-String)

$CallingFunction

