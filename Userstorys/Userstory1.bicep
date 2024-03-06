param location string = resourceGroup().location

param repositoryBranch string = 'main'

// App Service Plan Creation
resource appServicePlan 'Microsoft.Web/serverfarms@2023-01-01' = {
  name: 'myAppServicePlan'
  location: location
  sku: {
    name: 'F1'
  }
  kind: 'app'
  properties: {
    reserved: false
  }
}

// Web App Creation
resource appService 'Microsoft.Web/sites@2023-01-01' = {
  name: 'websitenamenod'
  location: location
  properties: {
    serverFarmId: appServicePlan.id
    httpsOnly: true
    siteConfig: {
      appSettings: [
        {
          name: 'TEXT_TO_REPLACE_SUBTITLE_WITH' // This value needs to match the name of the environment variable in the application code
          value: 'Subtitle text'
        }
        {
          name: 'SCM_DO_BUILD_DURING_DEPLOYMENT' // Build the application during deployment
          value: 'true'
        }
        {
          name: 'WEBSITE_NODE_DEFAULT_VERSION' // Set the default node version
          value: '~20'
        }
      ]
      publicNetworkAccess: 'Enabled'
    }
  }
}

// Source Control Integration
resource srcControls 'Microsoft.Web/sites/sourcecontrols@2023-01-01' = {
  parent: appService
  name: 'web'
  properties: {
    repoUrl: 'https://github.com/Niklas574/DevOps'
    branch: repositoryBranch
    isManualIntegration: true
  }
}
