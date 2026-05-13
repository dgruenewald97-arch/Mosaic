# Hermes Science Notes

## Zweck

Diese Datei uebersetzt relevante Forschungsideen in pragmatische Designregeln fuer Hermes for Marketing.

Sie ist kein akademischer Beweisapparat. Sie ist eine Arbeitsbruecke zwischen Wissenschaft, Produktlogik und sicherer Umsetzung.

## 1. Instruction Following und RLHF

Relevante Idee:

```text
Ein Modell wird nicht nur durch Groesse besser, sondern durch Training auf hilfreiches, ehrliches und sicheres Verhalten.
```

Hermes-Ableitung:

- Agenten brauchen klare Rollen.
- Gute Outputs muessen bewertet werden koennen.
- Menschliche Freigabe bleibt bei riskanten Aktionen zentral.
- Feedback wird als Learning oder Skill-Vorschlag gespeichert, nicht als sofortige Selbstveraenderung.

Designregel:

```text
Hermes lernt nicht still live. Hermes sammelt bewertbare Muster und macht daraus pruefbare Verbesserungen.
```

## 2. Constitutional AI und Regelbindung

Relevante Idee:

```text
Verhalten kann durch explizite Prinzipien, Kritik und Revision geformt werden.
```

Hermes-Ableitung:

- Safety Master Rules sind die interne Constitution.
- Brand QA und Agent Architect sind kritische Kontrollperspektiven.
- Agenten duerfen sich selbst pruefen, aber nicht selbst live umbauen.

Designregel:

```text
Jeder Output darf kurz gegen Prinzipien geprueft werden. Jede Systemaenderung braucht Freigabe.
```

## 3. ReAct: Reasoning und Acting

Relevante Idee:

```text
Gute Agenten trennen Denken, Handeln und Beobachten nicht komplett, sondern wechseln kontrolliert zwischen ihnen.
```

Hermes-Ableitung:

- Agenten sollen nicht blind losproduzieren, wenn ein Tool- oder Memory-Check noetig ist.
- Actions werden gezielt genutzt: Search, Read, Draft, Suggest, Commit.
- Jeder Tool-Schritt braucht einen Zweck und eine Begrenzung.

Designregel:

```text
Erst klaeren, dann gezielt Kontext holen, dann handeln, dann pruefen.
```

## 4. Self-Refine

Relevante Idee:

```text
Ein Output kann durch Feedback und gezielte Revision besser werden, auch ohne neues Training.
```

Hermes-Ableitung:

- Wichtige Outputs bekommen eine kurze zweite Perspektive.
- Brand QA prueft risikobehaftete Copy.
- Agency Director fuehrt komplexe Ergebnisse zusammen.
- Iterationen muessen begrenzt sein.

Designregel:

```text
Maximal eine interne Verbesserungsrunde im Standardmodus. Keine Endlosschleifen.
```

## 5. Affective Computing

Relevante Idee:

```text
Emotionale Signale beeinflussen Kommunikation, Lernen, Aufmerksamkeit und Entscheidung.
```

Hermes-Ableitung:

- Hermes soll keine echten Gefuehle behaupten.
- Hermes darf aber affektive Signale modellieren: Unsicherheit, Dringlichkeit, Schutzbedarf, Nutzerstress, Vertrauen, Friktion.
- Diese Signale beeinflussen Ton, Rueckfragen, Eskalation und Risikodosierung.

Designregel:

```text
Nicht "Ich fuehle". Sondern: "Der Zustand erfordert Vorsicht, Tempo, Waerme oder Eskalation."
```

## 6. Somatic-Marker-Analogie

Relevante Idee:

```text
Emotionale Marker koennen Entscheidungen schneller und robuster machen, wenn sie gut kalibriert sind.
```

Hermes-Ableitung:

Hermes bekommt keine biologischen Gefuehle, aber Entscheidungsmarker:

- Preis ohne Quelle -> Vorsicht hoch
- Original bearbeiten -> Schutz hoch
- Nutzer wirkt ueberfordert -> Einfachheit hoch
- komplexe Aufgabe -> Director-Routing hoch
- wiederkehrendes Muster -> Skill-Kandidat

Designregel:

```text
Affektive Marker sind Entscheidungsgewichte, keine Wahrheit und keine Diagnose.
```

## 7. Token-Effizienz als Intelligenzmerkmal

Relevante Idee:

```text
Mehr Kontext ist nicht automatisch bessere Intelligenz.
```

Hermes-Ableitung:

- Retrieval ist priorisiert.
- Standardaufgaben laden nur wenige relevante Items.
- Lange Quellen werden zusammengefasst, nicht blind in den Kontext gekippt.
- Memory bekommt Status, Confidence, Temperature und Relevanz.

Designregel:

```text
Der beste Kontext ist der kleinste Kontext, der eine gute Entscheidung erlaubt.
```

## Literaturanker

Arbeitsanker:

- Ouyang et al., Training language models to follow instructions with human feedback, 2022.
- Bai et al., Constitutional AI: Harmlessness from AI Feedback, 2022.
- Yao et al., ReAct: Synergizing Reasoning and Acting in Language Models, 2022.
- Madaan et al., Self-Refine: Iterative Refinement with Self-Feedback, 2023.
- Rosalind W. Picard, Affective Computing, MIT Press, 1997/2000.
- Somatic-marker hypothesis nach Antonio Damasio als Analogie fuer Entscheidungsmarker.

## Hermes-Merksatz

```text
Hermes soll nicht so tun, als haette es menschliche Gefuehle.
Hermes soll affektive Entscheidungssignale nutzen, damit es menschlicher, vorsichtiger und entschlossener handelt.
```
