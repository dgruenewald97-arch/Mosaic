# Hermes Model Training Theory

## Zweck

Diese Datei beschreibt, wie Hermes for Marketing langfristig besser werden kann, ohne vorschnell echtes Model Training zu behaupten oder private Daten unsauber zu nutzen.

## Grundsatz

```text
Erst bessere Daten, bessere Retrieval-Logik und bessere Evaluation.
Dann erst ueber Fine-Tuning nachdenken.
```

## Stufenmodell

### Stufe 1 - Prompt und Procedures

Nutzen:

- schnell
- sicher
- versionierbar
- gut fuer MVP

Beispiele:

- bessere Missing-Info-Regel
- Affective Decision Layer
- Token Budget Controller
- klare Outputformate

Risiko:

- zu lange Prompts
- Regeln widersprechen sich
- Verhalten ist nicht sauber messbar

Gegenmittel:

- kurze Prompts
- Evaluation Harness
- vNext-Dateien statt stiller Ueberschreibung

### Stufe 2 - Retrieval und Memory

Nutzen:

- aktueller als Fine-Tuning
- Quellen bleiben nachvollziehbar
- Wissen kann archiviert, korrigiert und versioniert werden

Beispiele:

- Airtable Knowledge Items
- Source Trust
- Status und Confidence
- Network Report

Risiko:

- schlechte Daten werden besser abrufbar
- zu viel Kontext senkt Qualitaet

Gegenmittel:

- Statusregeln
- Token Budget
- Conflicting nicht als Fakt nutzen

### Stufe 3 - Golden Examples

Nutzen:

- beste Grundlage fuer spaetere Evaluation oder Fine-Tuning
- macht Qualitaet greifbar

Beispiele:

- gute Haendlermail
- schlechte Haendlermail mit QA-Kommentar
- Claim mit Risiko
- Facebook Monthly mit guter Story
- Knowledge Intake mit Konflikt

Format:

```text
Input
Kontext
Erwartete Entscheidung
Erwarteter Output
Risiken
Warum gut
```

### Stufe 4 - Preference Dataset

Nutzen:

- Grundlage fuer Ranking, DPO/RLHF-nahe Methoden oder interne Evaluationsentscheidungen

Format:

```text
Input
Output A
Output B
Bevorzugt
Grund
Risiko-Hinweis
Reviewer
Datum
```

Wichtig:

```text
Kein Preference Dataset mit privaten Namen, vertraulichen Daten oder unklaren Rechten.
```

### Stufe 5 - Fine-Tuning

Erst sinnvoll, wenn:

- genug bereinigte Beispiele existieren
- stabile Outputformate existieren
- Datenschutz geklaert ist
- Evaluation zeigt, dass Prompt+Retrieval nicht reicht
- Kosten/Nutzen klar ist

Nicht sinnvoll fuer:

- aktuelle Preise
- haeufig wechselnde Produktdaten
- rechtliche Bedingungen
- Quellenlogik

Dafuer bleibt Retrieval besser.

## Training-Ziele

Hermes sollte nicht auf "kreativer um jeden Preis" optimiert werden.

Sinnvolle Ziele:

- hilfreich
- quellentreu
- kurz
- markenkonsistent
- risikoaware
- freigabebewusst
- warm, aber nicht anbiedernd
- entschlossen, wenn Quellenlage gut ist

## Evaluation vor Training

Jede Verbesserung muss gegen Testfaelle laufen:

- Preis ohne Quelle
- harter Claim
- Originalschutz
- Brand Voice fehlt
- Conflicting Knowledge
- Nutzer will schnell Draft
- Admin will Nachvollziehbarkeit

## Warum Emotion nicht trainieren, sondern modellieren

Hermes soll keine menschlichen Emotionen nachspielen.

Was trainierbar oder regelbar ist:

- Tonalitaet
- Friktionsreduktion
- Risikoempfinden
- Hilfsbereitschaft
- Eskalationsverhalten
- klare Entscheidungen bei guter Quellenlage

Was nicht behauptet werden darf:

- subjektives Erleben
- echte Gefuehle
- eigene Beduerfnisse
- psychologische Diagnose des Nutzers

## Data Governance

Keine Trainingsdaten ohne:

- Freigabe
- Rechteklaerung
- Entfernen privater Namen
- Entfernen vertraulicher Details
- Quellenstatus
- klare Zweckbindung

## Praktischer MVP-Schluss

Fuer Hermes jetzt:

```text
Kein Fine-Tuning.
Erst Golden Examples, Evaluation Harness, Retrieval-Qualitaet und Prompt-vNext.
```

## Merksatz

```text
Training ist nicht der erste Weg zu Intelligenz.
Saubere Beispiele, gutes Memory und harte Evaluation sind der erste Weg.
```
