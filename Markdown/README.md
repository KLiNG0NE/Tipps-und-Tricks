# Markdown #

*Markdown* ist eine leichte Auszeichnungssprache (Markup-Sprache), die 2004 von John Gruber (zusammen mit Aaron Swartz) entwickelt wurde. Sie erlaubt es, Texte mit einer sehr einfachen, gut lesbaren Syntax zu formatieren – direkt im Klartext, ohne spezielle Software.

Die Grundidee  
Markdown-Dateien sind normale Textdateien (``.md``), die auch ohne Konvertierung gut lesbar bleiben. Ein Programm (Parser) kann sie später in HTML, PDF oder andere Formate umwandeln.

## Übersicht

- [Text](#text)
  - [Überschriften](#überschriften)
  - [Kursiv-Schrift](#kursiv-schrift)
  - [Fettdruck](#fettdruck)
  - [Zitate](#zitate)
  - [Links](#links)
- [Tabellen](#tabellen)
  - [Grundaufbau](#grundaufbau)
  - [Textausrichtung](#textausrichtung)

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

Der Link-Text wird von eckigen Klammern umschlossen, die Website-Adresse von runden Klammern.

###### Markdown

```
Dieser Link führt zur [Übersicht](#übersicht).
```

###### Ergebnis 

Dieser Link führt zur [Übersicht](#übersicht).

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

















