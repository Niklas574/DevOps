# Kundenwunsch-1
## Ressourcen
In Bicep gibt es verschiedene Ressourcenvorlagen, welche benutzt werden können. Diese Vorlagen könnt ihr [hier](https://learn.microsoft.com/de-de/azure/templates/microsoft.web/containerapps?pivots=deployment-language-bicep) finden. Hier ist ein Beispiel wie diese Aufgebaut sein können:

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

>[!IMPORTANT]
>Die Ressourcenvorlagen sind unterschiedlich aufgebaut und sehen nicht immer gleich aus, da jede Vorlage andere Werte benötigt!

## Parameterdateien
In Bicep können Parameterdateien verwendet werden, um die Werte von Parametern zu definieren, die in einer Bicep-Datei verwendet werden. Hier ist ein Beispiel dafür, wie du Parameterdateien in Bicep erstellen kannst:

    {
      "$schema": "https://schema.management.azure.com/schemas/2019-04-01/deploymentParameters.json#",
      "contentVersion": "1.0.0.0",
      "parameters": {
        "location": {
          "value": "westeurope"
        },
        "skuName": {
          "value": "Standard_LRS"
        }
      }
    }

>[!NOTE]
>Vorlagen dafür könnt ihr [hier](https://github.com/Azure/azure-resource-manager-schemas/tree/main/schemas) finden.
## PowerShell
PowerShell-Skripts(.ps1) benutzen wir um unsere Bicep-Dateien bereitzustellen. Sie können uns auch alles einfacher machen, zum Beispiel könnte man durch ein Skript sich anmelden lassen und eine Ressourcengruppe zu erstellen, ein Beispiel dafür ist hier:

      # Anmelden bei Azure
      Connect-AzAccount

      # Variablen definieren
      $resourceGroupName = "myResourceGroup"
      $templateFile = "path/to/compiled/template.json"

      # Ressourcengruppe erstellen
      New-AzResourceGroup -Name $resourceGroupName -Location "West Europe"

      # Bereitstellung ausführen
      New-AzResourceGroupDeployment -ResourceGroupName $resourceGroupName -TemplateFile $templateFile

>[!TIP]
>Durch die Kombination von Bicep und PowerShell können Sie Azure-Ressourcen auf einfache und effiziente Weise bereitstellen und verwalten.
## Aufgabenstellung
Als Benutzer möchte ich auf die Anwendung auf all meinen Geräten zugreifen können, ohne eine Installation durchführen zu müssen. Daher würde ich meinen Browser verwenden, und wir müssen eine Ressource erstellen, um eine Website darauf zu hosten.

>[!TIP]
> - **Finde eine Ressource, um eine Website darauf zu hosten.**
> - **Erstelle eine Ressourcenvorlage dafür.**
> - **Erstelle Parameterdateien für Entwicklungs-, Test- und Produktressourcen.**
> - **Schreibe ein PowerShell-Skript, um alle Stufen bereitzustellen. Du möchtest nur eine Stufe pro Ausführung bereitstellen (./createWebApp.ps1 -Environment dev).**
> - **Kurze Dokumentation, warum du die Ressource gewählt hast und welche anderen Optionen du gefunden hast. Vergleiche die verschiedenen Funktionen.**

>[!NOTE]
>Ich habe den App Service gewählt, weil er mir hilft, meine Webanwendungen schnell und unkompliziert bereitzustellen. Er kümmert sich um die Skalierung und die kontinuierliche Aktualisierung der Anwendung, was mir Zeit und Mühe spart. Als alternativen gibt es zum Beispiel eine static Webapp.

>[!TIP]
>Falls benötigt ist [hier](https://medium.com/@farzam_m/getting-started-with-azure-bicep-deploying-a-hello-world-web-application-ae144535749d) ein vollständiges Tutorial zu finden, welches zeigt wie man es Erstellt.

>[!NOTE]
>[Hier](https://github.com/Niklas574/DevOps/edit/master/Userstorys/Userstory2/README.md) geht es weiter.
