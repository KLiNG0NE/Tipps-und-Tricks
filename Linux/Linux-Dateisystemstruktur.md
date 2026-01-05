# Linux-Dateisystemstruktur

Hier wird die Struktur des Linux-Dateisystems erläutert.

#### /

Wurzelordner (Root), Startpunkt des Dateisystems  
In Linux erhält nicht, wie z. B. in Windows, jedes Laufwerk einen eigenen Startpunkt, sondern alles wird unter / (Root) eingeordnet.

#### /bin

Binary – Ausführbare Programme (ls, cp, mv, fdisk, ifconfig, ip, reboot, shutdown, …), die für Anwender immer zur Verfügung stehen müssen.  
Beispielsweise die Shell *bash* befindet sich hier.

#### /sbin

System-Binarys – Ausführbare Programme des Systems und für Systemadministratoren (mount, fsck, shutdown, …)  
Benötigt im Allgemeinen Admin-Rechte  
Systemadministration, Systemwartung, Booten und Konfiguration des Systems

#### /lib

Librarys - Bibliotheken, die von anderen Programmen gemeinsam genutzt werden, nachladbare Kernelmodule  
Auf einigen Systemen sind die Ordner /lib32 bzw. /lib64 vorhanden

#### /usr

Unix System Resources, installierte Programme des Linux-Sytems
Dies ist meist der größte Ordner des Systems.  
Ausführbaren Programmdateien befinden sich oft in /usr/bin, die Programmbi-Bliotheken in /usr/lib.

#### /boot

Dateien, die zum Systemstart benötigt werden. (initrd, initfs, GRUB, grub.cfg)

#### /dev

Devices – Enthält keine tatsächlichen Dateien, sondern ist ein virtueller Ordner, Geräte werden hier eingehängt  
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

Moderne Systeme legen hier den Inhalt von Wechseldatenträgern wie USB-Sticks, CD oder DVD ab.

####  /mnt

Mount – enthält die Dateisysteme von manuell gemounteten Verzeichnissen wie externe Festplatten oder Netzwerk-Ressourcen.

#### /proc

Processes – Virtueller Ordner, Live-Schnittstelle zu Kernal und Prozessen  
Enthält z. B. Unterordner nach Prozess-ID wie /proc/1234 und Infos zum laufenden System wie /proc/cpuinfo und /proc/meminfo

#### /sys

System – Virtueller Ordner, Dynamisches Interface zwischen Kernal und Hardware, Treiber, Systembus

#### /run

Enthält Dateien, die während des Systemstarts genutzt werden. Kann von Prozessen zur Kommunikation untereinander genutzt werden.

#### /srv

Service – Dienste wie Webserver, FTP-Server – Enthält Dateien für Nutzer, die sich extern mit dem System verbinden.  
Kann bei einigen Systemen auch unter /var/srv vorhanden sein.

#### /var

Variables – Enthält Dateien, die sich währen der Laufzeit häufig ändern z. B. (Log-Dateien), wird auch von einigen Paketmanagern genutzt.  
Häufig ist z. B. /var/www vorhanden, welches die Ressourcen eines Webservers enthält.

#### /tmp

Temporary – Enthält Dateien, die nur kurzzeitig genutzt werden.

#### /opt

Optional – Enthält Programme und Dateien die nicht aus zur Distribution gehörenden Paketquellen stammen. („Dritt-Anbieter-Software“).

---

Quelle: [WhiteboardDoodles @ YouTube](https://www.youtube.com/watch?v=ISJ44S5sZu8)
