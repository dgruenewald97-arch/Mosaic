# Mosaic Background Improvement Loop

## Zweck

Diese Datei beschreibt, wie Mosaic im Hintergrund besser werden kann, wenn eine externe KI oder ein Automationssystem angebunden wird.

Wichtig:

```text
Kein sichtbarer Trainingsmodus.
Kein heimliches Fine-Tuning.
Kein Selbstumbau live.
```

Stattdessen:

```text
Background Improvement Loop.
```

Das System liest Daten, erkennt Muster, erzeugt Verbesserungen und legt sie kontrolliert zur Nutzung bereit.

## Grundidee

Mosaic soll im Alltag automatisch mitlernen, ohne unkontrolliert zu werden.

Die externe KI bekommt klare Arbeitsregeln:

1. Daten lesen.
2. Quellenstatus pruefen.
3. Muster erkennen.
4. Luecken markieren.
5. Knowledge Drafts vorbereiten.
6. Skill Candidates vorbereiten.
7. Evalcases vorschlagen.
8. Network Report aktualisieren.
9. Verbesserungen in eine Review Queue legen.

Aktivierung erfolgt kontrolliert.

## Was automatisch laufen darf

Automatisch erlaubt:

- neue Quellen erkennen
- Dokumente zusammenfassen
- Knowledge Item Drafts erstellen
- Duplikate und Konflikte markieren
- Pattern aus wiederkehrenden Aufgaben erkennen
- Skill Candidates vorbereiten
- Evalcases aus Fehlern oder Erfolgen ableiten
- Source-to-Output Traces erzeugen
- Network Reports aktualisieren
- Open Gaps erstellen
- Feedback clustern
- Prompt-vNext Vorschlaege schreiben

## Was nicht automatisch live passieren darf

Nicht automatisch live:

- aktive Prompts ueberschreiben
- Diamond Skills aktivieren
- neue sichtbare Agenten erstellen
- Preise oder harte Claims als sicher setzen
- Originaldateien bearbeiten
- vertrauliche Daten in Demo-Material uebernehmen
- externe Kommunikation ausloesen
- Endlosschleifen starten

## Hintergrund-Pipeline

```text
Trigger
-> Read
-> Extract
-> Normalize
-> Evaluate
-> Improve Draft
-> Review Queue
-> Approved Activation
-> Audit Log
```

### 1. Trigger

Moegliche Ausloeser:

- neuer Airtable-Eintrag
- neue Quelle in SharePoint/Drive
- neuer Output aus Langdock
- Teamfeedback
- fehlgeschlagener Evalcase
- wiederkehrende Anfrage
- manueller Admin-Start
- geplanter Nachtlauf

### 2. Read

Die externe KI liest nur das, was fuer den Task noetig ist.

Empfohlene Reihenfolge:

1. relevante Knowledge Items
2. Source-Metadaten
3. kurze Source-Zusammenfassung
4. Originalquelle nur bei Bedarf
5. vorhandene Evalcases
6. vorhandene Skill Candidates

### 3. Extract

Extrahiert werden:

- Fakten
- Claims
- Preise oder Angebotslogik
- Brand Voice Hinweise
- Produktdaten
- Kampagnenkontext
- Prozessregeln
- Risiken
- offene Fragen
- wiederkehrende Muster

### 4. Normalize

Alles wird in strukturierte Objekte ueberfuehrt:

```text
Knowledge Draft
Open Gap
Pattern
Skill Candidate
Evalcase
Source Summary
Network Report Item
Prompt-vNext Proposal
```

### 5. Evaluate

Jedes Objekt bekommt eine knappe Bewertung:

- Source vorhanden?
- Confidence?
- Risiko?
- Konflikt?
- Relevant fuer welchen Modus?
- Darf es genutzt werden?
- Braucht es Review?

### 6. Improve Draft

Die KI erstellt keine finalen Live-Aenderungen.

Sie erstellt:

- bessere Knowledge Drafts
- bessere Skill Candidates
- bessere Prompt-vNext Vorschlaege
- bessere Evalcases
- bessere Admin Reports

### 7. Review Queue

Alle Verbesserungen landen in einer Review Queue.

Empfohlene Review-Felder:

- `Type`
- `Title`
- `Summary`
- `Source`
- `Risk`
- `Confidence`
- `Suggested Change`
- `Affected Area`
- `Review Status`
- `Approved By`
- `Decision Date`

### 8. Approved Activation

Erst nach Freigabe wird etwas aktiv:

- Knowledge Item wird `Active`
- Skill Candidate wird `Diamond`
- Prompt-vNext wird neue Version
- Evalcase wird Teil des Standardtests

### 9. Audit Log

Jede Aktivierung bekommt einen Audit Log Eintrag.

## Externe KI: Minimaler Systemkontext

Wenn eine externe KI an Mosaic angeschlossen wird, sollte sie zuerst diese Dateien lesen:

1. `HERMES-DEBUG-MAP.md`
2. `MOSAIC-BACKGROUND-IMPROVEMENT-LOOP.md`
3. `MOSAIC-REPO-SETUP-GUIDE.md`
4. `AIRTABLE-MEMORY-SCHEMA.md`
5. `TECHNICAL-ACTION-CHECK.md`
6. `SAFETY-MASTER-RULES.md`
7. `evals/hermes-eval-cases.json`

Dann kennt sie:

- aktuelle Produktwahrheit
- erlaubte Hintergrundlogik
- Memory-Struktur
- Action-Grenzen
- Sicherheitsregeln
- Testlogik

## Action-Konzept

### Read Actions

Diese Actions duerfen zuerst angebunden werden:

```text
search_knowledge_items
get_source_metadata
read_source_summary
list_open_gaps
list_skill_candidates
list_eval_cases
```

### Draft Actions

Diese Actions erzeugen Vorschlaege:

```text
create_knowledge_draft
create_open_gap
create_pattern_candidate
create_skill_candidate
create_eval_case_draft
create_prompt_vnext_draft
create_network_report_snapshot
```

### Activation Actions

Diese Actions brauchen Freigabe:

```text
activate_knowledge_item
approve_diamond_skill
publish_prompt_version
add_eval_case_to_standard_suite
write_audit_log
```

## Daten auslesen: Arbeitsregel

Die externe KI liest nicht "alles".

Sie arbeitet so:

```text
Task verstehen
-> benoetigte Tabellen bestimmen
-> 3-5 relevante Eintraege laden
-> Quellenstatus pruefen
-> nur bei Bedarf Originalquelle lesen
-> Ergebnis strukturiert speichern
```

## Verbesserungslogik

Eine Verbesserung ist nur gut, wenn sie mindestens eines davon schafft:

- weniger Rueckfragen
- bessere Quellenklarheit
- weniger Fehler bei Preisen oder Claims
- schnellerer Output
- stabileres Format
- bessere Wiederverwendung
- besserer Teamnutzen
- besserer Eval-Score

## Beispiel

Input:

```text
Drei Haendlermails wurden manuell nach demselben Muster akzeptiert.
```

Background Loop:

```text
Pattern erkannt: Haendlermail-Struktur
Skill Candidate erstellt
Evalcase vorgeschlagen
Quelle und Beispiele verlinkt
Review Queue aktualisiert
```

Nicht automatisch:

```text
Skill live aktivieren
Prompt ueberschreiben
neuen Agenten erstellen
```

## Merksatz

```text
Mosaic verbessert sich automatisch im Hintergrund.
Mosaic aktiviert Verbesserungen kontrolliert.
```
