# OEM-Info

## OEM-Informationen in Windows-Einstellungen entfernen

Zum Löschen der Anzeige kann der Registry-Editor genutz werden:

``Start -> Registrierungs-Editor``

In folgendem Pfad befinden sich die OEM-Informationen:

```
Computer\HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\OEMInformation
```

Zur Sicherheit als ertes eine Sicherheitskopie erstellen:

``Datei -> Exportieren…``

Beispielsweise mit dem Namen ``OEM-Info.reg``.

Die betreffenden Schlüssel können in der Registry gelöscht werden.

## OEM-Informationen in Windows-Einstellungen anzeigen

Folgende Schlüssel können angelegt werden:

| Schlüssel     | Wert                        | Inhalt           |
|---------------|-----------------------------|------------------|
| Manufacturer  | Computer-Hersteller         | Herstellername   |
| Model         | Modelname                   | Modelname        |
| SupportPhone  | (+49) 30 23125 231          | Rufnummer        |
| SupportHours  | Mo–Fr: 9:00 Uhr – 18:00 Uhr | Support-Zeiten   |
| SupportURL    | https://example.org/        | Website          |
| Logo          | C:\Windows\OEM\oem-logo.bmp | Logo-Speicherort |

Die Schlüssel können nach Bedarf angelegt werden.

```
Windows Registry Editor Version 5.00

[HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\OEMInformation]
"Manufacturer"="Snappy Driver Installer Origin"
"Model"="Modelname"
"SupportPhone"="(+49) 30 23125 231"
"SupportHours"="Mo–Fr: 9:00 Uhr – 18:00 Uhr"
"SupportURL"="https://www.snappy-driver-installer.org/"
"Logo"="C:\\Windows\\OEM\\oem-logo.bmp"
```

Das Logo muss als Bitmap in dem entsprechenden Ordner vorhanden sein. (Im Texteditor werden Ordnernamen in REG-Dateien mit mit _zwei_ Rückstrichen ``\\`` getrennt, nicht wie in Windows üblich, mit einem.)

### Format OEM-Logo

| Format | Dateiendung | Pixel     | Bit |
|--------|-------------|-----------|-----|
| Bitmap | .bmp        | 120 x 120 | 24  |

Windows 11 zeigt weniger Infos als die Vorgänger an:

```
Windows Registry Editor Version 5.00

[HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\OEMInformation]
"Manufacturer"="Snappy Driver Installer Origin"
"SupportPhone"="(+49) 30 23125 231"
"SupportHours"="Mo–Fr: 9:00 Uhr – 18:00 Uhr"
"SupportURL"="https://www.snappy-driver-installer.org/"

```

Diese Angaben werden in den Einstellungen Windows 11 hier angezeigt:

``Einstellungen -> Sytem -> Info``
