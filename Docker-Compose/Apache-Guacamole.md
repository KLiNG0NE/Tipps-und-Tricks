# Apache Guacamole

Compose

```
# https://hub.docker.com/r/flcontainers/guacamole
# https://guacamole.apache.org/
name: guacamole
services:
    guacamole:
        ports:
            # Host-Port : Container-Port
            - 8192:8080
        volumes:
            - /portainer/guacamole/config:/config
            - /etc/localtime:/etc/localtime:ro
        environment:
            - TZ=Europe/Berlin
            - EXTENSIONS=auth-ldap,auth-duo
        image: flcontainers/guacamole
```

Standardbenutzer

Der Standard-Nutzername ist ``guacadmin`` mit dem Passwort ``guacadmin``.

---

Remote Desktop Protocol (RDP)

Name: [Windows]\
Protokoll: RDP

Netzwerk\
Hostname: [IP/URL]\
Port: 3389

Authentifizierung\
Benutzername: [Benutzername]\
Passwort: [Passwort]\
Domäne: [Domäne/(oder leer)]\
Sicherheitsmodus: NLA\
Serverzertifikat ignorieren: aktiviert

Bildschirm\
Farbtiefe: Echtfarben (32-bit)\
Grössenänderungs-Methode: "Display update" virtual channel (RDP 8.1+)

Geschwindigkeit\
Schriftartglättung (ClearType) aktivieren: aktiviert

---

https://youtu.be/tg1CbMEzCsc
