# Apache Guacamole

Compose

```
# https://hub.docker.com/r/flcontainers/guacamole
# https://guacamole.apache.org/
name: guacamole
services:
    guacamole:
        ports:
            - 8080:8080
        volumes:
            - </path/to/config>:/config
            - /etc/localtime:/etc/localtime:ro
        environment:
            - TZ=Europe/Berlin
            - EXTENSIONS=auth-ldap,auth-duo
        image: flcontainers/Guacamole
```
