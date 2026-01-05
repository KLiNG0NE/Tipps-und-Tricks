# Linux-Dateisystemstruktur

Hier wird die Struktur des Linux-Dateisystems erklärt

#### /

Wurzelordner (Root), Startpunkt des Dateisystems  
In Linux erhält nicht, wie in Windows, jedes Laufwerk einen eigenen Startpunkt, sondern alles wird unter / eingeordnet

#### /bin

Binary – Ausführbare Programme (ls, cp, mv, …)

#### /sbin

Systembinarys – Ausführbare Programme des Systems (mount, fsck, shutdown, …)
Benötigt meist Admin-Rechte

#### /lib

Librarys - Bibliotheken, die von anderen Programmen gemeinsam genutzt werden, nachladbare Kernelmodule  
Auf einigen Systemen sind die Ordner /lib32 bzw. /lib64 vorhanden

#### /usr

Unix System Resources, installierte Programme dss Linux-Sytems

#### /boot

Dateien, die zum Systemstart benötigt werden. (initrd, initfs, GRUB, grub.cfg)

#### /dev

Devices – Enthält keine tatsächlichen Dateien sondern ist ein virtueller Ordner, Geräte werden hier eingehängt  
In Linux werden alle Geräte durch einen eigenen Ordner repräsentiert

#### /etc

Et cetera, Editable Text Configuration – Systemweite Konfigurationsdateien

#### /home

Speicherort der persönlichen Benutzerdateien, jeder Nutzer erhält einen eigenen Unterordner, (Dokumente, Bilder, Downloads, …)  
Standardmäßig können nur die Dateien im eigenen Ordner genutzt werden und die Dateien anderer Nutzer sind geschützt  
Enthält auch benutzerspezifische Konfigurationsdateien  
Kann die Unterordner /home/share bzw. /home/public enthalten, um Dateien zwischen Nutzern zu teilen

#### /root

Persönlicher Ordner des Administrators

####  /media

Moderne Systeme legen hier den Inhalt von entfernbaren Speichermedien wie USB-Sticks, CD oder DVD ab

####  /mnt

Mount – enthält die Dateisysteme von manuell gemounteten Verzeichnissen wie externe Festplatten oder Netzwerk-Ressourcen

#### /proc

Processes – Virtueller Ordner, Live-Schnittstelle zu Kernal und Prozessen  
Enthält Unterordner nach Prozess-ID /proc/1234 und Infos zum laufenden System wie /proc/cpuinfo und /proc/meminfo

#### /sys

System – Virtueller Ordner, Dynamisches Interface zwischen Kernal und Hardware, Treiber, Systembus

#### /run

Enthält Dateien, die während des Systemstarts genutzt werden, Kann von Prozessen zur Kommunikation untereinander genutzt werden

#### /srv

Service – Dienste wie Webserver, FTP-Server – Enthält Dateien für Nutzer, die sich extern mit dem System verbinden  
Kann bei einigen Systemen auch unter /var/srv vorhanden sein

#### /var

Variables – Enthält Dateien, die sich währen der Laufzeit häufig ändern (Log-Dateien), wird auch von einigen Paketmanagern genutzt  
Häufig ist z. B. /var/www vorhanden, welches die Ressourcen eines Webservers enthält

#### /tmp

Temporary – Enthält Dateien, die nur kurzzeitig genutzt werden

#### /opt

Optional – Enthält Programme und Dateien die nicht zum eigentlichen System gehören („Fremdsoftware“)

---

Quelle: [WhiteboardDoodles @ YouTube](https://www.youtube.com/watch?v=ISJ44S5sZu8)
