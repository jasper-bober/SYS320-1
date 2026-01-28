

$loginouts = Get-EventLog -LogName System -InstanceId (7001, 7002) -After (Get-Date).AddDays(-14)

$loginoutsTable = @()
for($i=0; $i -lt $loginouts.Count; $i++){ 

$event = ""
if($loginouts[$i].InstanceId -eq 7001) {$event="Logon"}
if($loginouts[$i].InstanceId -eq 7002) {$event="Logoff"}

$user = $loginouts[$i].ReplacementStrings[1]
$SID = New-Object System.Security.Principal.SecurityIdentifier($user)
$Name = $SID.Translate([System.Security.Principal.NTAccount]) 

$loginoutsTable += [pscustomobject]@{"Time" = $loginouts[$i].TimeGenerated; `
                                    "ID" = $loginouts[$i].InstanceId; `
                                    "Event" = $event;
                                    "User" = $Name.Value;
                                    }

}

$loginoutsTable