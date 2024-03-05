@minLength(3)
@maxLength(24)
param storageAccountName string = 'store${uniqueString(resourceGroup().id)}'

resource virtualNetwork 'Microsoft.Network/virtualNetworks@2023-09-01' = {
  name: 'exampleVNet'
  location: resourceGroup().location
  properties: {
    addressSpace: {
      addressPrefixes: [
        '10.0.0.0/16'
      ]
    }
    subnets: [
      {
        name: 'Subnet-1'
        properties: {
          addressPrefix: '10.0.0.0/24'
        }
      }
      {
        name: 'Subnet-2'
        properties: {
          addressPrefix: '10.0.1.0/24'
        }
      }
    ]
  }
}

resource exampleStorage 'Microsoft.Storage/storageAccounts@2023-01-01' = {
  name: storageAccountName
  location: 'eastus'
  sku: {
    name: 'Standard_LRS'
  }
  kind: 'StorageV2'
}

resource symbolicname 'Microsoft.Storage/storageAccounts@2023-01-01' = {
  name: 'test'
  location: 'eastus'
  tags: {
    tagName1: 'tagValue1'
    tagName2: 'tagValue2'
  }
  sku: {
    name: 'testSku'
  }
  kind: 'string'
  extendedLocation: {
    name: 'string'
    type: 'EdgeZone'
  }
  identity: {
    type: 'string'
    userAssignedIdentities: {
      customizedProperty: {}
    }
  }
  properties: {
    accessTier: 'string'
    allowBlobPublicAccess: false
    allowCrossTenantReplication: false
    allowedCopyScope: 'string'
    allowSharedKeyAccess: false
    azureFilesIdentityBasedAuthentication: {
      activeDirectoryProperties: {
        accountType: 'string'
        azureStorageSid: 'string'
        domainGuid: 'string'
        domainName: 'string'
        domainSid: 'string'
        forestName: 'string'
        netBiosDomainName: 'string'
        samAccountName: 'string'
      }
      defaultSharePermission: 'string'
      directoryServiceOptions: 'string'
    }
    customDomain: {
      name: 'string'
      useSubDomainName: false
    }
    defaultToOAuthAuthentication: false
    dnsEndpointType: 'string'
    encryption: {
      identity: {
        federatedIdentityClientId: 'string'
        userAssignedIdentity: 'string'
      }
      keySource: 'string'
      keyvaultproperties: {
        keyname: 'string'
        keyvaulturi: 'string'
        keyversion: 'string'
      }
      requireInfrastructureEncryption: false
      services: {
        blob: {
          enabled: true
          keyType: 'string'
        }
        file: {
          enabled: false
          keyType: 'string'
        }
        queue: {
          enabled: false
          keyType: 'string'
        }
        table: {
          enabled: false
          keyType: 'string'
        }
      }
    }
    immutableStorageWithVersioning: {
      enabled: false
      immutabilityPolicy: {
        allowProtectedAppendWrites: false
        immutabilityPeriodSinceCreationInDays: 1
        state: 'string'
      }
    }
    isHnsEnabled: false
    isLocalUserEnabled: false
    isNfsV3Enabled: false
    isSftpEnabled: false
    keyPolicy: {
      keyExpirationPeriodInDays: 1
    }
    largeFileSharesState: 'string'
    minimumTlsVersion: 'string'
    networkAcls: {
      bypass: 'string'
      defaultAction: 'string'
      ipRules: [
        {
          action: 'Allow'
          value: 'string'
        }
      ]
      resourceAccessRules: [
        {
          resourceId: 'string'
          tenantId: 'string'
        }
      ]
      virtualNetworkRules: [
        {
          action: 'Allow'
          id: 'string'
          state: 'string'
        }
      ]
    }
    publicNetworkAccess: 'string'
    routingPreference: {
      publishInternetEndpoints: false
      publishMicrosoftEndpoints: false
      routingChoice: 'string'
    }
    sasPolicy: {
      expirationAction: 'Log'
      sasExpirationPeriod: 'string'
    }
    supportsHttpsTrafficOnly: false
  }
}
