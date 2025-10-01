## Autorun.inf

Inhalt in der Datei autorun.inf im Wurzelverzeichnis des Datenträgers speichern.

### Datenträgericon und -name
  
    [AutoRun]
    icon=autorun.ico
    label=Datenträgername

#### Beispiel

    [AutoRun]
    icon=autorun/wd-black.ico
    label=WD_BLACK SN770 1TB

### Erweitert

    [AutoRun]
    open=programm.exe
    icon=programm.ico
    action=Programm starten
