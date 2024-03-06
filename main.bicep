@minLength(3)
@maxLength(24)
param storageAccountName string = 'storeage-${uniqueString(resourceGroup().id)}'
param storagename string = 'default'
resource exampleStorage 'Microsoft.Storage/storageAccounts@2023-01-01' = {
  name: storageAccountName
  location: resourceGroup().location
  sku: {
    name: 'Standard_LRS'
  }
  kind: 'StorageV2'
}
resource blobServices 'Microsoft.Storage/storageAccounts/blobServices@2023-01-01' = {
  name: 'default'
  parent: exampleStorage
}
resource container 'Microsoft.Storage/storageAccounts/blobServices/containers@2023-01-01' = {
  name: storagename
  parent: blobServices
  properties: {
      publicAccess: 'None'
      metadata: {}
  }
  
}
