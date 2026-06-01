# Tipps und Tricks / Windows / Treiber / Treiber-Sicherung erstellen
<small>TIPPS UND TRICKS FÜR COMPUTER UND INTERNET</small>

## Treiber-Sicherung erstellen ##

Um alle Treiberpakete zu exportieren, folgenden Befehl in die Eingabeaufforderung oder PowerShell eingeben:

```
pnputil /export-driver * c:\backup
```

Es werden Kopien sämtlicher Treiber in dem Ordner ``C:\backup`` erstellt.
