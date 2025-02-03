# Tipps und Tricks / Windows / VirtualBox
<small>TIPPS UND TRICKS FÜR COMPUTER UND INTERNET</small>

## VirtualBox
Leistungsstarke Open-Source-Virtualisierung – Für Privatanwender und Unternehmen

VirtualBox ist eine Allzweck-Virtualisierungssoftware für x86_64-Hardware (mit Version 7.1 zusätzlich für macOS/Arm), die für Laptops, Desktops, Server und eingebettete Systeme geeignet ist.

Offizielle Website: [www.virtualbox.org](https://www.virtualbox.org/)

---

### Screenshot – Info

![Screenshot VirtualBox Info](img/Screenshot%20VirtualBox%20Info%207.1.4%202025-02-03.png "Screenshot VirtualBox Info")

---

### Mehr Grafikspeicher als 128 MB für das Gastsystem bereitstellen

Zunächst einmal müssen wir den Namen des Gastsystems bestimmen, das mehr Speicher erhalten soll:

![Screenshot VirtualBox Einstellungen](img/Screenshot%20VirtualBox%20Einstellungen.png "Screenshot VirtualBox Einstellungen")

Bevor die folgenden Schritte funktionieren, muss VirtualBox komplett beendet sein.

* Den Installationsordner von VirtualBox in einer Eingabeaufforderung (Terminal) öffnen

```
C:\Program Files\Oracle\VirtualBox
```

* Folgenden Befehl ausführen
```
VBoxManage.exe modifyvm [VMNAME] --vram 256
```
![Screenshot VBoxManage](img/Screenshot%20VBoxManage.png "Screenshot VBoxManage")

[VMNAME] mit dem Namen des Systems erzetzen, dass mehr Video Speicher erhalten soll.

(getestet mit VirtualBox Version 7.1.4)

---

[KLiNG0NE](https://github.com/KLiNG0NE/) / [Tipps-und-Tricks](https://github.com/KLiNG0NE/Tipps-und-Tricks) / [Windows](README.md)
