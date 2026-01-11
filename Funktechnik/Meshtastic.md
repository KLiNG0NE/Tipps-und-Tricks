# Tipps und Tricks / Funktechnik / Meshtastic

<small>TIPPS UND TRICKS FÜR COMPUTER UND INTERNET</small>

Hier sind Tipps und Tricks zu Meshtastic auffindbar.

## Meshtastic

**Meshtastic** ist ein Messenger, der ohne Mobilfunk oder WLAN funktioniert.  
Er nutzt Funkfrequenzen aus den ISM‑Bändern, die jeder nutzen darf.

Mit Meshtastic entstehen **dezentrale Ad‑hoc‑Netze**: Geräte verbinden sich direkt miteinander über große Entfernungen, brauchen nur wenig Sendeleistung und übertragen nur kleine Datenmengen.  
Als Geräte dienen spezielle Sende‑Empfangs‑Module oder Smartphones, die ein zusätzliches Funkmodul haben.

Über diese Verbindung können **Textnachrichten**, **Positionen** und **Telemetriedaten** in beide Richtungen gesendet werden.  
Der Name **Meshtastic** setzt sich aus den Wörtern **Mesh** und **Phantastic** zusammen.

## Vorraussetzungen für den Betrieb von Meshtastic

Zunächst wird ein LoRa-fähiges Sende- und Empfangsmodul benötigt. Aufwendigere Geräte besitzen eine Tastatur sowie Bildschirm und können direkt zum Senden und Empfang von Nachrichten genutzt werden. Günstigere Varianten werden z.B. per Bluetooth mit dem Smartphone verbunden, und nutzen dieses dann um Texte zu verfassen. Meist wird in Deutschland die Frequenz 868 MHz (SRD-Band Europa) genutzt, es exitieren jedoch auch Geräte für die Frequenz 433 MHz. Da für die Frequenzen unterschiedliche Antennen genutzt werden, sollte dies bereits bei Anschaffung der Hardware berücksichtigt werden.

## Hardware

- [Heltec WiFi LoRa 32(V3)](https://heltec.org/project/wifi-lora-32-v3/) – Moderner SX126x; OLED; gute Verfügbarkeit
- [XIAO ESP32S3 & Wio-SX1262 Kit](https://www.seeedstudio.com/XIAO-ESP32S3-for-Meshtastic-LoRa-with-3D-Printed-Enclosure-p-6314.html) – 

## Software - PC

- [MeshSense](https://affirmatech.com/meshsense) – Zeigt das Mesh-Netzwerk an.
- [Meshtastic Network Management Client](https://github.com/meshtastic/network-management-client) – Netzwerk-Management
- [Visual Syslog Server](https://maxbelkov.github.io/visualsyslog/) – Log-Server (Alternative zu ?)

## Links

#### Projekt

- [Meshtastic Project](https://meshtastic.org/) – Offizielle Website (engl.)

### Maps

- https://meshmap.net/
- https://meshtastic.liamcottle.net/

---


[KLiNG0NE](https://github.com/KLiNG0NE/) / [Tipps-und-Tricks](https://github.com/KLiNG0NE/Tipps-und-Tricks) / [Funktechnik](README.md)
