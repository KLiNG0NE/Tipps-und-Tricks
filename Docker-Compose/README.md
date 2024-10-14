# Tipps und Tricks
<small>TIPPS UND TRICKS FÜR COMPUTER UND INTERNET</small>

Hier ist eine Compose-Datei für **Watchtower** auffindbar.

## Watchtower

Mit **Watchtower** können Sie die laufende Version Ihrer containerisierten Anwendung aktualisieren, indem Sie einfach ein neues Image in den Docker Hub oder in Ihre eigene Image-Registry pushen. **Watchtower** wird Ihr neues Image herunterladen, Ihren bestehenden Container ordnungsgemäß herunterfahren und ihn mit denselben Optionen neu starten, die beim ursprünglichen Deployment verwendet wurden.

Schnnelstart mit ``docker run``:

```
docker run -d \
--name watchtower \
-v /var/run/docker.sock:/var/run/docker.sock \
containrrr/watchtower
```

Website: [containrrr.dev](https://containrrr.dev/watchtower/)
