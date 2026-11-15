# Sampler

## GPT-6 Luna

Die Sampler-Abkürzung bezeichnet vor allem **wie** das Modell den Rauschabbau Schritt für Schritt berechnet – nicht einen festen Bildstil. Der sichtbare Unterschied hängt stark von Modell, Schrittzahl, Rauschplan (*Scheduler*), CFG und Implementierung ab. Besonders bei den weniger standardisierten Namen können verschiedene Programme etwas Unterschiedliches darunter verstehen. <citation src="13,18,41"></citation>

| Sampler | Name bzw. Bedeutung | Typische Wirkung |
|---|---|---|
| **Euler** | Euler-Verfahren, ein einfacher ODE-Löser erster Ordnung | Schnell und gut nachvollziehbar; liefert oft schon mit relativ wenigen Schritten ein brauchbares Ergebnis. Gleicher Seed und gleiche Einstellungen ergeben normalerweise dasselbe Bild. |
| **Euler A** | Euler *ancestral* („ahnenbasiert“); „A“ steht für *ancestral* | Fügt während des Entrauschens Zufallsrauschen hinzu. Das kann Bilder variabler und teils lebendiger wirken lassen, macht Ergebnisse aber weniger reproduzierbar. |
| **Heun** | Heun-Verfahren, ein Löser zweiter Ordnung mit Vorhersage und Korrektur | Prüft den Verlauf genauer als Euler. Kann bei gleicher Schrittzahl sauberere oder stabilere Ergebnisse liefern, benötigt aber typischerweise mehr Rechenaufwand pro Schritt. |
| **DPM2** | DPM-Solver zweiter Ordnung | Präziserer, meist rechenintensiverer Schritt als Euler; kann bei passender Schrittzahl feinere Ergebnisse liefern. |
| **LCM** | *Latent Consistency Model* | Für sehr wenige Schritte und schnelle Bilderzeugung gedacht. Funktioniert am besten mit einem LCM-Modell oder einer dafür trainierten LCM-LoRA; mit einem gewöhnlichen Modell ist es nicht automatisch die passende Wahl. <citation src="7,8"></citation> |
| **DPM++ 2M** | DPM-Solver++ „2-step multistep“: nutzt Informationen aus vorherigen Schritten | Häufig ein ausgewogener, effizienter Sampler. Kann relativ schnell zu stabilen Ergebnissen kommen, weil er frühere Modellvorhersagen wiederverwendet. |
| **DDIM** | *Denoising Diffusion Implicit Models* | Klassischer, meist deterministischer Sampler. Gut für reproduzierbare Ergebnisse; bei sehr wenigen Schritten kann er gegenüber neueren Verfahren mehr an Bildqualität verlieren. |
| **Res Multistep** | Multistep-Verfahren aus der RES-Familie; der genaue Ausbau von „RES“ hängt von der Implementierung ab | Verwendet frühere Schritte zur Berechnung des nächsten. Zielt auf effizientes, gleichmäßiges Entrauschen; Ergebnis und Stabilität hängen besonders von Implementierung und Rauschplan ab. |
| **Res 2s** | RES-Verfahren mit zwei Stufen (*2-stage single-step*) | Berechnet innerhalb eines Schritts eine zusätzliche Zwischenstufe. Das kann die Annäherung verfeinern, kostet aber mehr Rechenarbeit als ein einstufiger Sampler. |
| **ipndm_v** | *Improved Pseudo Numerical Methods for Diffusion Models*, variable-step-Version | Passt die Mehrschrittberechnung an ungleichmäßige Abstände zwischen den Rauschstufen an. Das kann bei solchen Zeitplänen stimmiger arbeiten als die feste iPNDM-Variante. |
| **default** | Kein eindeutiger Algorithmusname: meist „Standard“ oder die vom Programm beziehungsweise Modell gewählte Vorgabe | Kann je nach Oberfläche oder Modell etwas anderes bedeuten – etwa einen automatisch ausgewählten Sampler. Es ist daher nicht zuverlässig mit einem bestimmten Verfahren gleichzusetzen. |
| **er_sde** | ER-SDE: Sampler aus der Familie stochastischer Exponentialintegratoren; die genaue Auflösung des Kürzels ist implementierungsabhängig | Verbindet eine Exponentialintegrator-Berechnung mit stochastischem Rauschen. Kann Variation fördern; ist aber kein garantierter Qualitätsgewinn und reagiert auf Einstellungen und Modell. |
| **dpm++2m_sde_bt** | DPM++ 2M SDE mit **Brownian Tree** („BT“) für die Rauschfolge | Stochastische DPM++-2M-Variante. Das zusätzliche Rauschen kann unterschiedliche Bilddetails begünstigen; Brownian-Tree-Rauschen sorgt für eine konsistente Rauschfolge innerhalb dieses Verfahrens. |
| **ipndm** | *Improved Pseudo Numerical Methods for Diffusion Models* | Mehrschrittverfahren, das frühere Vorhersagen nutzt. Die klassische Variante ist auf gleichmäßige Schrittweiten ausgelegt; bei ungleichmäßigen Rauschabständen kann `ipndm_v` geeigneter sein. <citation src="40,41"></citation> |
| **euler_ge** | Euler mit *Gradient Estimation* (Gradientenschätzung); Zusatzvariante, nicht überall standardisiert | Verändert die Euler-Berechnung um eine Gradientenschätzung. Wie genau das Bild beeinflusst wird, hängt von der konkreten Implementierung und deren Parametern ab; es ist keine allgemein garantierte „schärfere“ Euler-Version. |
| **dpm++2mv2** | DPM++ 2M „Version 2“; „v2“ bezeichnet eine implementierungsspezifische Variante | Gehört zur DPM++-2M-Familie, aber das Suffix hat keine überall einheitliche Definition. Unterschiede zu DPM++ 2M betreffen die konkrete Berechnung; wie stark sie sichtbar sind, hängt vom Programm ab. |
| **euler_a_cfg_pp** | Euler ancestral mit **CFG++** (*Classifier-Free Guidance++*) | Kombiniert zufälliges, ancestrales Sampling mit einer veränderten Behandlung der Textführung. Kann die Wirkung hoher CFG-Werte anders ausbalancieren; bleibt durch das „A“ variabel. |
| **dpm++2m_sde** | DPM++ 2M mit SDE (*stochastic differential equation*) | Stochastische Variante von DPM++ 2M. Erzeugt eher unterschiedliche Verläufe als die deterministische 2M-Variante; meist weniger gut reproduzierbar. |
| **dpm++2s_a** | DPM++ 2S ancestral: zweistufige Einzel-Schritt-Variante mit zusätzlichem Rauschen | Zwei Berechnungsstufen pro Schritt plus Zufallseinfluss. Kann mehr Variation und andere Details hervorbringen, benötigt aber mehr Rechenarbeit als eine einfache Euler-Variante. |
| **tcd** | *Trajectory Consistency Distillation* | Auf wenige Sampling-Schritte ausgelegte Methode mit gezielter stochastischer Komponente. Besonders sinnvoll mit einem TCD-kompatiblen Modell oder einer passenden TCD-LoRA; die Methode wurde entwickelt, um wenige Schritte zu ermöglichen und Details zu erhalten. <citation src="1,4"></citation> |

