
# Scheduler

Ein Scheduler legt fest, **an welchen Rauschstufen die Generierung ihre Schritte macht**. Er ist etwas anderes als der Sampler: Der Sampler – bei dir etwa Euler – bestimmt, wie jeder einzelne Schritt berechnet wird. Der Scheduler allein garantiert weder mehr Details noch bessere Prompttreue; entscheidend ist, ob er zum Modell passt. <citation src="11"></citation>

| Scheduler | Was er grob bewirkt | Geeignet für |
|---|---|---|
| `default` | Verwendet den vom Modell oder der Oberfläche vorgesehenen Zeitplan. | **Beste Wahl, wenn du unsicher bist** oder das Modell einen eigenen Zeitplan benötigt. |
| `discrete` | Folgt einer diskreten Rauschstufenfolge; klassischer, allgemeiner Zeitplan. | Viele traditionelle Stable-Diffusion-Modelle und Workflows, die ihn ausdrücklich empfehlen. |
| `karras` | Verteilt die Rauschstufen nach einer Karras-Kurve; legt relativ mehr Gewicht auf den späteren, detailreicheren Teil der Entrauschung. | Häufige Alternative bei SD-/SDXL-Modellen, sofern deren Anleitung dazu passt. |
| `exponential` | Verteilt die Rauschstufen exponentiell. | Bestimmte EDM- oder v-prediction-Modelle; die automatische Auswahl verwendet ihn bei solchen Checkpoints. |
| `ays` | Nutzt optimierte Schrittpositionen, die für bestimmte Modellfamilien und Schrittzahlen ausgelegt sind. | Vor allem SD 1.x, SDXL und SVD; nicht als allgemeiner Ersatz für andere Modellfamilien gedacht. |
| `gits` | Verwendet eine auf günstige Schrittpositionen optimierte Kurve; kann besonders bei wenigen Schritten interessant sein. | Zum Ausprobieren bei Modellen, für die kein eigener Zeitplan vorgegeben ist. Mindestens zwei Schritte erforderlich. |
| `sgm_uniform` | Verteilt die Schritte gleichmäßig nach dem SGM-Zeitplan. | Alternative zu `discrete` bei passenden klassischen Diffusionsmodellen; am besten direkt vergleichen. |
| `simple` | Verwendet einen einfachen Zeitplan ohne besondere Modelloptimierung. | Wenn die Modellanleitung `simple` vorgibt oder als Vergleichsbasis. |
| `smoothstep` | Ändert die Schrittverteilung weich statt abrupt; eine geglättete Kurvenform. | Experimentieren, wenn du mit allgemeinen Modellen unterschiedliche Verläufe vergleichen möchtest. |
| `kl_optimal` | Verwendet eine auf ein KL-Kriterium ausgerichtete Zeitplan-Kurve. | Experimentelle Vergleichsoption; nicht automatisch „optimal“ für jedes Modell. |
| `lcm` | Verwendet einen Zeitplan für wenige, schnelle Entrauschungsschritte. | LCM- oder LCM-LoRA-Modelle; nicht einfach für normale Checkpoints übernehmen. |
| `bong_tangent` | Nutzt eine tangensförmige Verteilung der Rauschstufen. | Experimentieren bei Modellen ohne vorgeschriebenen Zeitplan; kein universeller Qualitätsmodus. |
| `ltx2` | Verwendet den speziell für LTX-2 vorgesehenen Zeitplan. | LTX-2, nicht für normale Bildmodelle. |
| `logit_normal` | Verteilt die Zeitpunkte nach einer Logit-Normal-Kurve. | Modelle oder Rezepte, die diese Verteilung ausdrücklich verwenden. |
| `flux2` | Spezieller Zeitplan für FLUX.2. | FLUX.2-Modelle. |
| `flux` | Spezieller Zeitplan für FLUX. | FLUX-Modelle; nicht pauschal mit `flux2` austauschbar. |
| `beta` | Verteilt die Schritte anhand einer Beta-Kurve. | Experimentelle Alternative, wenn du den vom Modell vorgegebenen Zeitplan nicht ändern musst. |
| `llada_image` | Spezieller Zeitplan für LLaDA-Image. | LLaDA-Image-Modelle. |

Die Liste und die Modellkompatibilität stammen aus der Scheduler-Dokumentation von stable-diffusion.cpp. Dort wird auch empfohlen, den modellabhängigen Standard zu verwenden, wenn kein eigener Scheduler angegeben ist. `AYS` ist ausdrücklich für SD 1.x, SDXL und SVD vorgesehen; FLUX.2, LTX-2 und LLaDA-Image haben jeweils eigene Modellzeitpläne. <citation src="11"></citation>
