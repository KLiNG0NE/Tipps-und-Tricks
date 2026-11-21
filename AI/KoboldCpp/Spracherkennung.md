
# Spracherkennung

## Whisper

- Deep-Learning-Akustikmodell
- Encoder-Decoder-Transformer-Architektur

### Whisper-Small-Q5_1

|                  |                                                                                                         |             |
|------------------|---------------------------------------------------------------------------------------------------------|-------------|
| Entwickler       | OpenAI, Inc                                                                                             | USA         |
| Veröffentlichung | 2022-09-21                                                                                              |             |
| Lizenz           | [MIT License](https://github.com/openai/whisper/blob/main/LICENSE)                                      |             |
| GitHub           | [github.com/openai](https://github.com/openai/whisper "https://github.com")                             |             |
| Model            | [huggingface.co/koboldcpp](https://huggingface.co/koboldcpp/whisper/tree/main "https://huggingface.co") | 32,2–190 MB |

> Modelle mit .en im Namen sind englisch-only und daher für deutsche Sprache nicht geeignet.

---

## Qwen3-ASR

Die Qwen3-ASR-Familie umfasst zwei leistungsstarke All-in-One-Spracherkennungsmodelle sowie ein neuartiges, nicht-autoregressives Modell zur erzwungenen Sprachausrichtung. **Qwen3-ASR-1.7B** und **Qwen3-ASR-0.6B** sind ASR-Modelle (Automatic Speech Recognition; deu.: Automatische Spracherkennung), die die Sprachidentifizierung und Spracherkennung für 52 Sprachen und Akzente unterstützen. Beide nutzen umfangreiche Sprachtrainingsdaten und die ausgeprägte Fähigkeit ihres Basismodells Qwen3-Omni, Audiodaten zu verstehen. Neben den Open-Source-Benchmarks führen wir umfassende interne Bewertungen durch, da sich ASR-Modelle bei den Ergebnissen der Open-Source-Benchmarks zwar nur geringfügig unterscheiden können, in realen Szenarien jedoch erhebliche Qualitätsunterschiede aufweisen. Die Experimente zeigen, dass die 1,7B-Version unter den Open-Source-ASR-Modellen eine Leistung auf dem neuesten Stand der Technik erzielt und mit den stärksten proprietären kommerziellen APIs konkurrieren kann, während die 0,6B-Version das beste Verhältnis zwischen Genauigkeit und Effizienz bietet. Qwen3-ASR-0.6B erreicht eine durchschnittliche Zeit bis zum ersten Token von nur 92 ms und transkribiert 2.000 Sekunden Sprache in 1 Sekunde im asynchronen Online-Modus bei einer Parallelität von 128. ***Qwen3-ForcedAligner-0.6B*** ist ein auf einem LLM basierender NAR-Zeitstempel-Prädiktor, der Text-Sprache-Paare in 11 Sprachen abgleichen kann. Experimente zur Zeitstempelgenauigkeit zeigen, dass das vorgeschlagene Modell die drei leistungsstärksten Force-Alignment-Modelle übertrifft und hinsichtlich Effizienz und Vielseitigkeit weitere Vorteile bietet. Um die Forschung der Community im Bereich ASR und Audio-Verständnis weiter zu beschleunigen, stellen wir die Gewichte der drei Modelle als Open Source unter der Apache-2.0-Lizenz zur Verfügung, um ein leistungsstarkes und benutzerfreundliches Framework für Inferenz und Feinabstimmung bereitzustellen.

*Quelle: Übersetzung [qwen.ai](https://qwen.ai/blog?id=qwen3asr "https://qwen.ai")*

### Qwen3-ASR-GGUF

| Entwickler | Qwen                | Alibaba Cloud                                                                                             | China        |
|------------|---------------------|-----------------------------------------------------------------------------------------------------------|--------------|
| Website    | [qwen.ai](https://qwen.ai/blog?id=qwen3asr "https://qwen.ai")  |                                                                |              |
| Model      | Qwen3-ASR-0.6B-GGUF | [huggingface.co/audio-cpp](https://huggingface.co/audio-cpp/audio.cpp-gguf/tree/main/Qwen3-ASR-0.6B-GGUF) | 1,15–1,88 GB |
| Model      | Qwen3-ASR-1.7B-GGUF | [huggingface.co/audio-cpp](https://huggingface.co/audio-cpp/audio.cpp-gguf/tree/main/Qwen3-ASR-1.7B-GGUF) | 2,47–4,09 GB |

- Automatic Speech Recognition (ASR)

### Unterstützte Sprachen

Chinesisch (zh), Englisch (en), Kantonesisch (yue), Arabisch (ar), Deutsch (de), Französisch (fr), Spanisch (es), Portugiesisch (pt), Indonesisch (id), Italienisch (it), Koreanisch (ko), Russisch (ru), Thailändisch (th), Vietnamesisch (vi), Japanisch (ja), Türkisch (tr), Hindi (hi), Malaiisch (ms), Niederländisch (nl), Schwedisch (sv), Dänisch (da), Finnisch (fi), Polnisch (pl), Tschechisch (cs), Philippinisch (fil), Persisch (fa), Griechisch (el), Ungarisch (hu), Mazedonisch (mk), Rumänisch (ro)

### Unterstützte Dialekte

Anhui, Dongbei, Fujian, Gansu, Guizhou, Hebei, Henan, Hubei, Hunan, Jiangxi, Ningxia, Shandong, Shaanxi, Shanxi, Sichuan, Tianjin, Yunnan, Zhejiang, Kantonesisch (Hongkong-Dialekt), Kantonesisch (Guangdong-Dialekt), Wu-Sprache, Minnan-Sprache.

### Inference Mode

Offline / Streaming

### Audio Types

Speech, Singing Voice, Songs with BGM














