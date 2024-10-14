# Tipps und Tricks&nbsp;– Linux-Updates

<small>TIPPS UND TRICKS FÜR COMPUTER UND INTERNET</small>

Hier sind Tipps und Tricks zu **Linux-Updates** auffindbar.

---

## Debian-basierte Linux-Distributuionen

* Debian, Ubuntu, Linux Mint, …

Diese Distros nutzen im Allgemeinen **APT** zur Paketverwaltung.

Mit ``apt update`` werden die Paket-Quellen aktualisiert.

Anschließend können die Pakte mit ``apt upgrade`` aktualisiert werden.

#### TL;DR

```
apt update && apt upgrade -y
```

## Arch-basierte Linux-Distributionen

* Arch, Manjaro, …

```
sudo pacman -Syu
```

## RPM-basierten Linux-Distributionen

* Fedora, …

Diese Distros nutzen häufig **DNF** (Dandified Yum) als Paketmanager

```
dnf upgrade
```
