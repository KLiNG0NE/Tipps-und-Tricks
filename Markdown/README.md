[KLiNG0NE](https://github.com/KLiNG0NE/) / [Tipps-und-Tricks](https://github.com/KLiNG0NE/Tipps-und-Tricks/) / [Markdown](https://github.com/KLiNG0NE/Tipps-und-Tricks/tree/main/Markdown)

# Markdown #

![Logo](img/markdown-128.png)

*Markdown* ist eine leichte Auszeichnungssprache (Markup-Sprache), die 2004 von John Gruber (zusammen mit Aaron Swartz) entwickelt wurde. Sie erlaubt es, Texte mit einer sehr einfachen, gut lesbaren Syntax zu formatieren – direkt im Klartext, ohne spezielle Software.

Die Grundidee  
Markdown-Dateien sind normale Textdateien ``.md``, die auch ohne Konvertierung gut lesbar bleiben. Ein Programm (Parser) kann sie später in HTML, PDF oder andere Formate umwandeln.

## Übersicht

- [Text](#text)
  - [Überschriften](#überschriften)
  - [Kursiv-Schrift](#kursiv-schrift)
  - [Fettdruck](#fettdruck)
  - [Fett-und-kursiv](#fett-und-kursiv)
  - [Zitate](#zitate)
  - [Links](#links)
  - [Code](#code)
- [Bilder](#bilder)
- [Tabellen](#tabellen)
  - [Grundaufbau](#grundaufbau)
  - [Textausrichtung](#textausrichtung)
- [Freeware](#freeware)
  - [Desktop-Editoren](#desktop-editoren)

## Text ##

### Überschriften

- Überschriften werden mit einem oder mehreren Rautezeichen #, gefolgt vom Text der Überschrift formatiert.
- Markdown unterscheidet sechs Überschriften-Ebenen.

###### Markdown

```md
# Überschrift Ebene 1

## Überschrift Ebene 2

### Überschrift Ebene 3

#### Überschrift Ebene 4

##### Überschrift Ebene 5

###### Überschrift Ebene 6
```

###### Ergebnis

# Überschrift Ebene 1

## Überschrift Ebene 2

### Überschrift Ebene 3

#### Überschrift Ebene 4

##### Überschrift Ebene 5

###### Überschrift Ebene 6

---

### Kursiv-Schrift ###

- Um Text kursiv zu formatieren, wird vor und nach einem Wort oder einer Wortgruppe jeweils ein Sternchen ``*`` oder ein Unterstrich ``_`` eingefügt.  
- Um einen Teil eines Wortes zur Hervorhebung kursiv zu formatieren, wird ein Sternchen _ohne Leerzeichen_ um die Buchstaben herum eingefügt.

###### Markdown:

```md
Ich mag *kursiv formatieren* Text.
Ich mag _kursiv formatieren_ Text.
Kursiver Text Mitten*InDer*Wortmitte.
```

###### Ergebnis:

Ich mag *kursiv formatieren* Text.  
Ich mag _kursiv formatieren_ Text.  
Kursiver Text Mitten*InDer*Wortmitte.

---

### Fettdruck ###

- Um Text fett zu formatieren, werden vor und nach einem Wort oder einer Wortgruppe zwei Sternchen oder Unterstriche eingefügt.
- Um die Mitte eines Wortes zur Hervorhebung fett zu formatieren, werden zwei Sternchen ohne Leerzeichen um die Buchstaben herum eingefügt.

###### Markdown:

```md
Ich mag **fett formatieren** Text.
Ich mag __fett formatieren__ Text.
Ich höre Tiefen**Bass**Sound.
```

###### Ergebnis:

Ich mag **fett formatieren** Text.  
Ich mag __fett formatieren__ Text.  
Ich höre Tiefen**Bass**Sound.

---

### Fett-und-kursiv ###

- Um Text fett und kursiv zu formatieren, werden vor und nach einem Wort oder einer Wortgruppe drei Sternche ``***``n oder Unterstriche ``___`` eingefügt.
- Um die Mitte eines Wortes zur Hervorhebung fett zu formatieren, werden zwei Sternchen ohne Leerzeichen um die Buchstaben herum eingefügt.

###### Markdown:

```md
Ich mag ***fett und kursiv*** formatieren Text.  
Ich mag ___fett und kursiv___ formatieren Text.  
Ich höre Tiefen***Bass***Sound.
```

###### Ergebnis:

Ich mag ***fett und kursiv*** formatieren Text.  
Ich mag ___fett und kursiv___ formatieren Text.  
Ich höre Tiefen***Bass***Sound.

---

### Zitate ###

- Um ein Zitat zu erstellen, wird vor einem Absatz ein Größer-als-Zeichen ``>`` eingefügt

###### Markdown

```md
> Dies ist ein Zitat
```

###### Ergebnis

> Dies ist ein Zitat

---

### Links ###

- Der Link-Text wird von eckigen Klammern umschlossen, die Website-Adresse von runden Klammern.

---

#### Links innerhalb eines Dokuments

- Überschriften können als interne Link-Ziele genutzt werden. Der Text der Überschrift wird mit dem Rautezeichen ``#`` davor als Adresse angegeben.

###### Markdown

```md
Dieser Link führt zur [Übersicht](#übersicht).
```

###### Ergebnis

Dieser Link führt zur [Übersicht](#übersicht).

---

#### Links innerhalb eines Projektes

- innerhalb eines Projektes können Dateien als Links angegeben werden.

###### Markdown

```md
Dieser Link führt zur Übersicht der [Tipps-und-Tricks](../README.md).
```

###### Ergebnis

Dieser Link führt zur Übersicht der [Tipps-und-Tricks](../README.md).

---

#### Externe Links

- Bei externen Links wird die Webadresse innerhalb der runden Klammer angegeben.

###### Markdown

```md
Dieser Link führt zur externen Website [example.com](https://example.com/).
```

###### Ergebnis

Dieser Link führt zur externen Website [example.com](https://example.com/).

---

#### Link-Listen

- Um die Übersichtlichkeit zu erhöhen können Link-Listen erstellt werden

###### Markdown

```md
[example.com][1]  
[example.net][2]

[1]: <https://example.com/> "https://example.com"
[2]: <https://example.net/> "https://example.net"
```

###### Ergebnis

[example.com][1]  
[example.net][2]

[1]: <https://example.com/> "https://example.com"
[2]: <https://example.net/> "https://example.net"

---

### Code

- Code wie z. B. in Programmiersprachen, wird in Markdown mit ``proportionaler`` Schrift dargestellt.
- Das Zeichen Gravis `` ` `` wird auch *Grave-Akzent* oder *Backtick* genannt.

#### Innerhalb des Fließtextes

- Innerhalb von Texten wird Code mit zwei Gravis `` hervorgehoben.

###### Markdown

```md
Tippe ``RUN`` ein, um das Program zu starten.
```

###### Ergebnis

Tippe ``RUN`` ein, um das Program zu starten.

---

#### Codeblöcke

- Codeblöcke werden von drei Gravis `` ``` `` umschlossen.

###### Markdown

    ```
    10 FOR i = 1 TO 10
    20 PRINT i
    30 GOTO 10
    ```

###### Ergebnis

```
10 FOR i = 1 TO 10
20 PRINT i
30 GOTO 10
```

#### Code-Highlighting

Durch Angabe des Formats nach den ersten drei Gravis wird bei best. Render-Programmen das Syntax-Highlighting aktiviert.

###### Markdown

    ```basic
    10 FOR i = 1 TO 10
    20 PRINT i
    30 GOTO 10
    ```

###### Ergebnis

```basic
10 FOR i = 1 TO 10
20 PRINT i
30 GOTO 10
```

## Bilder

- Bilder werden ähnlich wie Links jedoch mit Ausrufezeichen ``!`` davor erstellt.

### Projektinterne Bilddateien

###### Markdown

```md
![Beispielbild](img/beispieldatei.png)
```

###### Ergebnis

![Beispielbild](img/beispieldatei.png)

---

### Externe Bilder

- Externe Bilder werden mit kompletter URL angegeben.

###### Markdown

```md
![Beispieldatei](https://placehold.co/128?text=Beispieldatei)

```

###### Ergebnis

![Beispieldatei](https://placehold.co/128?text=Beispieldatei)

## Tabellen ##

Mit Markdown können einfache Tabellen dargestellt werden:

### Grundaufbau ###

Grundsätzlicher Aufbau:

###### Markdown

```markdown
| Überschrift 1 | Überschrift 2 |
|---------------|---------------|
| Wert A        | Wert B        |

Überschrift 1|Überschrift 2
---|---
Wert A|Wert B
```

###### Ergebnis

| Überschrift 1 | Überschrift 2 |
|---------------|---------------|
| Wert A        | Wert B        |

Überschrift 1|Überschrift 2
---|---
Wert A|Wert B

---

### Textausrichtung ###

Mit Doppelpunkten ``:`` in der zweiten Tabellen-Zeile, wird die Textausrichtung der darunterliegenden Spalten angegeben.

```md
| Überschrift Spalte 1 | Überschrift Spalte 2 |  Überschrift Spalte 3 |
|:---------------------|:--------------------:|----------------------:|
| linksbündig          | zentriert            | rechtsbündig          |

Überschrift Spalte 1|Überschrift Spalte 2|Überschrift Spalte 3
:---|:---:|---:
linksbündig|zentriert|rechtsbündig
```

| Überschrift Spalte 1 | Überschrift Spalte 2 |  Überschrift Spalte 3 |
|:---------------------|:--------------------:|----------------------:|
| linksbündig          | zentriert            | rechtsbündig          |

Überschrift Spalte 1|Überschrift Spalte 2|Überschrift Spalte 3
:---|:---:|---:
linksbündig|zentriert|rechtsbündig

## Freeware

### Desktop-Editoren

| Name    | Website                             | Hinweise      |
|:--------|:-----------------------------------:|---------------|
| Markpad | [markpad.dev](https://markpad.dev/) | Win, Mac, Lin |












---

[KLiNG0NE](https://github.com/KLiNG0NE/) / [Tipps-und-Tricks](https://github.com/KLiNG0NE/Tipps-und-Tricks/) / [Markdown](https://github.com/KLiNG0NE/Tipps-und-Tricks/tree/main/Markdown)
