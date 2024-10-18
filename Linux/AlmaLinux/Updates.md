# Updates für AlmaLinux

## Per Command Line Interface (CLI)

Aktualisierungen auf der Kommandozeile werden über den Paketmanager **dnf** durchgeführt, der offizielle und konfigurierte Repositories auf Aktualisierungen bestehender Software sowie auf neu in das Betriebssystem aufgenommene Pakete überprüft.

Öffnen Sie ein Terminal und geben Sie den folgenden Befehl ein, um nach Updates für AlmaLinux zu suchen. Dadurch werden alle Pakete auf Ihrem System aufgelistet, für die Aktualisierungen verfügbar sind.

```
dnf check-update
```

Um alle angezeigten Updates zu installieren, führen Sie einfach diesen Befehl aus:

```
dnf update
```

Wenn Sie ein bestimmtes Paket aktualisieren möchten, ohne alles andere zu aktualisieren, können Sie es namentlich angeben:

```
dnf update httpd
```

Sie können auch mehrere Pakete angeben:

```
dnf update httpd firewalld
```
