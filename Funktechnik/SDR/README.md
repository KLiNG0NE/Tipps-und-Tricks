# Tipps und Tricks / Funktechnik / SDR
<small>TIPPS UND TRICKS FÜR COMPUTER UND INTERNET</small>

Hier sind Ratschläge und Kniffe zu *Software Defined Radio* (SDR) zu finden.

## Übersicht

- Software Defined Radio (SDR)
- Hardware
- Software

---

## Software Defined Radio (SDR) ##

Software Defined Radio bedeutet, dass viele Aufgaben, die früher spezielle Hardware erledigt hat – etwa Filtern, Mischen oder Demodulieren – heute von Software übernommen werden. Ein SDR‑Empfänger wandelt das Funksignal nur noch in digitale Daten um, und die eigentliche „Magie“ passiert dann im Computer. Dadurch kann ein einziges Gerät ganz unterschiedliche Funkdienste empfangen, einfach indem man die Software wechselt. Das macht SDR extrem flexibel und ideal zum Experimentieren.

## Hardware ##

### Realtek RTL2832U  – DVB-T COFDM Demodulator

- Ursprünglich für TV‑Empfang entwickelt, aber durch einen „Hack“ als universeller SDR‑Empfänger nutzbar.
- In Kombination mit einem Tunerchip wie R820T oder R820T2 deckt er etwa 24 MHz bis 1,7 GHz ab.
- Er liefert 2,4 MS/s zuverlässig, manchmal auch mehr, was für viele Funkanwendungen völlig ausreicht.
- Durch seine enorme Verbreitung gibt es umfangreiche Software‑Unterstützung.

#### Beachten

- Kostengünsriger SDR-Chip.
- Wird in vielen USB-Sticks genutzt
- wird mit unterschiedlichen Tuner-Chips angeboten

#### Treiber

Viele Programme sprechen diesen Chip über den WinUSB-Treiber an. Dieser kann mit der Software Zadig installiert werden:

- [Zadig](https://zadig.akeo.ie/ "https://zadig.akeo.ie")  
  WinUSB-Treiber für Realtek RTL2832U

---

### Rafael Micro R820T2 - High Performance Low Power Advanced Digital TV Silicon Tuner

Vorteile des R820T2 gegenüber dem Vorgänger R820T:

- R820T2 ist empfindlicher, besonders im Bereich unter 100 MHz und über 1 GHz  
  Praktisch bedeutet das: schwächere Signale kommen klarer durch.
- Der T2 hat ein geringeres Eigenrauschen.  
  Das verbessert die Signal‑Rausch‑Relation (SNR) und macht den Empfang insgesamt sauberer.
- Beide decken etwa 24 MHz bis 1,7 GHz ab.  
  Der T2 hält die Empfindlichkeit über das gesamte Spektrum etwas gleichmäßiger.

#### Fazit

Der R820T2 ist in fast jeder Hinsicht der bessere Tuner: weniger Rauschen, bessere Empfindlichkeit, stabilerer Empfang. Deshalb verwenden praktisch alle modernen RTL‑SDR‑Sticks (z. B. RTL‑SDR Blog V3/V4) den R820T2.

---

## Software

- [SDR++](https://www.sdrpp.org/ "https://www.sdrpp.org")  
  SDR-Empfänger
- [SDR#](https://airspy.com/download/ "https://airspy.com") (SDRSharp)  
  SDR-Empfänger
- [welle.io](https://www.welle.io/ "https://www.welle.io")  
  DAB/DAB+-Software-Radio, einfache Bedienung
- [AbracaDABra](https://github.com/KejPi/AbracaDABra "https://github.com")  
  DAB/DAB+-Software-Radio, einfache Bedienung
- [GNU Radio](https://www.gnuradio.org/ "(https://www.gnuradio.org")  
  Modulares SDR
- [SDRangel](https://www.sdrangel.org/ "https://www.sdrangel.org")  
  TX & RX Software Defined Radio

---

[KLiNG0NE](https://github.com/KLiNG0NE/) / [Tipps-und-Tricks](https://github.com/KLiNG0NE/Tipps-und-Tricks) / [Funktechnik](README.md)
