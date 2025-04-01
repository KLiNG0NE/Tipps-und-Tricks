# Tipps und Tricks / Windows / Installation / Lokales Konto
<small>TIPPS UND TRICKS FÜR COMPUTER UND INTERNET</small>

* Installation
  * Methode 1: Eingabeaufforderung oobe
  * 

## Methode 1: Eingabeaufforderung und OOBE-Script

> Diese Methode funktioniert nur bis zur Version 24H2

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

## Methode 2: Eingabeaufforderung und ms-cxh

> Diese Methode funktioniert ab Version 25H2

* Installieren bis zu dem Punkt an dem nach dem MS-Konto verlangt wird.
* Durch druck auf die Taste ``Shift``+``F10`` kann eine *Eingabeaufforderung* geöffnet werden.
* Folgendes eingeben:

```
start ms-cxh:localonly
```
(Groß- und Kleinschreibung ist unerheblich)

* In dem nun erscheinenden Fenster kann ein *lokales Konto* und ggf. ein *Passwort* angelegt werden.

## Methode 3: Windows Pro mit Domäne installieren

> Diese Methode funktioniert nur bei den Pro-Versionen von Windows.

* An der Stelle, an der das Installationsprogramm nach dem Gerätenamen des Computers fragt, kann unten auf ``Überspringen`` geklickt werden.
* Die Frage wie der Computer genutzt wird, wird mit *Bei der Arbeit oder Schule* beantwortet.

---

[KLiNG0NE](https://github.com/KLiNG0NE/) / [Tipps-und-Tricks](https://github.com/KLiNG0NE/Tipps-und-Tricks) / [Windows](README.md)
