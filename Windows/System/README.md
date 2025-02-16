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

### DISM – System File Cache prüfen und reparieren

(DISM steht für Deployment Image Servicing and Management Tool.)

Findet SFC korrupte Dateien, kann sie jedoch nicht reparieren, so helfen die folgenden Schritte weiter:

Zunächst kann geprüft werden, ob die Systemdatei-Kopien in einem ordnungsgemäßen Zustand sind.

```
DISM /Online /Cleanup-Image /ScanHealth
```

Findet DISM hier Probleme, so können diese mit folgendem Befehl behoben werden:

```
DISM /Online /Cleanup-Image /RestoreHealth
```

Sollte auch dies nicht zum Erfolg führen, können die Dateien mit einem Installationsmedium (ISO-Datei) abgeglichen werden.

Zunächst wird hierfür die passende ISO-Datei von Microsoft heruntergeladen:

---

**Windows 10:** [www.microsoft.com](https://www.microsoft.com/de-de/software-download/windows10)

Hier muss zunächst das „Media Creation Tool“ herunter geladen, und eine ISO-Datei erstellt werden.  
(In dem Bereich „Windows 10-Installationsmedium erstellen“ auf „Jetzt herunterladen“ klicken.)

---

**Windows 11:** [www.microsoft.com](https://www.microsoft.com/de-de/software-download/windows11)

Hier kann die gewünschte Datei in dem Bereich „Windows 11 Laufwerkimage (ISO) für x64-Geräte herunterladen“ direkt heruntergeladen werden.  
(Auf „Jetzt herunterladen“ klicken, und dann die korrekte Sprache auswählen.)

---

Sobald die Datei herunter geladen wurde, kann diese mit einam Doppelklick gemounted (bereitgestellt) werden.  
(Sie erscheint dann im Windows-Explorer als ob eine normale CD in ein Laufwerk eingelegt wird.)

Hier schauen wir zunächst in dem Ordner „sources“, ob eine Datei ``install.esd`` oder ``install.wim`` vorhanden ist.  
Der korrekte Pfad zu dieser Datei wird für den nächsten Befehl benötigt.

```
DISM /Online /Cleanup-Image /RestoreHealth /Source:D\sources\install.esd
```
Der Bereich hinter ``/Source:`` muss an die eigene ISO-Datei angepasst werden.  
In diesem Fall werden die Dateien mit dem Inhalt ISO-Datei abgeglichen. DISM nutzt allerdings auch „Windows Update“, um die Dateien auf dem aktuellen Stand zu halten. – Soll auch dies verhindert werden, kann der eben genutzte Befehl folgendermaßen erweitert werden:

```
DISM /Online /Cleanup-Image /RestoreHealth /Source:D\sources\install.esd /LimitAccess
```

Nun wird nur der Inhalt der ISO-Datei genutzt, und „Windows Update“ wird igoriert. – Dies ist z. B. nützlich, sofern keine Internetverbindung besteht.

Anschließend sollte der Befehl „SFC /ScanNow“ ohne Probleme die korrupten Dateien ersetzen können.

---

[KLiNG0NE](https://github.com/KLiNG0NE/) / [Tipps-und-Tricks](https://github.com/KLiNG0NE/Tipps-und-Tricks) / [Windows](README.md)
