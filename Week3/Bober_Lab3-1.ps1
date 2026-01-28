

# getting login and logoff records from windows events 
Get-EventLog -LogName System -InstanceId (7001, 7002)