# KLiNG0NE / Tipps-und-Tricks / Browser / Brave

Website: [brave.com](https://brave.com/de/ "https://brave.com")

* [Debloat Brave](#Debloat-Brave)
* [Flackern in Brave beseitigen](#flackern-in-brave-beseitigen)

---

## Debloat Brave ##

Folgenden Registry-Schlüssel anlegen:
```
Computer\HKEY_LOCAL_MACHINE\SOFTWARE\Policies\BraveSoftware\Brave
```

In dem Schlüssel können folgende DWORD-Werte gesetzt werden:

| DWORD-Wertname                          | Wert  |
| --------------------------------------- | :---: |
| BraveRewardsDisabled                    | 1     |
| BraveWalletDisabled                     | 1     |
| BraveVPNDisabled                        | 1     |
| BraveAIChatEnabled                      | 0     |
| BraveStatsPingEnabled                   | 0     |
| BraveNewsDisabled                       | 1     |
| BraveTalkDisabled                       | 1     |
| TorDisabled                             | 1     |
| BraveP3AEnabled                         | 0     |
| UrlKeyedAnonymizedDataCollectionEnabled | 0     |
| SafeBrowsingExtendedReportingEnabled    | 0     |
| MetricsReportingEnabled                 | 0     |

Quelle:  
[winutil.christitus.com](https://winutil.christitus.com/dev/tweaks/z--advanced-tweaks---caution/bravedebloat/)
---

## Flackern in Brave beseitigen

Bei meinen Einstellungen kam es zum flackern vieler Seitenelemente. Das *deaktivieren* folgender Einstellung brachte Abhilfe:

Menü -> Einstellungen -> System -> Grafikbeschleunigung verwenden, falls verfügbar [deaktivieren]

Das Menü befindet sich bei Brave rechts oben, die drei waagrechten Striche (Burger-Menü).

---

[KLiNG0NE](https://github.com/KLiNG0NE/) / [Tipps-und-Tricks](https://github.com/KLiNG0NE/Tipps-und-Tricks/) / [Browser](https://github.com/KLiNG0NE/Tipps-und-Tricks/blob/main/Browser/ReadMe.md)
