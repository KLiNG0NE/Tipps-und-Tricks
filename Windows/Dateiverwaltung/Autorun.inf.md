## Autorun.inf

Inhalt in der Datei `autorun.inf` im Wurzelverzeichnis des Datenträgers speichern.

### Datenträgericon und -name

#### autorun.inf

    [AutoRun]
    icon=autorun.ico
    label=Datenträgerbezeichnung
    
In diesem Beispiel befinden sich Autorun- und Icon-Datei direkt im Wurzelverzeichnis des Datenträgers.

#### Beispiel

    [AutoRun]
    icon=autorun/wd-black.ico
    label=WD_BLACK SN770 1TB
    
Hier befindet sich die Icon-Datei im Unterverzeichnis `autorun` des Datenträgers.
Unterodner werden hier mit Slash `[/]`, nicht wie in Windows üblich mit Backslash `[\]` getrennt.

### Erweitert

    [AutoRun]
    open=programm.exe
    icon=programm.ico
    action=Programm starten
    
