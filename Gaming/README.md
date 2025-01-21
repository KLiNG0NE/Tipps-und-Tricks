# KLiNG0NE / Tipps-und-Tricks / Gaming

* Grafikkarten-Einstellungen

---

## Grafikkarten-Einstellungen

### SSAO - Screen space ambient occlusion
Screen Space Ambient Occlusion (SSAO) ist eine Computergrafiktechnik zur effizienten Annäherung an den Effekt der Umgebungsverdeckung in Echtzeit. Sie wurde von Vladimir Kajalin während seiner Tätigkeit bei Crytek entwickelt und erstmals 2007 in dem ebenfalls von Crytek entwickelten Videospiel Crysis eingesetzt.

Im Vergleich zu anderen Lösungen für die Umgebungsokklusion hat SSAO die folgenden Vorteile:
* Unabhängig von der Komplexität der Szene.
* Keine Datenvorverarbeitung erforderlich, keine Ladezeit und keine Speicherzuweisung im Systemspeicher.
* Funktioniert mit dynamischen Szenen.
* Arbeitet auf die gleiche konsistente Weise für jedes Pixel auf dem Bildschirm.
* Keine CPU-Belastung - es kann vollständig auf der GPU ausgeführt werden.
* Kann leicht in jede moderne Grafikpipeline integriert werden.

SSAO hat auch die folgenden Nachteile:
* Eher lokal und in vielen Fällen ansichtsabhängig, da es von benachbarten Texeltiefen abhängt, die durch jede beliebige Geometrie erzeugt werden können.
* Es ist schwierig, das Rauschen korrekt zu glätten/zu verwischen, ohne Tiefenunterbrechungen wie Objektkanten zu beeinträchtigen (die Okklusion sollte nicht auf Objekte „übergreifen“).

### VSYNC - 
Vertikale Synchronisation oder vertikale Synchronisierung, kurz VSync, ist ein Begriff aus der Computertechnik. Eine vertikale Synchronisierung verhindert bei Grafikkarten eine Aktualisierung der Bilddaten, während der Bildschirm das Bild aufbaut.
