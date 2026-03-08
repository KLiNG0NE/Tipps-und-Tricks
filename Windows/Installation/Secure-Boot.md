# Tipps-und-Tricks / Windows / Installation #


## Secure Boot-Zertifikat prüfen ##

Damit *Secure Boot* korrekt funktioniert muss ein aktuelles Zertifikat von Microsoft vorhanden sein. Rechner, die vor dem Jahr 2024 hergestellt wurden, sind mit einem Zertifikat von 2011 signiert. Dieses läuft im Juni 2026 aus. Mit diesem Zertifikat lässt sich *Secure Boot* nicht mehr nutzen.

- PowerShell mit Administrator-Rechten starten und folgendes eingeben:

```
[System.Text.Encoding]::ASCII.GetString((Get-SecureBootUEFI db).bytes) -match 'Windows UEFI CA 2023'
```

- Wenn das zugehörige Zertifikat vorhanden ist, sollte ``True`` als Antwort erscheinen, und es ist alles Ok.

- Falls ``False`` erscheint, sollte möglichst ein *BIOS-Update* installiert werden.

---

## Zertifikat in Windows aktualisieren ##

Falls automatische Updates in Windows deaktiviert sind, sollte das Update manuell ausgelöst werden:

- Registryeintrag hinzufügen
- PowerShell mit Administrator-Rechten starten und folgendes eingeben:

```
reg add HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Secureboot /v AvailableUpdates /t REG_DWORD /d 0x5944 /f
```

- Update anstoßen:

```
Start-ScheduledTask -TaskName "\Microsoft\Windows\PI\Secure-Boot-Update"
```

- Anschließend den Rechner zwei Mal neu starten


Quelle: [Britec09 @ YouTube](https://youtu.be/sqwEA6_hq6M)

---
