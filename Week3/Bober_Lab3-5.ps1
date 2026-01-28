
function StartUpsandShutdowns(){

    $OnAndOffs = Get-EventLog -LogName System | Where-Object {(6005,6006) -contains $_.EventID}

    $OnAndOffsTable = @()
    for($i=0; $i -lt $OnAndOffs.Count; $i++){ 

    $event = ""
    if($OnAndOffs[$i].EventID -eq 6005) {$event="Start-up"}
    if($OnAndOffs[$i].EventID -eq 6006) {$event="Shut-down"}

    $user = "System" 

    $OnAndOffsTable += [pscustomobject]@{"Time" = $OnAndOffs[$i].TimeGenerated; `
                                        "ID" = $OnAndOffs[$i].InstanceId; `
                                        "Event" = $event;
                                        "User" = $user;
                                        }

}

return $OnAndOffsTable

}


$FunctionCall =  StartUpsandShutdowns

$FunctionCall
