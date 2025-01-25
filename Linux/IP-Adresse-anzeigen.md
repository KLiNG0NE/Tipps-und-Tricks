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

### Allgemein mit „curl“

```
curl ifconfig.me
```

```
curl ipinfo.io/ip
```

### Falls „wget“ installiert ist, funktioniert auch einer dieser Befehle:

```
wget -qO- ifconfig.co
```

```
wget -qO- icanhazip.com
```

```
wget -qO- http://ipecho.net/plain | xargs echo
```

### Anzeigen der IP mit „dig“

```
dig +short myip.opendns.com @resolver1.opendns.com
```

### IP-Adresse mit „host“ ermitteln

```
host myip.opendns.com resolver1.opendns.com
```

### IPv4-Adresse anzeigen

```
curl -4 ifconfig.me
```

### IPv6-Adresse anzeigen

```
curl -6 ifconfig.me
```

Dieser Service wird von der Website [ifconfig.me](https://ifconfig.me/) bereitgestellt.

Über diese Website kann die IP (neben anderen Infos) auch per Browser angezeigt werden.

