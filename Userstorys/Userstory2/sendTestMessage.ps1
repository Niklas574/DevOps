param(
     [string]$type,
     [string]$deviceName,
     [string]$IoTHubName
 )
 if ($type -eq 'dev'){
   TestMessage
 }
 elseif ($type -eq 'test') {
   TestMessage
 }
 elseif ($type -eq 'main') {
   TestMessage
 }
 else{
    Write-Output "Wrong input! Use only -dev/test/main -deviceName -IoTHubName"
 }
 function TestMessage {
   az iot device simulate --device-id $deviceName --hub-name $IotHubName --properties level=storage --data "This is a test message ($type)"
 }