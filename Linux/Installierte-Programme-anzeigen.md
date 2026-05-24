# Installierte Programme anzeigen #

## Debian/Ubuntu ##

Um eine Liste aller installierten Programme anzuzeigen, folgenden Befehl ins Terminal eingeben:

```
apt list --installed
```

Falls nur bestimmte Einträge (hier z. B. "audacity") angezeigt werden sollen:

```
apt list --installed | grep audacity
```
