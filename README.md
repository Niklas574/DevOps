# Lernpfad: DevOps

Willkommen zu unserem Lernabenteuer rund um DevOps! Hier geht es darum, wie wir Software entwickeln, um sie schneller und besser zu machen. Wir werden uns dabei auf einige Werkzeuge und Konzepte konzentrieren, besonders auf das Bereitstellen von Dingen in der Azure-Cloud von Microsoft, das Verwalten unserer Projekte mit Git und das Automatisieren von Aufgaben.
>[!IMPORTANT]
> Hier ist eine Liste benötigter Dinge:
> 1. Ein Azure-Abonnement wird für die Erstellung von Ressourcen benötigt. Falls noch keins vorhanden ist können Sie sich [hier](https://azure.microsoft.com/de-de/free/) registrieren.
> 2. Die Ressourcengruppe sollte vorhanden sein. Wenn du hilfe brauchst beim Einrichten findest du [hier](https://triedandtestedbuilds.com/easy-guide-to-creating-a-resource-group-in-azure) eine Anleitung.
> 3. Grundlegende Programmierkenntnisse werden benötigt, dafür können Sie entweder [dieses](https://learn.microsoft.com/de-de/training/modules/introduction-to-infrastructure-as-code-using-bicep/) kurze oder [dieses]( https://learn.microsoft.com/de-de/training/paths/fundamentals-bicep/) lange Tutorial durchmachen.
> 4. Eine installierte Entwicklungsumgebung (IDE) ist notwendig, dazu gehört etwas wie [VSCode](https://code.visualstudio.com).
> 5. Azure CLI ist ebenfalls benötigt, [hier](https://learn.microsoft.com/en-us/cli/azure/install-azure-cli) können Sie eine Anleitung zur Installation finden.
> 6. Letztendlich wird auch Bicep benötigt, die Anleitung ist [hier](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/install#azure-cli) zu finden.

## Was du wissen solltest:

- ### **DevOps**:
  DevOps bezieht sich auf eine Reihe von Methoden, die Softwareentwicklung (Dev) und IT-Betrieb (Ops) kombinieren.
  <p align="center">
  <img src="https://www.itech-progress.com/wp-content/uploads/2022/05/DevOps-Diag.png" width="573" height="265,875">
  </p>

  
- ### **IoT (Internet of Things)**:
  IoT bezeichnet das Netzwerk physischer Geräte, die mit zusätzlichen Dingen wie Sensoren ausgestattet sind, um Daten mit anderen Geräten und Systemen über 
  das Internet zu verbinden und auszutauschen. Ein Beispiel wären Smart Homes.
  <p align="center">
  <img src="https://www.zdnet.com/a/img/resize/032dd76367e888ca28e6cd662fdffd2eeef77278/2020/09/28/6b225a1a-381a-4ceb-b13c-d2d314d41bd7/what-is-the-iot-everything-you-need-to-k-5f6cc13d5f60de4b41b7f3d4-1-sep-28-2020-16-19-38-poster.jpg?auto=webp&fit=crop&frame=1&height=814.5&width=1449" width="772,8" height="400">
  </p>
- ### **Bicep**:
  Bicep ist eine von Microsoft entwickelte Sprache (DSL) um effizient Azure-Ressourcen bereitzustellen.
  <p align="center">
  <a href="https://ibb.co/dKX4j97"><img src="https://i.ibb.co/ThJMYXr/1-KLJZ51or-Xe6zf7-NTUhg5g-A.jpg" alt="1-KLJZ51or-Xe6zf7-NTUhg5g-A" border="0"></a>
  </p>
- ### **Azure-Abonnements und Ressourcengruppen**:
  Dort können wir verschiedenste Arten von Daten in verschiedenen Storages Speichern.
  <p align="center">
  <img src="https://learn.microsoft.com/de-de/azure/azure-resource-manager/management/media/overview/scope-levels.png"width="600" height="400">
  </p>
- ### **Blob**:
  Virtueller Datenspeicher für große Mengen unsortierter Daten, wie Text- oder Binärdaten.
  <p align="center">
  <img src="https://k21academy.com/wp-content/uploads/2021/04/blooob.png" width="600" height="250">
  </p>
- ### **Git**:
  Git ist ein System, das zum Nachverfolgen von Änderungen im Quellcode während der Entwicklung verwendet wird. Es ermöglicht mehreren Entwicklern die Zusammenarbeit an Projekten, die Nachverfolgung von Änderungen und die Verwaltung von Codeversionen.
  
  - **Pull-Anfrage**: Eine Pull-Anfrage ist ein Mechanismus in Git, der zum Vorschlagen von Änderungen an einem auf einer Plattform wie GitHub gehosteten Repository verwendet wird. Sie ermöglicht Entwicklern das überprüfen, Diskutieren und Zusammenführen von Codeänderungen, bevor sie in den Hauptcode eingefügt werden.
    
  - **Branch**: Ein Branch in Git ist eine parallele Version des Codebestands, die es Entwicklern ermöglicht, an Funktionen oder Fehlerbehebungen unabhängig voneinander zu arbeiten, ohne den Hauptcodebestand zu beeinträchtigen. Branches erleichtern die gleichzeitige Entwicklung und helfen dabei, Änderungen besser zu isolieren und zu organisieren.
    
  - **Commit**: Ein Commit in Git bezieht sich auf einen Schnappschuss von Änderungen, die zu einem bestimmten Zeitpunkt im Repository vorgenommen wurden. Er stellt eine Reihe von Änderungen an Dateien sowie eine beschreibende Nachricht dar, die die Änderungen erklärt. Commits sind wichtig für die Nachverfolgung der Projekthistorie und die Versionskontrolle.
    
  - **GitHub**: GitHub ist eine webbasierte Plattform zum Hosten und Zusammenarbeiten an Git-Repos.
    
    - **Repository**: Ein Repository (Repo) in Git ist ein zentraler Speicherort, an dem alle Projektdateien und alle Änderungen der Dateien gespeichert werden. Zu den Änderungen am Projekt zählen zum Beispiel Code-, Dateinamenänderungen und das hinzufügen/löschen von Dateien.

  <p align="center">
  <img src="https://github.com/Niklas574/DevOps/assets/157698311/49e68d45-a6c1-4162-86ed-74cf63c54773" width="750" height="500">
  </p>
- **GitHub Actions**: "GitHub Actions" ist eine Funktion von GitHub, mit der Aufgaben direkt im Repository automatisiert werden können.
- **Service Principal**: In Azure dient ein "Service Principal" als spezieller Benutzer oder als Identität für Anwendungen. Er ermöglicht diesen, sicher auf Azure-Ressourcen zuzugreifen, ohne dass dazu die Anmeldeinformationen eines Benutzers erforderlich sind.


>[!TIP]
>Falls benötigt ist [hier](https://medium.com/@farzam_m/getting-started-with-azure-bicep-deploying-a-hello-world-web-application-ae144535749d) ein vollständiges Tutorial zu finden, welches bei der Erstellung hilft.

>[!NOTE]
>Ich habe den App Service gewählt, weil er mir hilft, meine Webanwendungen schnell und unkompliziert bereitzustellen. Er kümmert sich um die Skalierung und die kontinuierliche Aktualisierung der Anwendung, was mir Zeit und Mühe spart.
