param(
     [string]$type
 )
 if ($type == 'dev'){
    az iot device simulate --device-id contosoDevice --hub-name niklasdHubdkpxbvhodrlsg --properties level=storage --data "This is a test message (dev)"
 }
 elseif ($type == 'test') {
    az iot device simulate --device-id contosoDevice --hub-name niklasdHubdkpxbvhodrlsg --properties level=storage --data "This is a test message (test)"
 }
 elseif ($type == 'main') {
    az iot device simulate --device-id contosoDevice --hub-name niklasdHubdkpxbvhodrlsg --properties level=storage --data "This is a test message (main)"
 }
 else{
    Write-Output "Wrong input! Use only dev/test/main"
 }