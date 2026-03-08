# Tipps-und-Tricks / Windows / Installation #


## Secure Boot-Zertifikat prüfen ##

Damit *Secure Boot* korrekt funktioniert muss ein aktuelles Zertifikat von Microsoft vorhanden sein. Rechner, die vor dem Jahr 2024 hergestellt wurden, sind mit einem Zertifikat von 2011 signiert. Dieses läuft im Juni 2026 aus. Mit diesem Zertifikat lässt sich *Secure Boot* nicht mehr nutzen.

- PowerShell mit Administrator-Rechten starten und folgendes eingeben:

```
[System.Text.Encoding]::ASCII.GetString((Get-SecureBootUEFI db).bytes) -match 'Windows UEFI CA 2023'
```

- Wenn das zugehörige Zertifikat vorhanden ist, sollte ``True`` als Antwort erscheinen, und es ist alles Ok.

- Falls ``False`` erscheint, sollte möglichst ein *BIOS-Update* installiert werden.