**Faustregeln:** Für einen schnellen, einfachen Vergleich eignen sich oft Euler und DPM++ 2M. Wenn du bewusst mehr Zufallsvariation möchtest, probiere Euler A oder eine SDE-Variante. LCM und TCD solltest du vor allem dann testen, wenn dein Modell oder deine LoRA dafür ausgelegt ist. RES-, `*_v2`- und `*_ge`-Varianten sind stärker von der jeweiligen Softwareimplementierung abhängig. Die RES-Namen gehören zudem zu einer eigenen Samplerfamilie und sind nicht bloß andere Bezeichnungen für DPM++. <citation src="18,35,36"></citation>


## Gemini (automatic)

Sampler (deutsch: Abtaster oder Lösungsalgorithmen) sind das mathematische Herzstück von Bildgenerierungsmodellen (wie Stable Diffusion, Flux oder LTX). Sie steuern, wie das zufällige Rauschen Schritt für Schritt in ein klares Bild umgerechnet wird.

Da deine Liste eine Vielzahl an klassischen, modernen und spezialisierten Algorithmen enthält, teile ich sie am besten in logische Gruppen auf, damit du den Überblick behältst:

---

### 1. Die Klassiker & Grundlagen

* **Euler**
* *Name:* Euler-Verfahren (benannt nach Leonhard Euler).
* *Auswirkung:* Der einfachste und direkteste mathematische Solver. Er arbeitet sehr schnell, ist völlig deterministisch (gleicher Seed = gleiches Bild) und erzeugt saubere, solide Strukturen. Manchmal wirkt er im Vergleich etwas starr oder einfach.


