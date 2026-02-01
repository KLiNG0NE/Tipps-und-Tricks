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

### Generische RTL2832U/R820T2-DVB-T-Sticks

Für den kostengünstigen Einstieg eignen sich USB-Sticks, die ursprünglich für den Empfang von DVB-T entwickelt wurden.

Empfehlenswert ist die Kombination aus Demodulator-IC Realtek **RTL2832U** und Tuner-IC Rafael Micro **R820T2**.

Der derzeitige (Jan. 2026) Preis für solche Sticks liegt bei ca. 20,– bis 30,– EUR.

> Besonders kostengünstige Modelle nutzen meist einen *leistungsschwächeren* Tuner-IC!

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

Programme, die zu WinRad kompatibel sind benutzen den ExtIO_RTL-Treiber:

- [ExtIO_RTL](https://github.com/hayguen/ExtIO_RTL "https://github.com")  
  ExtIO_RTL-Treiber für Realtek RTL2832U

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

Der R820T2 ist in fast jeder Hinsicht der bessere Tuner: weniger Rauschen, bessere Empfindlichkeit, stabilerer Empfang. Deshalb verwenden praktisch alle modernen RTL‑SDR‑Sticks den R820T2.

---

## Software

### Digital Audio Broadcasting DAB/DAB+

Hier sind kostenlose Programme aufgeführt, die hauptsächlich zum Hören des Hörfunkprogramms über DAB/DAB+ geeignet sind:

- [welle.io](https://www.welle.io/ "https://www.welle.io")  
  Einfaches DAB/DAB+-Software-Radio, einfache Bedienung
- [AbracaDABra](https://github.com/KejPi/AbracaDABra "https://github.com")  
  DAB/DAB+-Software-Radio, einfache Bedienung
- [Qt-DAB](https://github.com/JvanKatwijk/qt-dab "https://github.com")  
  Software-DAB-Decoder (DAB+) mit einem (leichten) Schwerpunkt auf der Anzeige des Signals

### SDR-Empfänger

Hier werden Programme vorgestellt, die ein umfangreiches Software Defined Radio anbieten:

- [SDR++](https://www.sdrpp.org/ "https://www.sdrpp.org")  
  SDR-Empfänger
- [SDR#](https://airspy.com/download/ "https://airspy.com") (SDRSharp)  
  SDR-Empfänger eines Hardware-Herstellers
- [GNU Radio](https://www.gnuradio.org/ "(https://www.gnuradio.org")  
  Modulares SDR
- [SDRangel](https://www.sdrangel.org/ "https://www.sdrangel.org")  
  TX & RX Software Defined Radio
- [HDSDR](https://www.hdsdr.de/ "https://www.hdsdr.de")  
  Software Defined Radio (ExtIO_RTL)
- [sodiraSDR](https://www.sodirasdr.de/ "https://www.sodirasdr.de")  
  Software Defined Radio (ExtIO_RTL)

---

[KLiNG0NE](https://github.com/KLiNG0NE/) / [Tipps-und-Tricks](https://github.com/KLiNG0NE/Tipps-und-Tricks) / [Funktechnik](README.md)
