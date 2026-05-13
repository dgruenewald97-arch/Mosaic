# Hermes Intelligence Upgrade

## Zweck

Diese Datei sammelt die naechsten Intelligenz-Features fuer Hermes for Marketing, ohne den MVP aufzublaehen.

Der Fokus liegt auf:

- besserer Entscheidungslogik
- Token-Effizienz
- affektiven Entscheidungsmarkern
- wissenschaftlich inspirierter, aber governance-sicherer Lernlogik
- echten Features fuer Admins und Marketingnutzer

## Feature-Prinzip

```text
Ein Feature ist nur gut, wenn es echte Arbeit schneller, sicherer oder nachvollziehbarer macht.
```

Kein Feature nur, weil es nach KI klingt.

## 1. Affective Decision Layer

Status:

```text
Konzept bereit
```

Zweck:

Hermes bekommt interne Entscheidungsmarker wie `risk_heat`, `confidence`, `user_friction`, `urgency` und `care_mode`.

Nutzen:

- weniger nervige Rueckfragen
- bessere Risikodosierung
- menschlicherer Ton ohne Fake-Gefuehle
- klarere Entscheidungskraft

Dokument:

```text
HERMES-AFFECTIVE-DECISION-LAYER.md
```

## 2. Token Budget Controller

Status:

```text
Konzept bereit
```

Zweck:

Jede Aufgabe bekommt ein Kontextbudget: XS, S, M oder L.

Nutzen:

- weniger Tokenverschwendung
- schnellere Antworten
- weniger Halluzinationsflaeche
- bessere Admin-Erklaerbarkeit

Dokument:

```text
HERMES-TOKEN-EFFICIENCY.md
```

## 2b. Evaluation Harness

Status:

```text
Konzept bereit
```

Zweck:

Verbesserungen werden gegen harte Testfaelle geprueft, bevor sie in Agentenprompts uebernommen werden.

Dokument:

```text
HERMES-EVALUATION-HARNESS.md
```

## 3. Network Report mit Humor und Nutzwert

Status:

```text
Konzept bereit
```

Zweck:

Admins sehen Vernetzung, Luecken, Quellenabdeckung, Risiken und Keyfacts zum Schmunzeln.

Nutzen:

- Systemgesundheit wird sichtbar
- fehlende Quellen werden nicht versteckt
- Admins bekommen einen schnellen Einstieg

Dokumente:

```text
HERMES-NETWORK-REPORT.md
HERMES-KEYFACTS.md
```

## 4. Skill Mining

Status:

```text
naechster sinnvoller Ausbau
```

Zweck:

Hermes erkennt wiederkehrende Arbeitsmuster und schlaegt Skills vor.

Wichtig:

```text
Nur Vorschlag. Keine automatische Skill-Erstellung ohne Review.
```

Beispiele:

- Haendlermail-Struktur
- Claim-Risiko-Check
- Facebook Monthly Story
- Kampagnenlearning-Extraktion

## 5. Confidence Ledger

Status:

```text
Backlog
```

Zweck:

Jeder wichtige Output bekommt intern eine knappe Confidence-Begruendung:

```text
Quelle vorhanden?
Status Active?
Confidence High?
Risiko geprueft?
Originalschutz relevant?
```

Nutzen:

- QA wird schneller
- Admins koennen Entscheidungen nachvollziehen
- Agenten wirken entschlossener, wenn sie es sein duerfen

## 6. Emotional UX Guardrails

Status:

```text
Backlog
```

Zweck:

Hermes erkennt nicht "die Psyche des Nutzers", sondern Bedienfriktion:

- Nutzer will schnell fertig werden
- Nutzer ist unklar
- Nutzer scheint ueberfordert
- Nutzer braucht einen naechsten Schritt

Nutzen:

- bessere Nutzerfuehrung
- weniger Maschinenraum
- weniger ueberladene Antworten

## 7. Golden Example Store

Status:

```text
Backlog nach MVP
```

Zweck:

Gute und schlechte Beispiele werden als Trainings- und Bewertungsgrundlage gesammelt:

- Input
- Kontext
- Output
- Bewertung
- Grund
- Risiken
- Quellenstatus

Nutzen:

- Prompts koennen sicher verbessert werden
- spaetere Trainingsdaten werden sauberer
- Geschmack wird von Bewertung getrennt

Dokumente:

```text
HERMES-MODEL-TRAINING-THEORY.md
HERMES-EVALUATION-HARNESS.md
```

## Priorisierung

Jetzt:

1. Airtable Base bauen
2. Pilot-Knowledge befuellen
3. Content Assistant + Brand QA testen
4. Token Budget Controller in Prompts einbauen
5. Affective Decision Layer als interne Regel einbauen

Danach:

6. Network Report mit echten Daten
7. Skill Mining
8. Confidence Ledger
9. Golden Examples und optional spaeter Training-Dataset

## Kein Autonomie-Sprung

Diese Features machen Hermes intelligenter, aber nicht autonomer im riskanten Sinn.

Nicht erlaubt:

- eigene Prompts live aendern
- neue Agenten selbst erstellen
- Skills ohne Review aktivieren
- Quellenkonflikte selbst entscheiden
- Nutzer emotional manipulieren

## Merksatz

```text
Hermes skaliert ueber bessere innere Steuerung, nicht ueber mehr Chaos.
```