* **Euler A (Euler Ancestral)**
* *Name:* Euler Ancestral.
* *Auswirkung:* Fügt in jedem Rechenschritt zufälliges Rauschen (Ancestral Noise) hinzu. Das Bild konvergiert nie ganz – das bedeutet, wenn du die Anzahl der Schritte erhöhst, verändert sich das Bild leicht weiter. Erzeugt organische, kreative und detailreiche Texturen, kann aber bei zu vielen Schritten unruhig werden.


* **Heun**
* *Name:* Heun-Verfahren (modifiziertes Euler-Verfahren 2. Ordnung).
* *Auswirkung:* Korrigiert den Pfad des Euler-Solvers durch einen zusätzlichen Zwischenschritt. Benötigt zwar doppelt so viele Rechenschritte pro Durchgang, belohnt dies aber mit weicheren, harmonischeren Übergängen und präziseren Details.


* **DDIM**
* *Name:* Denoising Diffusion Implicit Models.
* *Auswirkung:* Ein deterministischer Sampler, der sich hervorragend für Interpolationen im „Latent Space“ eignet. Er liefert saubere, stabile und konsistente Ergebnisse, oft etwas schärfer als der reine Euler-Sampler.


* **default**
* *Name:* Standard-Sampler.
* *Auswirkung:* Verwendet einfach den vom Ersteller des Modells oder der Benutzeroberfläche (UI) hinterlegten Standardwert (bei SD 1.5 oft Euler a, bei neueren Modellen oft DPM++ 2M).



---

### 2. Die DPM-Familie (Diffusion Probabilistic Models)

Diese Gruppe gilt traditionell als der Goldstandard für detailreiche und fotorealistische Ergebnisse.

* **DPM2**
* *Name:* DPM-Solver (2nd Order).
* *Auswirkung:* Ein Algorithmus 2. Ordnung, der feine Bildstrukturen sehr gut ausarbeitet, bei niedrigen Schrittzahlen jedoch manchmal zu Artefakten neigt.


* **DPM++ 2M**
* *Name:* DPM-Solver++ 2M (2nd Order Multistep).
* *Auswirkung:* Einer der beliebtesten und ausgewogensten Sampler überhaupt. Er ist extrem effizient, benötigt relativ wenige Schritte und liefert gestochen scharfe, kontrastreiche und sehr kohärente Ergebnisse.


* **dpm++2m_sde**
* *Name:* DPM++ 2M SDE (Stochastic Differential Equation).
* *Auswirkung:* Kombiniert die Effizienz des 2M-Verfahrens mit stochastischem Rauschen. Erzeugt dadurch extrem reiche, organische Texturen (z. B. für Haut, Haare, Natur), verhält sich aber nicht mehr rein deterministisch.


