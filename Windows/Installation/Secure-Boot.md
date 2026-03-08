Tipps-und-Tricks / Windows / Installation


Secure Boot-Zertifikat prüfen:

PowerShell mit Administrator-Rechten starten und folgendes eingeben:

```
[System.Text.Encoding]::ASCII.GetString((Get-SecureBootUEFI db).bytes) -match 'Windows UEFI CA 2023'
```

Wenn das zugehörige Zertifikat vorhanden ist, sollte ``True`` als Antwort erscheinen, und es ist alles Ok.

Falls eine andere Antwort erscheint, sollte möglichst ein BIOS-Update installiert werden.
