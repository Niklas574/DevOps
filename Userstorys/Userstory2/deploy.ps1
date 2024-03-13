param (
    [string]$type
)

function DeployToDev {
    Write-Host "Deploying to Dev environment..."
    az deployment group create --resource NiklasD-rg --template-file UserStorys\Userstory2\Userstory2.bicep --parameters UserStorys\Userstory2\Userstory2-dev.json --confirm-with-what-if
}

function DeployToTest {
    Write-Host "Deploying to Test environment..."
    az deployment group create --resource NiklasD-rg --template-file UserStorys\Userstory2\Userstory2.bicep --parameters UserStorys\Userstory2\Userstory2-test.json --confirm-with-what-if
}

function DeployToMain {
    Write-Host "Deploying to Main environment..."
    az deployment group create --resource NiklasD-rg --template-file UserStorys\Userstory2\Userstory2.bicep --parameters UserStorys\Userstory2\Userstory2-prod.json --confirm-with-what-if
}

# Main script logic
if ($type -eq 'dev') {
    DeployToDev
}
elseif ($type -eq 'test') {
    DeployToTest
}
elseif ($type -eq 'main') {
    DeployToMain
}
else {
    Write-Host "Invalid environment parameter. Please use 'dev', 'test', or 'main'."
}

#./deploy.ps1 -type dev