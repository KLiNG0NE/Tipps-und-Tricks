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

---

[KLiNG0NE](https://github.com/KLiNG0NE/) / [Tipps-und-Tricks](https://github.com/KLiNG0NE/Tipps-und-Tricks) / [Windows](README.md)
