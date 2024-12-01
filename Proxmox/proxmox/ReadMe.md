# Tipps und Tricks&nbsp;– Proxmox
Tipps und Tricks für Computer und Internet.
---

## ‚Keine gültige Subskription‘–Hinweis umgehen

Proxmox ist Open Source und in der Community-Edition kostenlos, trotzdem weist der Anbieter ständig darauf hin, dass kein gültiges Abonnement besteht.

Dieser Hinweis kann umgangen werden.

### Manuell

In der Shell folgende Befehle nacheinander eingeben:

```
cd /usr/share/javascript/proxmox-widget-toolkit/
cp proxmoxlib.js proxmoxlib.js.backup
nano proxmoxlib.js
```

Suche nach folgendem Inhalt: 

``Ext.Msg.show``

Schreibe folgendes vor diesen Eintrag:

```
void({ //
```
Dann abspeichern und verlassen.

Anschließend den Browser neu laden ([F5]-Taste) oder den Dienst neu starten mit:

``systemctl restart pveproxy.service``

### Automatisiert per Skript

Dieses Script einfach in die Shell kopieren und mit [EINGABE] ausführen:

```
sed -Ezi.bak "s/(Ext.Msg.show\(\{\s+title: gettext\('No valid sub)/void\(\{ \/\/\1/g" /usr/share/javascript/proxmox-widget-toolkit/proxmoxlib.js && systemctl restart pveproxy.service
```
(Getestet mit Version 7.4-13 – 8.3.0)
