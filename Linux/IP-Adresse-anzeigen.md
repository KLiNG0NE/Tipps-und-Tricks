# IP-Adresse anzeigen

Es existieren verschiedene Möglichkeiten, die private IP-Adresse bei Linux anzuzeigen.

## Lokale IP-Adresse

Geben sie einen der folgenden Befehle in das Terminal ein:

```
ifconfig
```

```
ip addr
```

```
ip a
```

## Öffentliche IP-Adresse

Heutzutage werden häufig zwei verschiede IP-Adressen im Internet zugeteilt. Zum einen die traditionelle IPv4-Adresse zum anderen die modernere IPv6-Variante.  
Die öffentliche IP-Adresse kann mit folgenden Befehlen gefunden werden:

Allgemein

```
curl ifconfig.me
```

IPv4-Adresse anzeigen

```
curl -4 ifconfig.me
```

IPv6-Adresse anzeigen
```
curl -6 ifconfig.me
```

Dieser Service wird von der Website [ifconfig.me](https://ifconfig.me/) bereitgestellt.

Über diese Website kann die IP (neben anderen Infos) auch per Browser angezeigt werden.

