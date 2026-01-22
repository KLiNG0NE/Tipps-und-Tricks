# Tipps und Tricks / Windows / Installation / Lokales Konto
<small>TIPPS UND TRICKS FÜR COMPUTER UND INTERNET</small>

* Installation
  * Methode 1: Eingabeaufforderung und OOBE-Script (BypassNRO)
  * Methode 2: Eingabeaufforderung und ms-cxh
  * Methode 3: Windows Pro mit Domäne installieren

---

# Windows mit lokalem Benutzerkonto installieren

![Lokales Konto](local-user.png "Lokales Konto")

Viele Windows-Nutzer fühlen sich genötigt, bei der Installation von Windows ein Benutzerkonto bei dem Anbieter erstellen zu müssen. – Hier werden einige Methoden vorgestellt, wie Windows installiert werden kann, ohne ein Onine-Konto anzulegen.

## Methode 1: Eingabeaufforderung und OOBE-Script (BypassNRO)

> Diese Methode soll ab Version 25H2 entfernt werden.

* Installieren bis zu dem Punkt an dem nach dem MS-Konto verlangt wird.
* Durch druck auf die Taste ``Shift``+``F10`` kann eine *Eingabeaufforderung* geöffnet werden.
* Folgendes Script aufrufen:

```
OOBE\BypassNRO
```
(Groß- und Kleinschreibung ist unerheblich)

> *OOBE* steht für "Out of the Box Experience"\
> *Bypass* heisst auf deutsch etwa „umgehen“\
> *NRO* steht für "eNROlment"[^1].

[^1]: https://www.reddit.com/r/Windows11/comments/symv3r/microsoft_to_officially_provide_bypass_for/

* Der Rechner startet neu, und der Installationsprozess wird wieder durchlaufen.
* An dem Punkt, an dem vorher das MS-Konto angegeben werden sollte, kann jetzt mit „eingeschränktem Konto“ fortgefahren werden.

### Internetverbindung trennen

Falls die oben genannte Methode nicht funktioniert, kann versucht werden eine Offline-Installation auszuführen:

Entweder die Internetverbindung trennen, indem das Kabel aus der Netzwerkkarte (oder vom Router) entfernt wird, der WLAN-Stick entfernt wird, oder falls dies nicht möglich ist, eine Eingabeaufforderung mit ``Shift``+``F10`` öffnen und die Internet-Verbindung mit folgendem Befehl trennen:

```
ipconfig /release
```

* Bei der Aufforderung eine Verbindung mit dem Internet herzustellen, kann unten angegeben werden ``Ich habe kein Internet``.
* Anschließend wird die Installation mit einem lokalen Benutzerkonto fortgeführt.
* Nach erfolgreicher Installation das Netzwerkabel bzw. den WLAN-Stick wieder verbinden oder in der Eingabeaufforderung die Verbindung mit folgenden Befehl wieder herstellen:

```
ipconfig /renew
```

---

## Methode 2: Eingabeaufforderung und ms-cxh

> Diese Methode funktioniert bei Version 25H2

* Installieren bis zu dem Punkt an dem nach dem MS-Konto verlangt wird.
* Durch druck auf die Taste ``Shift``+``F10`` kann eine *Eingabeaufforderung* geöffnet werden.
* Folgendes eingeben:

```
start ms-cxh:localonly
```
(Groß- und Kleinschreibung ist unerheblich)

* In dem nun erscheinenden Fenster kann ein *lokales Konto* und ggf. ein *Passwort* angelegt werden.

---

## Methode 3: Windows Pro mit Domäne installieren

> Diese Methode funktioniert nur bei den Pro-Versionen von Windows.

* An der Stelle, an der das Installationsprogramm nach dem Gerätenamen des Computers fragt, kann unten auf ``Überspringen`` geklickt werden.
* Die Frage wie der Computer genutzt wird, wird mit *Bei der Arbeit oder Schule* beantwortet.

---

## Methode 4: Registryeintrag hinzufügen (BypassNRO)

> Diese Methode sollte auch bei Version 25H2 funktionieren.

* Installieren bis zu dem Punkt an dem nach dem MS-Konto verlangt wird.
* Durch druck auf die Taste ``Shift``+``F10`` kann eine *Eingabeaufforderung* geöffnet werden.
* Folgenden Befehl eingeben:

```
REG ADD HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\OOBE /v BypassNRO /t REG_DWORD /d 1 /f
```

(Groß- und Kleinschreibung muss, besonders bei Eingabe des Schlüssels, beachtet werden.)

Anschließend den Rechner durch Eingabe des folgenden Befehls neu starten:

```
shutdown /r /t 0
```

> /r = Fährt den Computer vollständig herunter und startet ihn neu. (restart)  
> /t = Setzt das Zeitlimit vor dem Herunterfahren auf xxx Sekunden. (time)

---

## Methode 5: Developer-Eingabeaufforderung

> Diese Methode soll bei Versionen nach 25H2 funktionieren.  
  Getestet mit Version 25H2 (Build 26220.7523)

* Installieren bis zu dem Punkt an dem nach dem MS-Konto verlangt wird.
* Durch drücken der Tasten-Kombination ``Strg``+``Shift``+``J`` kann eine *Developer-Eingabeaufforderung* geöffnet werden.  
  (Manchmal muss die Tasten-Kombination häufiger gedrückt werden.)
* In die Konsole folgendes eintippen und mit ``Enter`` bestätigen:

```
WinJS.Application.restart("ms-cxh:localonly")
```

* Im Hintergrund sollte ein Fenster zum Anlegen eines lokalen Accounts erscheinen.
* Mit ``ESC`` kann die Konsole wieder verlassen werden.

Quelle: David Bombal @ [YouTube](https://www.youtube.com/watch?v=uElWqzjC1eI "https://www.youtube.com")

---

[KLiNG0NE](https://github.com/KLiNG0NE/) / [Tipps-und-Tricks](https://github.com/KLiNG0NE/Tipps-und-Tricks) / [Windows](README.md)
