param (
    [string]$environment
)

function DeployToDev {
    Write-Host "Deploying to Dev environment..."
    az deployment group create --resource NiklasD-rg --template-file UserStorys\Userstory1\Userstory1.bicep --parameters UserStorys\Userstory1\Userstory1-dev.json --confirm-with-what-if
}

function DeployToTest {
    Write-Host "Deploying to Test environment..."
    az deployment group create --resource NiklasD-rg --template-file .\Userstory1.bicep --parameters .\Userstory1-test.json --confirm-with-what-if
}

function DeployToMain {
    Write-Host "Deploying to Main environment..."
    az deployment group create --resource NiklasD-rg --template-file .\Userstory1.bicep --parameters .\Userstory1-prod.json --confirm-with-what-if
}

# Main script logic
if ($environment -eq 'dev') {
    DeployToDev
}
elseif ($environment -eq 'test') {
    DeployToTest
}
elseif ($environment -eq 'main') {
    DeployToMain
}
else {
    Write-Host "Invalid environment parameter. Please use 'dev', 'test', or 'main'."
}

#./createWebApp.ps1 -Environment dev