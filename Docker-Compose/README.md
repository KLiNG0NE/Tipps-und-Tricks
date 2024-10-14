# Tipps und Tricks&nbsp;– Docker-Compose
<small>TIPPS UND TRICKS FÜR COMPUTER UND INTERNET</small>

---

Hier sind Docker compose-Dateien auffindbar.

## Vorteil von Docker-Compose

Der Betrieb von Container mit Docker-Run kann schnell unübersichtlich werden.

Mit Docker-Compose werden Container in einer Yaml-Datei definiert: ``compose.yaml``.  
Die Container können einfach mit einem Text-Editor an die eigenen Gegebenheiten angepasst werden.

Hier ist eine kleine Sammlung von Compose-Datein, um einige nützliche (oder weniger nützliche) Container zu definieren.

## Übersicht

* [Dockge](Dockge)
* [Keycloak](Keycloak)
* [Watchtower](Watchtower)

## Beispiel

Hier eine einfache ``compose.yaml``-Datei:

```
version: "3.3"
services:
  hello-world:
    image: hello-world
networks: {}
```
