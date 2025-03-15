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
