# KLiNG0NE / Tipps-und-Tricks / Browser

Hier wird über Tipps, Tricks und wissenswertes zu Browsern berichtet.

## Übersicht

* Was ist ein Browser?
* Browser-Übersicht
* Anzeigesprache des Browsers einstellen (UI)
  * Firefox (u. -Verwandte)
  * Chrome (u. -Verwandte)
* Einstellungen des Browsers für erhöhte Sicherheit und Privatsphäre
* Nützliche [Plug-ins](#plug-ins) für Browser
  * [Download](#download)
  * [Lesezeichen-/Favoritenverwaltung](#lesezeichen-favoritenverwaltung)
  * [Websitefilter](#websitefilter)
  * Twitch
  * [YouTube](#youtube)
* Links

---

## Was ist ein Browser?

Ein Browser (to browse ≙ durchsuchen) ist ein Programm, mit dem Webseiten im Internet angesehen und bedient werden können. Ohne Browser kann keine Seite wie Google, YouTube oder Wikipedia genutzt werden.

### Was macht ein Browser genau?

- Er ruft Webseiten aus dem Internet ab.
- Er zeigt Texte, Bilder, Videos und Buttons so an, dass der Nutzer sie sehen und anklicken kann.
- Er interpretiert Websprachen wie HTML, CSS und JavaScript, damit die Seite richtig aussieht und funktioniert.

### Beispiele für bekannte Browser

- Google Chrome
- Mozilla Firefox
- Microsoft Edge
- Apple Safari

---

## Browser-Übersicht

Eine unvollständige Übersicht von verschiedenen Browsern. – Derzeit können Browser grob anhand der genutzten Engine eingeteilt werden: Zunächst exitiert die freie Engine *WebKit*, welche von dem marktbeherrschenden Browser *Google Chrome* genutzt wird. Desweiteren existiert die freie Browserengine *Gecko*, welche von dem Konkurrenten *Mozilla Firefox* eingesetzt wird.

### WebKit-basiert

Chromiumbasierte Browser nutzen die freie Browser-Engine *WebKit*.

| Name               | Website                                                                                                                 | Hinweise                                                        |
| ------------------ | :---------------------------------------------------------------------------------------------------------------------: | --------------------------------------------------------------- |
| Google Chrome      | [www.google.com](https://www.google.com/intl/de_de/chrome/ "https://www.google.com")                                    |                                                                 |
| Brave              | [brave.com](https://brave.com/de/ "https://brave.com")                                                                  | Kann auch Onion-URLs öffnen                                     |
| Microsoft Edge     | [www.microsoft.com](https://www.microsoft.com/de-de/edge/ "https://www.microsoft.com")                                  |                                                                 |
| Ungoogled Chromium | [github.com/ungoogled-software](https://github.com/ungoogled-software/ungoogled-chromium "https://github.com/") (engl.) |                                                                 |
| Opera              | [www.opera.com](https://www.opera.com/de "https://www.opera.com")                                                       | undurchsichtige Besitzverhältnisse                              |
| Arc                | [arc.net](https://arc.net/ "https://arc.net") (engl.)                                                                   | Tableiste an der Seite                                          |
| NAVER Whale        | [whale.naver.com](https://whale.naver.com/en/ "https://whale.naver.com") (engl.)                                        | südkoreanischer Anbieter, kein deu. UI, eigener Extension Store |
| Sleipnir           | [www.fenrir-inc.com](https://www.fenrir-inc.com/jp/sleipnir/ "https://www.fenrir-inc.com") (jap.)                       | japanischer Anbieter, UI in deutscher Sprache                   |

### Gecko-basiert

Diese Browser nutzen die freie Browser-Engine *Gecko*.

| Name            | Website                                                                          | Hinweise                                                 |
| --------------- | :------------------------------------------------------------------------------: | -------------------------------------------------------- |
| Floorp          | [floorp.app](https://floorp.app/ "https://floorp.app") (engl.)                   | Open Source                                              |
| LibreWolf       | [librewolf.net](https://librewolf.net/ "https://librewolf.ne") (engl.)           | Legt erhöten Wert auf Privatsphäre                       |
| Mozilla Firefox | [www.firefox.com](https://www.firefox.com/de/ "https://www.firefox.com")         |                                                          |
| Tor Browser     | [www.torproject.org](https://www.torproject.org/ "https://www.torproject.org")   | Nutzt ein eigenes Netz, um die Identität zu verschleiern |
| Waterfox        | [www.waterfox.net](https://www.waterfox.net/ "https://www.waterfox.net") (engl.) |                                                          |
| Zen Browser     | [zen-browser.app](https://zen-browser.app/ "https://zen-browser.app") (engl.)    | Open Source                                              |

### Unabhängig

| Name      | Website                                                                  | Hinweise                                                       |
| --------- | ------------------------------------------------------------------------ | -------------------------------------------------------------- |
| Ladybird  | [ladybird.org](https://ladybird.org/ "ttps://ladybird.org")              | Befindet sich in Entwicklung, Angestrebtes Release: Mitte 2026 |
| Pale Moon | [www.palemoon.org](https://www.palemoon.org/ "https://www.palemoon.org") | Abspaltung von Mozilla Firefox, Browser-Engine: Goanna         |

---

### Anzeigesprache einstellen

#### Firefox

Das Burger-Menü ☰ (Drei-Striche-Menü) befindet sich typischerweise in der rechten oberen Ecke des Browserfensters.

##### Englisch voreingestellt

☰ -  Burger-Menü -> Settings -> General -> Language and Appearance -> Language 

##### Deutsch voreingestellt

☰ - Burger-Menü -> Einstellungen -> Allgemein -> Sprache und Erscheinungsbild -> Sprache

---

## Einstellungen des Browsers für erhöhte Sicherheit und Privatsphäre

### DNS over HTTPS (DoH) manuell einrichten

Bei DNS over HTTPS werden anfragen an den DNS-Server verschlüsselt übertragen. Dies verhindert, dass andere, zum Beispiel der Internetprovider, weiß, welche Websites oder Dienste angefragt werden.

Falls der Browser manuell eingerichtet wird, sind unter *DoH-Resolver* in der folgenden Tabelle korrekte URLs angegeben.

#### Public Resolvers

| Anbieter                                                                           | DoH-Resolver                                                                 | 
|------------------------------------------------------------------------------------|------------------------------------------------------------------------------|
| Cloudflare                                                                         | [cloudflare-dns.com/dns-query](https://cloudflare-dns.com/dns-query)         |
| [DNS4EU](https://www.joindns4.eu/for-public#resolver-options)                      | [unfiltered.joindns4.eu/dns-query](https://unfiltered.joindns4.eu/dns-query) |
| Google                                                                             | https://dns.google/dns-query                                                 |
| quad9                                                                              | https://dns.quad9.net/dns-query                                              |
| [SaveDNS](https://docs.safedns.com/books/hidden/page/dns-over-https-setup-doh-url) | [doh.safedns.com](https://doh.safedns.com)                                   |

Quelle: [dnsprivacy.org](https://dnsprivacy.org/public_resolvers/)

### Firefox (u. -Verwandte)

#### Verbesserter Schutz vor Aktivitätenverfolgung

☰ - Burger-Menü -> Einstellungen -> Datenschutz und Sicherheit -> Browser-Datenschutz

Empfohlene Einstellung: Benutzerdefiniert

Alle Optionen sollten ``aktiv`` (angehakt) sein.

Dies erhöht den Datenschutz, könnte jedoch dazu führen, dass evtl. einige Websites nicht mehr korrekt funktionieren.

#### WebRTC Peer-Verbindung

Web Real Time Communication wird zum Beispiel für Videokonferenz im Browser genutzt. Wer so etwas nicht nutzt, kann die Funktion deaktivieren.

Empfohlene Einstellung: deaktiviert

Wer dies benötigt, schaltet es wieder ein.

#### Datenschutzeinstellungen für Websites

Mit dieser Einstellung soll Websites mitgeteilt werden, dass Daten nicht verkauft oder weitergegeben werden.  
Es bleibt fraglich, ob Betreiber solche Einstellungen auswerten, und wie sie darauf reagieren.

Empfohlene Einstellung: aktiviert

### Chrome (u. -Verwandte)

---

## Plug-ins

Ein Plug-in [ˈplʌgɪn] (häufig auch Plugin; von engl. to plug in, „einstöpseln, anschließen“, auch Software-Erweiterung oder Zusatzmodul) ist eine optionale Softwarekomponente, die eine bestehende Software oder ein Computerspiel erweitert bzw. verändert. Der Begriff wird teilweise auch als Synonym zu „Add-on“ und „Add-in“ benutzt. Plug-ins werden meist vom Benutzer installiert und dann von der entsprechenden Hauptanwendung während der Laufzeit eingebunden. Plug-ins können nicht ohne die Hauptanwendung ausgeführt werden[^1].

### Download

#### Video DownloadHelper

![Static Badge](https://img.shields.io/badge/Firefox-Erweiterung-FF7139?logo=firefox) ![Static Badge](https://img.shields.io/badge/Chromium-Erweiterung-4285F4?logo=googlechrome)

<img src="img/Video-DownloadHelper.png" alt="Logo: Video DownloadHelper" width="100px" />

Mit *Video DownloadHelper* können recht einfach Videos von Websites heruntergeladen werden.

Website: [www.downloadhelper.net](https://www.downloadhelper.net/ "Video DownloadHelper")

---

### Lesezeichen-/Favoritenverwaltung

#### Floccus

<img src="img/Floccus.png" alt="Logo: Floccus" width="100px" />

Bietet verschiedene Speichermöglichkeiten für die Favoriten.

Website: [floccus.org](https://floccus.org/ "floccus.org")

---

#### xBrowserSync

![Static Badge](https://img.shields.io/badge/Firefox-Erweiterung-FF7139?logo=firefox) ![Static Badge](https://img.shields.io/badge/Chromium-Erweiterung-4285F4?logo=googlechrome)

Speichert online die Lieblingswebsites und kann zwischen verschiedenen Browsern sowie Android synchronisieren.

![Logo: xBrowserSync](img/xBrowserSync.png "Logo: xBrowserSync")

Website: [www.xbrowsersync.org](https://www.xbrowsersync.org/ "xBrowserSync.org")

---

### Websitefilter

#### uBlock origin

![Static Badge](https://img.shields.io/badge/Firefox-Erweiterung-FF7139?logo=firefox) ![Static Badge](https://img.shields.io/badge/Chromium-Erweiterung-4285F4?logo=googlechrome)

Effektive Website-Filterung durch Nutzung von unterschiedlichen Filterlisten.  (Werbung, Social-Networks, ...)

![Logo: uBlock Origin](img/uBlock-Origin.png "Logo: uBlock Origin")

Website: [ublockorigin.com](https://ublockorigin.com/ "uBlockOrigin.com")

---

#### Ghostery

![Static Badge](https://img.shields.io/badge/Firefox-Erweiterung-FF7139?logo=firefox) ![Static Badge](https://img.shields.io/badge/Chromium-Erweiterung-4285F4?logo=googlechrome)

Ghostery bietet mehrere Anwendungen, die zusammenarbeiten, um einen optimalen Schutz der Privatsphäre zu gewährleisten. Ganz gleich, ob Sie einen Werbeblocker, einen Tracker-Neutralisierer oder eine private Suchmaschine benötigen, Ghostery hat alles für Sie[^2].

![Logo: Ghostery](img/Ghostery.png "Logo: Ghostery")

Website: [www.ghostery.com](https://www.ghostery.com/ "Ghostery.com")

---

#### Privacy Badger

![Static Badge](https://img.shields.io/badge/Firefox-Erweiterung-FF7139?logo=firefox) ![Static Badge](https://img.shields.io/badge/Chromium-Erweiterung-4285F4?logo=googlechrome)

Privacy Badger ist eine Browsererweiterung, die Werbetreibende und andere Drittanbieter davon abhält, heimlich zu verfolgen, wohin Sie gehen und welche Seiten Sie sich im Internet ansehen. Wenn ein Werbetreibender Sie ohne Ihre Erlaubnis über mehrere Websites hinweg verfolgt, blockiert Privacy Badger automatisch, dass dieser Werbetreibende weitere Inhalte in Ihrem Browser lädt. Für den Werbetreibenden ist es so, als wären Sie plötzlich verschwunden[^3].

![Logo: Privacy Badger](img/Privacy-Badger.png "Logo: Privacy Badger")

Website: [privacybadger.org](https://privacybadger.org/ "privacybadger.org")

---

#### I don't care about cookies

![Static Badge](https://img.shields.io/badge/Firefox-Erweiterung-FF7139?logo=firefox) ![Static Badge](https://img.shields.io/badge/Chromium-Erweiterung-4285F4?logo=googlechrome)  ![Static Badge](https://img.shields.io/badge/Opera-Erweiterung-FF1B2D?logo=opera)

Zu deutsch: Cookies sind mir egal. – Filtert die Cookie-Hinweise von Websites heraus.

![Logo: I don't care about cookies](img/i-dont-care-about-cookies.png "Logo: I don't care about cookies")

Website: [www.i-dont-care-about-cookies.eu](https://www.i-dont-care-about-cookies.eu/de "i-dont-care-about-cookies.eu")

---

### YouTube

#### SponsorBlock

![Static Badge](https://img.shields.io/badge/Firefox-Erweiterung-FF7139?logo=firefox) ![Static Badge](https://img.shields.io/badge/Chromium-Erweiterung-4285F4?logo=googlechrome)

SponsorBlock ist eine Open-Source-Browser-Erweiterung und eine offene API zum Überspringen von Sponsor-Segmenten in YouTube-Videos. Nutzer melden sich, wenn ein Sponsor in der Erweiterung auftaucht, und die Erweiterung überspringt automatisch die Sponsoren, von denen sie weiß, indem sie ein Abfragesystem verwendet, das die Privatsphäre schützt. Sie unterstützt auch das Überspringen anderer Kategorien, wie Intros, Outros und Erinnerungen zum Abonnieren, und das Überspringen zum Punkt mit Highlight[^4].

![Logo: SponsorBlock](img/SponsorBlock.png "Logo: SponsorBlock")

Website: [sponsor.ajay.app](https://sponsor.ajay.app/ "sponsor.ajay.app")

---

#### Return YouTube Dislike

![Static Badge](https://img.shields.io/badge/Firefox-Erweiterung-FF7139?logo=firefox) ![Static Badge](https://img.shields.io/badge/Chromium-Erweiterung-4285F4?logo=googlechrome)

Zeigt einen geschätzten Dislike-Wert bei YouTube an.

![Logo: Return YouTube Dislike](img/Return-YouTube-Dislike.png "Logo: Return YouTube Dislike")

Website: [returnyoutubedislike.com](https://returnyoutubedislike.com/ "returnyoutubedislike.com")

---

## Links

* BrowserAudit https://browseraudit.com/
* WhatIsMyBrowser.com: [www.whatismybrowser.com](https://www.whatismybrowser.com/) (engl.)
* What's My Browser: [www.whatsmybrowser.org](https://www.whatsmybrowser.org/)

---

[KLiNG0NE](https://github.com/KLiNG0NE/) / [Tipps-und-Tricks](https://github.com/KLiNG0NE/Tipps-und-Tricks/) / [Browser](https://github.com/KLiNG0NE/Tipps-und-Tricks/blob/main/Browser/ReadMe.md)

###### Quellenangaben:

[^1]: Seite „Plug-in“. In: Wikipedia – Die freie Enzyklopädie. Bearbeitungsstand: 26. Oktober 2024, 12:19 UTC. URL: [https://de.wikipedia.org/wiki/Plug-in](https://de.wikipedia.org/w/index.php?title=Plug-in&oldid=249773221) (Abgerufen: 25. Dezember 2024, 03:07 UTC) 
[^2]: Übersetzung der Herstellerwebsite: [www.ghostery.com](https://www.ghostery.com/)
[^3]: Übersetzung der Herstellerwebsite: [privacybadger.org](https://privacybadger.org/)
[^4]: Übersetzung der Herstellerwebsite: [sponsor.ajay.app](https://sponsor.ajay.app/)
