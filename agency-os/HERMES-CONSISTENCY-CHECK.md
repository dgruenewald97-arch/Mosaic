# Mosaic Consistency Check

Checked: 2026-05-13

## Kurzfazit

Mosaic Workbench ist als internes MVP-Paket konsistent genug, um in eine echte Demo und danach in den Airtable/Langdock-Build zu gehen.

Die wichtigste Korrektur wurde gezogen:

```text
Seed Knowledge Items != echte Pilot-Knowledge-Items.
```

Seed Items starten das System. Echte Pilot-Items kommen aus belastbaren Quellen und machen die Demo produktionsnaeher.

## Gepruefter Bestand

Aktueller Stand:

- 73 Markdown-Dateien im `agency-os` nach Plug-and-Play-Ergaenzung vom 2026-05-13
- 5 Agentenprompts
- 1 Procedure
- 1 Workflow
- Airtable Setup-Ordner vorhanden
- Mosaic Launch-, Demo-, Network- und Keyfact-Dokumente vorhanden; einige Legacy-Dateinamen enthalten weiter `HERMES`
- Science Notes, Affective Decision Layer, Token Efficiency, Training Theory, Prompt Upgrade Pack und Evaluation Harness vorhanden
- Feature Radar, Agentic Security Model, GraphRAG Memory Plan, RAG Evaluation und strukturierte Eval-Fixtures vorhanden
- Swarm Discovery Engine, USP Discovery, Swarm Deep Run und Lern-/Bewertungsfaelle vorhanden
- Zwei-Agenten-Prompts fuer Mosaic Prompter und Mosaic Admin vorhanden
- Pattern Library, Skill Factory und erste Skill Candidates vorhanden

## Konsistenzentscheidungen

### 1. Mosaic Workbench

Status:

```text
Aktueller Produktname fuer das MVP-Paket.
```

Konsequent in:

- `README.md`
- `MOSAIC-PRODUCT-NAMING.md`
- `MOSAIC-WORKBENCH-PAPER.md`
- `MOSAIC-REPO-SETUP-GUIDE.md`
- `MVP-ROADMAP.md`
- `SETUP-SEQUENCE.md`

### 2. MVP-Knowledge

Es gibt zwei Stufen:

```text
10 Seed Knowledge Items
= Operating-Wissen fuer Systemstart

10 echte Pilot-Knowledge-Items
= fachliches Wissen aus belastbaren Quellen
```

Konsequent in:

- `README.md`
- `MVP-TESTPLAN.md`
- `FINAL-LAUNCH-CHECKLIST.md`
- `HERMES-PILOT-DEMO-SCRIPT.md`
- `airtable/README.md`
- `airtable/airtable-base-build-checklist.md`
- `airtable/pilot-knowledge-intake-template.md`

### 3. Normale Nutzer vs. Admins

Normale Nutzer sehen:

- Mosaic Prompter

Admins sehen zusaetzlich:

- Mosaic Admin

Alte Rollennamen wie Content Assistant, Brand QA, Agency Director, Knowledge Intake und Agent Architect sind im MVP nur Modi, Referenzen oder spaetere Optionen.

Konsequent in:

- `LANGDOCK-INTERFACE.md`
- `HERMES-TWO-AGENT-MVP.md`
- `MVP-ROADMAP.md`
- `MVP-TESTPLAN.md`
- `FINAL-LAUNCH-CHECKLIST.md`
- `SETUP-SEQUENCE.md`
- `evals/hermes-eval-cases.json`

### 4. Mosaic-Skalierung

Skalierung bleibt bewusst:

```text
Nicht 200 Agenten.
2 sichtbare Agenten mit vielen geprueften Skills.
```

Das ist konsistent mit:

- `HERMES-PERSISTENCE-PATTERN.md`
- `AGENCY-SWARM-INSPIRATION.md`
- `DIRECTOR-MODEL.md`
- `HERMES-SKILL-FACTORY.md`

### 5. Safety und Governance

Harte Regeln sind konsistent:

