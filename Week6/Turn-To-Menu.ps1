. (Join-Path $PSScriptRoot Bober_Lab4-1.ps1)
. (Join-Path $PSScriptRoot Event-Logs1.ps1)
. (Join-Path $PSScriptRoot ChromeWeb.ps1)


$Prompt = "`n"
$Prompt += "Please choose your operation:`n"
$Prompt += "1 - Display last 10 apache logs `n"
$Prompt += "2 - Display last 10 failed logins `n"
$Prompt += "3 - Display at risk users `n"
$Prompt += "4 - Start champlain.edu `n"
$Prompt += "5 - Exit `n"

$operation = $true

while($operation){

    
    Write-Host $Prompt | Out-String
    $choice = Read-Host 


    if($choice -eq 5){
        Write-Host "Goodbye" | Out-String
        exit
        $operation = $false 

    }

    elseif($choice -eq 4){
        startChrome
    }
    

    elseif($choice -eq 3){
        $RiskUsers = getAtRiskUsers

        if($RiskUsers.Length -gt 0){
            return $RiskUsers
        }
        else {
            Write-Host "No at risk users found" | Out-String
    }


    }

    elseif($choice -eq 2){
        getFailedLogins 10
    }

    elseif($choice -eq 1){
        ApacheLogs1 10
    }

    else {
        Write-Host "That is not a valid character, please try again" | Out-String
    }

}

