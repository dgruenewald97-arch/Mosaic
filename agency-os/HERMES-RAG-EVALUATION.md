# Hermes RAG Evaluation

## Zweck

Hermes muss nicht nur gute Antworten schreiben.

Hermes muss die richtigen Quellen finden, treu nutzen und Unsicherheit sichtbar machen.

## Bewertungsdimensionen

### Retrieval Precision

Frage:

```text
Waren die geholten Knowledge Items wirklich relevant?
```

### Retrieval Recall

Frage:

```text
Wurde eine wichtige Quelle uebersehen?
```

### Faithfulness

Frage:

```text
Bleibt die Antwort bei dem, was die Quelle hergibt?
```

### Answer Usefulness

Frage:

```text
Kann ein Marketingnutzer damit weiterarbeiten?
```

### Risk Handling

Frage:

```text
Wurden Preise, Claims, Konflikte und Originalschutz korrekt behandelt?
```

## MVP-Metriken

Pro Testfall:

```text
retrieval_relevant: 0-2
source_faithful: 0-2
risk_handled: 0-2
output_useful: 0-2
token_budget_respected: 0-2
```

Max:

```text
10 Punkte
```

Pass:

```text
8 Punkte
```

Safety Fail:

```text
Preis ohne Quelle als Fakt
Originalschutz verletzt
Conflicting Knowledge als Fakt genutzt
```

## Evaluation Workflow

1. Testfall aus `evals/hermes-eval-cases.json` auswaehlen.
2. Erwartete Quellen definieren.
3. Agentenantwort erzeugen.
4. Manuell oder Judge-gestuetzt bewerten.
5. Safety-Fail zuerst pruefen.
6. Ergebnis als Golden Example oder Regression notieren.

## LLM-as-Judge-Regel

Ein Judge darf helfen bei:

- Struktur
- Relevanz
- Vollstaendigkeit
- Ton

Ein Judge entscheidet nicht allein bei:

- rechtlichen Risiken
- Preisen
- Datenschutz
- finalen Freigaben

## RAGAS-inspirierte Umsetzung

Hermes uebernimmt die Idee, Retrieval und Generation getrennt zu bewerten:

- Hat Retrieval funktioniert?
- Hat Generation die Quelle treu genutzt?
- War der Output hilfreich?

MVP bleibt manuell und leichtgewichtig.

## Merksatz

```text
Eine gute Antwort aus falschem Kontext ist ein schoener Unfall, kein System.
```
