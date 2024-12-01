# Tipps und Tricks&nbsp;– Proxmox
Tipps und Tricks für Computer und Internet.
---

## ‚Keine gültige Subskription‘–Hinweis umgehen

### Automatisiert per Script

Dieses Script einfach in die Shell kopieren und mit [EINGABE] ausführen:

```
sed -Ezi.bak "s/(Ext.Msg.show\(\{\s+title: gettext\('No valid sub)/void\(\{ \/\/\1/g" /usr/share/javascript/proxmox-widget-toolkit/proxmoxlib.js && systemctl restart pveproxy.service
```
(Getestet mit Version 7.4-13 – 8.3.0)
