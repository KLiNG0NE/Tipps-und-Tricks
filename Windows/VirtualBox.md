# Tipps und Tricks / Windows / VirtualBox
<small>TIPPS UND TRICKS FÜR COMPUTER UND INTERNET</small>

## VirtualBox

Offizielle Website:  
[virtualbox.org](https://www.virtualbox.org/)

### Mehr Video Speicher als 128 MB für das Gastsystem bereitstellen

* Den Installationsordner von VirtualBox in einer Eingabeaufforderung (Terminal) öffnen

```
C:\Program Files\Oracle\VirtualBox
```

* Folgenden Befehl ausführen
```
VBoxManage.exe modifyvm GASTNAME --vram 256
```

GASTNAME mit dem Namen des Systems erzetzen, dass mehr Video Speicher erhalten soll.

---

[KLiNG0NE](https://github.com/KLiNG0NE/) / [Tipps-und-Tricks](https://github.com/KLiNG0NE/Tipps-und-Tricks) / [Windows](README.md)
