# Tipps und Tricks
<small>TIPPS UND TRICKS FÜR COMPUTER UND INTERNET</small>

## Windows Autostart-Ordner

Verknüpfungen, die sich im Autostart-Ordnner von Windows befinden, werden beim Systemstart automatisch ausgeführt. So können z. B. Programme beim Start ausgeführt werden.  
Werden die Verknüpfungen hier gelöscht, kann der Start der Programme ebenso verhindert werden.

### Per Tastenkombination

Mit der Tastenkombination ``[Win] + [R]`` wird der Ausführen-Dialog geöffnet.

Hier dann folgenden Befehl einfügen:
```
shell:startup
```

Hierduch wird der Autostart-Ordner des aktuellen Benutzers geöffnet:

```
C:\Users\%USERNAME%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup
```
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

