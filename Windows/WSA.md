# WSA – Windows Subsystem for Android #

## Befehle zum Starten/Stoppen von WSA ##

- Start

Startet bzw. restartet das Windows Subsystem for Android (WSA).

```
WsaClient /restart 0
```

- Stop

Beendet WSA sauber.

```
WsaClient /shutdown
```

- App starten

Startet eine installierte Android‑App anhand ihres Paketnamens (z.B. wsa://com.example.app).

```
WsaClient.exe /launch wsa://<package_name>
```

- Einstellungen

Öffnet die WSA‑Einstellungsapp (UWP‑Oberfläche für das Subsystem).

```
wsa-settings://
```

Quelle: [github.com/LSPosed](https://github.com/LSPosed/MagiskOnWSALocal/wiki/Commands-to-start-or-stop-WSA)

---
