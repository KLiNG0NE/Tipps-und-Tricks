# Tipps und Tricks / Windows / VirtualBox
<small>TIPPS UND TRICKS FÜR COMPUTER UND INTERNET</small>

## VirtualBox

Leistungsstarke Open-Source-Virtualisierung – Für Privatanwender und Unternehmen

VirtualBox ist eine Allzweck-Virtualisierungssoftware für x86_64-Hardware (mit Version 7.1 zusätzlich für macOS/Arm), die für Laptops, Desktops, Server und eingebettete Systeme geeignet ist.

Offizielle Website: [www.virtualbox.org](https://www.virtualbox.org/)

### Mehr Grafikspeicher als 128 MB für das Gastsystem bereitstellen

* Den Installationsordner von VirtualBox in einer Eingabeaufforderung (Terminal) öffnen

```
C:\Program Files\Oracle\VirtualBox
```

* Folgenden Befehl ausführen
```
VBoxManage.exe modifyvm [VMNAME] --vram 256
```

[VMNAME] mit dem Namen des Systems erzetzen, dass mehr Video Speicher erhalten soll.

---

[KLiNG0NE](https://github.com/KLiNG0NE/) / [Tipps-und-Tricks](https://github.com/KLiNG0NE/Tipps-und-Tricks) / [Windows](README.md)
