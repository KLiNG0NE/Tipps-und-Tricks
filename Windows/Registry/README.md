# Tipps und Tricks / Windows / Registry-Tweaks
<small>TIPPS UND TRICKS FÜR COMPUTER UND INTERNET</small>

---

### Ausführlichere Informationen beim Booten und Herunterfahren

Computer\HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System

* VerboseStatus (Voreinstellung: 0, Aktiviert: 1)

Dieser Eintrag muss neu angelegt werden (DWORD-Wert (32-Bit)). Bei Aktivierung werden beim Booten und Herunterfahren ausführlichere Informationen angezeigt.

---

### Websuche im Startmenü deaktivieren

Computer\HKEY_CURRENT_USER\Software\Policies\Microsoft\Windows\Explorer

* DisableSearchBoxSuggestions (Voreinstellung: 0, Aktiviert: 1)

Bei Aktivierung verhindert diser Eintrag, dass im Startmenü eine Websuche durchgeführt wird.

---

### Windows Start/Herunterfahren beschleunigen

HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Serialize

* StartupDelayInMSec (Aktiviert: 1)
* WaitForIdleState (Aktiviert: 0)

---

Quellen:

https://www.youtube.com/watch?v=V7AuHBZsOj0

---

[KLiNG0NE](https://github.com/KLiNG0NE/) / [Tipps-und-Tricks](https://github.com/KLiNG0NE/Tipps-und-Tricks) / [Windows](../README.md) / [Treiber](README.md)
