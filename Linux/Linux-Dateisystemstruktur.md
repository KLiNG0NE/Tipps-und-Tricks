# Linux-Dateisystemstruktur

Hier wird die Struktur des Linux-Dateisystems erklärt

/  
Wurzelordner (Root)

/bin
Binary – Ausführbare Programme (ls, cp, mv, …)

/sbin  
Systembinarys – Ausführbare Programme des Systems (mount, fsck, shutdown, …)
Benötigt meist Admin-Rechte

/lib  
/lib32  
/lib64  
Librarys - Bibliotheken, die von anderen Programmen gemeinsam genutzt werden, nachladbare Kernelmodule

/usr  
Unix System Resources, installierte Programme

/boot  
Dateien, die zum Systemstart benötigt werden. (initrd, initfs, GRUB, grub.cfg)

/root  
Persönlicher Ordner des Administrators