* **dpm++2m_sde_bt**
* *Name:* DPM++ 2M SDE mit Brownian Tree (bt).
* *Auswirkung:* Eine technische Optimierung des SDE-Verfahrens, bei der das Rauschen über einen echten „Brownschen Baum“ gesteuert wird. Sorgt für mathematisch sauberes, statistisch stabiles Rauschen bei gleichzeitig organischem Look.


* **dpm++2mv2**
* *Name:* DPM++ 2M Variant 2.
* *Auswirkung:* Eine optimierte Weiterentwicklung des klassischen 2M-Samplers, die auf eine noch bessere Konvergenz und verbesserte Kantenschärfe abzielt.


* **dpm++2s_a**
* *Name:* DPM++ 2S Ancestral.
* *Auswirkung:* Ein 2-stufiger Ancestral-Sampler. Bringt extrem viele kreative Zufälle und feine Nuancen ins Bild, neigt jedoch bei hohen Schrittzahlen zu starkem Rauschen oder leichten Verzerrungen.


* **ipndm / ipndm_v**
* *Name:* Improved Polynomial Numerical Diffusion Method (inkl. Variant v).
* *Auswirkung:* Nutzt polynomiale Näherungsverfahren. Konzentriert sich stark auf numerische Stabilität, was zu sehr sauberen geometrischen Verläufen und fließenden Übergängen führt.



---

### 3. High-Speed- & Distillations-Sampler

* **LCM**
* *Name:* Latent Consistency Model.
* *Auswirkung:* Speziell für extrem beschleunigte Modelle entwickelt. Erlaubt atemberaubend schnelle Generierungen in nur 4 bis 8 Schritten. Die Bilder wirken oft sehr glatt und harmonisch, neigen aber manchmal zu einem leicht weichen oder matten Look ("Plastik-Look"), da feine Hochfrequenz-Details übersprungen werden.


* **tcd**
* *Name:* Trajectory Consistency Distillation.
* *Auswirkung:* Ein moderner Nachfolger der Konsistenz-Modelle. Ähnlich schnell wie LCM, liefert jedoch oft schärfere und detailreichere Ergebnisse bei niedrigen Schrittzahlen.



---

### 4. Moderne & Spezialisierte Algorithmen (SDE- & CFG-Varianten)

Diese Sampler tauchen vor allem in modernen Workflows (wie ComfyUI oder spezialisierten Video-/Flow-Modellen) auf:

* **er_sde**
* *Name:* Exponential Rosenbrock SDE.
* *Auswirkung:* Ein sehr stabiler und moderner SDE-Solver. Er gilt als hervorragender Mittelweg zwischen der kreativen Textur von Ancestral-Samplern und der Stabilität deterministischer Algorithmen.


* **euler_ge**
* *Name:* Guided Euler / Euler Generalized.
* *Auswirkung:* Ein für moderne Flow-Matching-Architekturen (wie Flux oder SD3) optimierter Euler-Pfad, der die Modellvorgaben extrem exakt einhält.


* **euler_a_cfg_pp / euler_cfg_pp**
* *Name:* Euler Ancestral / Euler mit CFG++ (Classifier-Free Guidance Post-Processing).
* *Auswirkung:* Modifizierte Varianten, die eine angepasste CFG-Formel nutzen. Sie verhindern das typische "Überbrennen" (übersättigte Kontraste bei hohem CFG-Wert), verbessern die Prompt-Treue und liefern harmonischere, natürlichere Kontraste.


* **Res Multistep / Res 2s**
* *Name:* Restart / Resolution-Dependent Samplers.
* *Auswirkung:* Spezielle Sampler (oft in Up-scaling- oder Video-Pipelines eingesetzt), die extrem hohe Mikro-Kontraste und knackige Schärfe erzeugen. Vorsicht: Bei ungeeigneten Modellen neigen sie schnell zu einem "überkochten" oder überschärften Look.



---
