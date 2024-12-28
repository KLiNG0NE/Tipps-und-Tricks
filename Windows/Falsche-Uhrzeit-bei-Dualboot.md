# Tipps und Tricks – Windows
<small>TIPPS UND TRICKS FÜR COMPUTER UND INTERNET</small>

## Falsche Uhrzeit bei Dual-Boot-System

Wer auf dem Rechner ein Dual-Boot-System mit Windows und Linux nutzt, kennt sicherlich das Problem, dass die Uhrzeit in Windows nicht stimmt, sobald vorher das Linux-System gestartet wurde.

Hintergrund ist, dass Windows standardmäßig die _lokale Zeit_ in der Echtzeituhr[^1]  speichert, Linux hingegen nutzt die _koordinierte Weltzeit_[^2].

[^1]: (englisch: real-time clock, RTC)
[^2]: (englisch: universal time coordinated, UTC)

## Windows: Registry-Wert für „RealTimeIsUniversal“ setzen

1. Als erstes wird der _Registrierungs-Editor_ gestartet:
  * _Ausführen_-Dialog mit der Tatstenkombination [Win]+[R] öffnen.
  * In das Suchfeld `regedit` eingeben.

2. Der folgende Eintrag muss im Registrierungs-Editor gesucht werden:
```
Computer\HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\TimeZoneInformation
```

3. Einen neuen Registry-Eintrag anlegen:
  * Im rechten Bereich des Fensters: Rechtsklick -> Neu -> DWORD-Wert (23-Bit) -> `RealTimeIsUniversal` eingeben
  * Rechtsklick auf den eben angelegten Eintrag -> `Ändern…` -> `1` in das Datenfeld eingeben.

[Tipps und Tricks](https://github.com/KLiNG0NE/Tipps-und-Tricks/)
