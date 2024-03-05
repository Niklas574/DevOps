@minLength(3)
@maxLength(24)
param storageAccountName string = 'storeage-${uniqueString(resourceGroup().id)}'
resource exampleStorage 'Microsoft.Storage/storageAccounts@2023-01-01' = {
  name: storageAccountName
  location: resourceGroup().location
  sku: {
    name: 'Standard_LRS'
  }
  kind: 'StorageV2'
}
