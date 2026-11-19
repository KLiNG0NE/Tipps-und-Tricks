
# Text-zu-Sprache (TTS)

## Welche Modelle unterstützen deutsche Sprache?

**Ja, eine ganze Reihe der KoboldCpp-TTS-Modelle sprechen Deutsch.** KoboldCpp (Stand v1.124.2, Nov. 2026) hat seit der Integration eines Subset von [audio.cpp](https://github.com/LostRuins/koboldcpp/wiki) deutlich mehr TTS-Modelle im Angebot. Die deutschfähigen und die rein englischen Modelle im Überblick:

### Deutsche Sprache unterstützt

| Modell | Deutsch? | Details | Voice-Cloning |
|---|---|---|---|
| **Qwen3-TTS** (Base / CustomVoice / VoiceDesign, 0.6B & 1.7B) | ✅ | 10 Sprachen inkl. `de` – laut Release Notes von KoboldCpp „Recommended!" | ✅ |
| **VoxCPM2** (2B) | ✅ | 30 Sprachen inkl. Deutsch, Sprache wird automatisch am Text erkannt, 48 kHz | ✅ |
| **Fish Audio S2 Pro** | ✅ | 80+ Sprachen, Deutsch ist Tier-2-Sprache, Inline-Emotionstags | ✅ |
| **Chatterbox Multilingual V3** | ✅ | 23 Sprachen inkl. Deutsch (Sprachparameter) | ✅ |
| **CosyVoice 3** | ✅ | 9 Sprachen inkl. Deutsch + 18 chinesische Dialekte | ✅ |
| **Supertonic 3** (99M) | ✅ | 31 Sprachen inkl. Deutsch, 263 Stimmen, läuft auf CPU | ❌ (fixe Stimmen) |
| **OmniVoice** | ✅ | 600+ Sprachen – Deutsch inklusive | ✅ |
| **Kitten TTS 2** | ✅ | 20 Sprachen inkl. Deutsch (die Mini-0.8-Version ist rein englisch!) | ✅ |
| **Ming 3.0 TTS** (0.5B) | ✅ | 7 Sprachen inkl. Deutsch | ✅ |
| **OuteTTS 0.3** (500M/1B, klassischer Engine-Pfad) | ✅ | 6 Sprachen: en, ja, ko, zh, fr, **de** | ✅ |

Dazu zwei Modelle, die die zugrundeliegende Engine zwar unterstützt, für die KoboldCpp aber keine fertigen GGUFs im [koboldcpp/tts-Repo](https://huggingface.co/koboldcpp/tts) mitliefert (Selbstkonvertierung möglich): **LFM3-Audio** (19 Sprachen inkl. `de`) und **ZONOS3 Mini** (inkl. deutscher Text-Normalisierung).

### Kein Deutsch (reine English-/Zh-Modelle)

- **Kokoro** – Stimmen nur für en-US, en-GB, es, fr, hi, it, pt-BR, ja, zh (deutsch nur via Umweg über selbst gelieferte Phoneme, z. B. mit espeak-ng)
- **Parler-TTS Mini** – die mitgelieferte GGUF ist `parler-tts-mini-v1` (rein englisch; erst die Multilingual-v1.1-Variante kann Deutsch, die KoboldCpp aber nicht ausliefert)
- **Dia** – Englisch
- **Chatterbox Turbo** – Englisch (nur die Multilingual-Variante oben kann Deutsch)
- **Breeze-TTS 2** – das Open-Weight-Modell ist bilingual en/zh (die 51-Sprachen-Variante ist ein Breeze-Blue-API-Produkt, nicht die offenen Gewichte)
- **Pocket TTS** – KoboldCpp liefert nur die englischen Gewichte
- **Soprano 1.1 (80M)**, **NeuTTS 2E**, **Maya1** – Englisch
- **VibeVoice 1.5B** – nur en/zh trainiert, Deutsch offiziell nicht unterstützt
- **OuteTTS 0.2** – Englisch

### Praktische Hinweise für Deutsch

1. **Empfehlung:** Qwen3-TTS Base (offiziell „Recommended", explizites Sprach-Flag `de` inkl. Sprachparameter auf Engine-Ebene) oder VoxCPM2 (erkennt die Sprache automatisch, fühlt sich bei deutschem Text direkt heimisch). Für viele vorgefertigte Stimmen: Supertonic 3.
2. **Sprachsteuerung:** VoxCPM2, CosyVoice 3, Fish S2 Pro, Kitten TTS 2, OmniVoice, Supertonic 3 und OuteTTS 0.3 sprechen automatisch die Sprache des Eingabetexts – einfach deutschen Text geben. Bei Qwen3-TTS und Chatterbox wird die Sprache über einen Parameter gesetzt (in der llama.cpp-Doku `--tts-lang de`, das KoboldCpp als Engine nutzt).
3. **Voice Cloning auf Deutsch:** Modelle mit Cloning-Support nehmen einen deutschen Referenzclip (je nach Modell max. 30–60 s); für manche braucht man zusätzlich das Referenz-Transkript – das Transcribe-Tab im MusicUI (Whisper) hilft dabei.

Quellen: [KoboldCpp Release Notes 1.124.2](https://github.com/LostRuins/koboldcpp/releases) (Liste der portierten TTS-Modelle), [koboldcpp/tts auf Hugging Face](https://huggingface.co/koboldcpp/tts), [TTS-Dokumentation der Engine](https://github.com/LostRuins/koboldcpp/blob/master/docs/multimodal/tts.md), [QwenLM/Qwen3-TTS](https://github.com/QwenLM/Qwen3-TTS) (10 Sprachen), [OuteAI/OuteTTS-0.3-1B](https://huggingface.co/OuteAI/OuteTTS-0.3-1B) (de+fr neu), [ResembleAI/chatterbox](https://huggingface.co/ResembleAI/chatterbox) (23 Sprachen inkl. Deutsch), [QwenAudio/CosyVoice](https://github.com/QwenAudio/CosyVoice) (9 Sprachen inkl. Deutsch), [fishaudio/s2-pro](https://huggingface.co/fishaudio/s2-pro) (Tier 2: de), [Supertone/supertonic-3](https://huggingface.co/Supertone/supertonic-3) (31 Sprachen), [k2-fsa/OmniVoice](https://huggingface.co/k2-fsa/OmniVoice) (600+ Sprachen), [openbmb/VoxCPM2](https://huggingface.co/openbmb/VoxCPM2) (30 Sprachen inkl. Deutsch), [KittenML/KittenTTS](https://github.com/KittenML/KittenTTS) und [inclusionAI/Ming-3.0-tts](https://github.com/inclusionAI/Ming-3.0-tts) (beide inkl. Deutsch), [BreezeBlue/Breeze-TTS-2](https://huggingface.co/BreezeBlue/Breeze-TTS-2) (bilingual en/zh), [microsoft/VibeVoice-1.5B](https://huggingface.co/microsoft/VibeVoice-1.5B) (nur en/zh), [neuphonic/neutts-2e](https://huggingface.co/neuphonic/neutts-2e) (English-only).