- keine Originale bearbeiten
- keine Preise ohne Quelle
- keine harten Claims ohne Beleg
- keine stillen Commits
- keine Write-Actions ohne Freigabe
- keine autonomen Selbstverbesserungsloops
- keine neuen Agenten ohne Review

Konsequent in:

- `GOVERNANCE.md`
- `SAFETY-MASTER-RULES.md`
- `TECHNICAL-ACTION-CHECK.md`
- `HERMES-FOR-MARKETING.md`
- Agentenprompts

## Bereinigungen

Erledigt:

- Frueheren Arbeitstitel `Hermes for Marketing` zugunsten von Mosaic Workbench abgeloest
- Seed Knowledge und echte Pilot-Knowledge getrennt
- Pilot-Knowledge-Template ergaenzt
- Vernetzungsreport als Admin-only Feature integriert
- Keyfacts als faktenbasierte Humor-Schicht ergaenzt
- Encoding/ASCII-Ausreisser bereinigt
- Intelligence Deep Run ergaenzt: Affective Decision Layer, Token Budget, Model Training Theory, Prompt Upgrade Pack und Evaluation Harness
- Feature Radar ergaenzt und schaedigende, illegale oder waffenbezogene Faehigkeiten dauerhaft abgelehnt
- Prompt Injection Quarantine in `TECHNICAL-ACTION-CHECK.md` ergaenzt
- Lean Guardrail Mode ergaenzt: harmlose Aufgaben sollen nicht mit Warnungen ueberladen werden
- 11 Eval-Cases und 12 Swarm-Lernfaelle validiert
- Erster lokaler MVP-Baseline-Testlauf: 11/11 bestanden, 110/110 Punkte, 0 safety-critical failures
- Zwei-Agenten-MVP definiert: Mosaic Prompter und Mosaic Admin sind die einzigen sichtbaren MVP-Agenten
- Two-Agent Baseline-Testlauf: 11/11 bestanden, 110/110 Punkte, 0 critical failures
- MVP-kritische Dateien auf Zwei-Agenten-Setup aktualisiert: README, Langdock Interface, MVP Roadmap, MVP Testplan, Setup Sequence, Final Launch Checklist, Product Positioning und Evalcases
- Pattern-/Skill-Skalierung definiert: viele Aufgabenmuster, wenige sichtbare Agenten, gepruefte Diamond Skills nach Review
- Produktname auf Mosaic Workbench umgestellt; sichtbare MVP-Agenten heissen Mosaic Prompter und Mosaic Admin
- Mosaic Workbench Paper und Repo Setup Guide ergaenzt
- Primaere Agentenprompts produktsprachlich von Hermes auf Mosaic aktualisiert
- MVP-kritische Demo-, Test-, Pattern-, Skill- und Seed-Dateien auf Mosaic Prompter/Admin aktualisiert
- Interner Pilot mit Produktdisziplin als Arbeitsgrundhaltung dokumentiert
- Projekt-Logikcheck ergaenzt
- Background Improvement Loop fuer externe KI und Hintergrundverbesserung ergaenzt
- Plug-and-Play-Anleitung, Langdock Agent Cards und Self-Check-Skript ergaenzt

## Aktuelle Blocker vor echter Live-Demo

Nicht konzeptionell, sondern praktisch:

1. Airtable Base ist noch nicht live angelegt.
2. 10 echte Pilot-Knowledge-Items sind noch nicht aus realen Quellen befuellt.
3. Mosaic Prompter und Mosaic Admin sind noch nicht live in Langdock getestet.
4. Actions fuer Airtable, GitHub und SharePoint/Drive sind noch nicht technisch abgenommen.

## Demo-Freigabe

Eine echte produktionsnahe Demo ist jetzt als gefuehrte Demo moeglich, wenn klar gesagt wird:

```text
Das ist der Mosaic MVP im File-/Blueprint-Stand.
Airtable und Langdock werden danach live angebunden.
```

Interner Pilot ist bereit zur Vorbereitung, nicht fertig ausgerollt.

## Naechster Schritt

Die naechste sinnvolle Aktion ist:

```text
HERMES-DEBUG-MAP.md lesen, dann Mosaic Prompter und Mosaic Admin in Langdock anlegen.
```
