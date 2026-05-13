# Mosaic Plug And Play

## Zweck

Diese Datei ist der kuerzeste Weg vom Repo-Link zum ersten internen Mosaic-Test.

Ziel:

```text
Repo anbinden.
Zwei Langdock-Agenten anlegen.
Airtable Memory vorbereiten.
Ersten Live-Test fahren.
```

Nicht Ziel:

```text
Alle alten Dateien verstehen.
Alle Agenten bauen.
Public Launch vorbereiten.
```

## Wahrheit

```text
Mosaic Workbench
= 2 sichtbare Agenten
= 1 Memory Layer
= 1 Background Improvement Loop
= kontrollierte Aktivierung
```

Sichtbare Agenten:

```text
Mosaic Prompter
Mosaic Admin
```

Alles andere ist intern.

## Plug-And-Play Ablauf

### 1. Repo privat anbinden

In GitHub privat anlegen oder bestehendes privates Repo verbinden.

Nicht public setzen.

### 2. Langdock Knowledge / Repo Source verbinden

Langdock soll mindestens diesen Ordner lesen koennen:

```text
agency-os/
```

Wenn nur einzelne Dateien angebunden werden koennen, zuerst diese:

```text
agency-os/HERMES-DEBUG-MAP.md
agency-os/MOSAIC-PLUG-AND-PLAY.md
agency-os/LANGDOCK-AGENT-CARDS.md
agency-os/agents/hermes-prompter/hermes-prompter-de-v1.md
agency-os/agents/hermes-admin/hermes-admin-de-v1.md
agency-os/AIRTABLE-MEMORY-SCHEMA.md
agency-os/MOSAIC-BACKGROUND-IMPROVEMENT-LOOP.md
agency-os/evals/hermes-eval-cases.json
```

### 3. Mosaic Prompter anlegen

Name in Langdock:

```text
Mosaic Prompter
```

Prompt:

```text
agency-os/agents/hermes-prompter/hermes-prompter-de-v1.md
```

Sichtbarkeit:

```text
Alle Pilotnutzer
```

### 4. Mosaic Admin anlegen

Name in Langdock:

```text
Mosaic Admin
```

Prompt:

```text
agency-os/agents/hermes-admin/hermes-admin-de-v1.md
```

Sichtbarkeit:

```text
Admins / Systemverantwortliche
```

### 5. Airtable vorbereiten

Base:

```text
Mobility Minds Mosaic Memory
```

Pflichttabellen:

```text
Brands
Products
Campaigns
Knowledge Items
Agents
Procedures
Sources
Open Gaps
Requests
Audit Log
```

Seed:

```text
agency-os/airtable/mvp-knowledge-seed.md
```

### 6. Actions zuerst read-only

Start mit:

```text
search_knowledge_items
list_open_gaps
get_source_metadata
```

Write erst spaeter:

```text
create_knowledge_item
create_open_gap
write_audit_log
```

Regel:

```text
Write nur nach sichtbarer Freigabe.
```

### 7. Erster Test

Mosaic Prompter:

```text
Ich brauche eine Haendlermail fuer GWM Probefahrten.
```

Erwartung:

- brauchbarer Entwurf
- kein Preis ohne Quelle
- maximal kurze Risiken
- keine Architekturerklaerung

Mosaic Admin:

```text
Erstelle einen Mosaic Network Report fuer den aktuellen MVP-Stand.
```

Erwartung:

- Kurzfazit
- Keyfacts
- Memory Health
- Vernetzung
- Risiken
- naechste Schritte

### 8. Evalcases laufen lassen

Quelle:

```text
agency-os/evals/hermes-eval-cases.json
```

Erwartung:

```text
11 Cases
0 critical failures
```

## Background Improvement

Wenn eine externe KI angebunden wird, bekommt sie nicht "Trainingsmodus", sondern:

```text
Background Improvement Loop
```

Datei:

```text
agency-os/MOSAIC-BACKGROUND-IMPROVEMENT-LOOP.md
```

Sie darf automatisch:

- Daten lesen
- Muster erkennen
- Knowledge Drafts vorbereiten
- Skill Candidates erstellen
- Evalcases vorschlagen
- Reports aktualisieren

Sie darf nicht automatisch:

- aktive Prompts ueberschreiben
- Skills aktivieren
- neue sichtbare Agenten erstellen
- Originale bearbeiten
- harte Claims oder Preise final setzen

## Lokaler Self-Check

Vor dem Anbinden oder nach Aenderungen ausfuehren:

```powershell
powershell -ExecutionPolicy Bypass -File .\agency-os\tools\check-mosaic.ps1
```

Erwartung:

```text
Mosaic self-check passed.
```

## Komplette aktuelle Struktur

```text
/
  README.md
  .gitignore
  SETUP-TUTORIAL.txt          Legacy
  github/                     Legacy
  langdock/                   Legacy
  agency-os/                  Aktuelle Wahrheit
    README.md
    HERMES-DEBUG-MAP.md       Startkarte
    MOSAIC-PLUG-AND-PLAY.md   Dieser Einstieg
    LANGDOCK-AGENT-CARDS.md   Langdock Setup Cards
    MOSAIC-WORKBENCH-PAPER.md
    MOSAIC-REPO-SETUP-GUIDE.md
    MOSAIC-BACKGROUND-IMPROVEMENT-LOOP.md
    agents/
      hermes-prompter/
      hermes-admin/
      ...                     Legacy / Referenzagenten
    airtable/
      mvp-knowledge-seed.md
      pilot-knowledge-intake-template.md
      airtable-base-build-checklist.md
    evals/
      hermes-eval-cases.json
      runs/
    patterns/
    skills/
    procedures/
    training/
    tools/
      check-mosaic.ps1
```

## Fertig, wenn

```text
1. Self-Check gruen.
2. Repo privat angebunden.
3. Mosaic Prompter in Langdock.
4. Mosaic Admin in Langdock.
5. Airtable Base bereit.
6. Erster Haendlermail-Test bestanden.
7. Network Report liefert echte Luecken.
```

## Merksatz

```text
Nicht alles lesen.
Plug-and-play starten.
Wenn es unklar wird: Debug Map.
```
