# Linux-Dateisystemstruktur

Hier wird die Struktur des Linux-Dateisystems erklärt

#### /

Wurzelordner (Root), Startpunkt des Dateisystems

#### /bin

Binary – Ausführbare Programme (ls, cp, mv, …)

#### /sbin

Systembinarys – Ausführbare Programme des Systems (mount, fsck, shutdown, …)
Benötigt meist Admin-Rechte

#### /lib

Librarys - Bibliotheken, die von anderen Programmen gemeinsam genutzt werden, nachladbare Kernelmodule
Auf einigen Systemen sind die Ordner /lib32 bzw. /lib64 vorhanden

#### /usr

Unix System Resources, installierte Programme

#### /boot

Dateien, die zum Systemstart benötigt werden. (initrd, initfs, GRUB, grub.cfg)

#### /dev

Devices – Enthält keine tatsächlichen Dateien, Geräte werden hier eingehängt  
In Linux werden alle Geräte durch einen Ordner repräsentiert

#### /etc

Et cetera, Editable Text Configuration  
Systemweite Konfigurationsdateien

#### /home
Speicherort der persönlichen Benutzerdateien, jeder Nutzer erhält einen eigenen Unterordner, (Dokumente, Bilder, Downloads, …)  
Standardmäßig können nur die Dateien im eigenen Ordner genutzt werden und die Dateien anderer Nutzer sind geschützt  
Enthält auch benutzerspezifische Konfigurationsdateien  
Kann die Unterordner /share bzw. /public enthalten, um Dateien zwischen Nutzern zu teilen

#### /root
Persönlicher Ordner des Administrators
