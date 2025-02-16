# Tipps und Tricks / Windows / System
<small>TIPPS UND TRICKS FÜR COMPUTER UND INTERNET</small>

## System mit Windows-Tools reparieren

Um diese Kommandozeilen-Tools zu nutzen, wird eine Eingabeaufforderung/Terminal mit Administrator-Rechten benötigt.  
(Z. B. „Eingabeaufforderung“ in das Startmenü eintippen, und dann mit „Als Administrator ausführen“ starten.)

### SFC – System File Checker

Windows erstellt Kopien von allen wichtigen System-Dateien. Sollten Dateien beschädigt sein, kann Windows die Dateien wieder herstellen.

Mit SFC wird geprüft, ob die Windows-Dateien im ordnungemäßen Zustand sind.

```
SFC /ScanNow
```

### DISM - System File Cache prüfen und reparieren

(DISM steht für Deployment Image Servicing and Management Tool.)

Findet SFC korrupte Dateien, kann sie jedoch nicht reparieren, so helfen die folgenden Befehle weiter:

Zunächst kann geprüft werden, ob die Systemdatei-Kopien in einem ordnungsgemäßen Zustand sind.

```
DISM /Online /Cleanup-Image /ScanHealth
```

Findet DISM hier Probleme, so können diese mit folgendem Befehl korrigiert werden:

```
DISM /Online /Cleanup-Image /RestoreHealth
```


---

[KLiNG0NE](https://github.com/KLiNG0NE/) / [Tipps-und-Tricks](https://github.com/KLiNG0NE/Tipps-und-Tricks) / [Windows](README.md)
