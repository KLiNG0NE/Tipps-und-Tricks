# Tipps und Tricks
<small>TIPPS UND TRICKS FÜR COMPUTER UND INTERNET</small>

## Windows Autostart-Ordner

Verknüpfungen, die sich im Autostart-Ordnner von Windows befinden, werden beim Systemstart automatisch ausgeführt. So können z. B. Programme beim Start ausgeführt werden.  
Werden die Verknüpfungen hier gelöscht, kann der Start der Programme ebenso verhindert werden.

### Benutzereigener Autostart-Ordner

Mit der Tastenkombination ``[Win] + [R]`` wird der Ausführen-Dialog geöffnet.

Hier dann folgenden Befehl einfügen:
```
shell:startup
```

Hierduch wird der Autostart-Ordner des aktuellen Benutzers geöffnet:

```
C:\Users\%USERNAME%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup
```

Programme, die sich in diesem Ordner befinden werden nur gestartet, wenn sich der entsprechende Nutzer am System anmeldet.

### Systemweiter Autostart-Ordner

Mit der Tastenkombination ``[Win] + [R]`` wird der Ausführen-Dialog geöffnet.

Hier dann folgenden Befehl einfügen:

```
shell:common startup
```

Der systemweite Autostart-Ordner befindet sich hier:
```
C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Startup
```

Programme in diesem Ordner werden bei der Anmeldung jedes Benutzers gestartet.
