# Setup Sequence

## Ziel

Diese Reihenfolge baut das Agency OS kontrolliert auf, ohne normale Nutzer mit dem Maschinenraum zu belasten.

Launch-Arbeitstitel:

```text
Mosaic Workbench
```

## Schritt 1 - Entscheidung fuer Memory Layer

Empfehlung: Airtable.

Warum:

- strukturierte Tabellen
- Relationen
- Statusfelder
- gute CRUD-Logik
- leichter fuer Agenten als freie Ordner

## Schritt 2 - Airtable Base anlegen

Tabellen gemaess `AIRTABLE-MEMORY-SCHEMA.md` anlegen:

1. Brands
2. Products
3. Campaigns
4. Knowledge Items
5. Agents
6. Procedures
7. Learnings
8. Sources
9. Open Gaps
10. Requests
11. Audit Log

Vor dem Anlegen pruefen:

```text
agency-os/TECHNICAL-ACTION-CHECK.md
```

## Schritt 3 - GitHub Repo anlegen

Repo nach `GITHUB-STRUCTURE.md` erstellen.

Erste Dateien:

- Architect Agent v1
- Knowledge Curator v1
- Originalschutz-Prozedur
- Briefing-to-Campaign Workflow
- Governance

## Schritt 4 - Mosaic Admin anlegen

Agent:

```text
Mosaic Admin
```

Prompt:

```text
agency-os/agents/hermes-admin/hermes-admin-de-v1.md
```

Actions:

- Airtable Read
- Airtable Write nach Freigabe
- GitHub Read
- GitHub Write nach Freigabe
- SharePoint/Drive Read only

## Schritt 5 - Mosaic Prompter anlegen

Agent:

```text
Mosaic Prompter
```

Prompt:

```text
agency-os/agents/hermes-prompter/hermes-prompter-de-v1.md
```

Actions:

- SharePoint/Drive Read
- Airtable Search, falls verfuegbar
- keine Write-Action im Standardmodus
- Drafts im Chat oder nach Freigabe ueber Mosaic Admin

## Schritt 6 - Ersten Nutzerflow bauen

Flow:

```text
Briefing -> Mosaic Prompter Output -> QA Mode -> Mosaic Admin Trace
```

Dokument:

```text
agency-os/workflows/briefing-to-campaign.md
```

## Schritt 7 - MVP-Testplan ausfuehren

Testplan:

```text
agency-os/MVP-TESTPLAN.md
```

Pflichttests:

- Originalschutz
- Versionierung
- Mosaic Prompter
- Mosaic Admin

## Schritt 8 - Standardnutzer-Test

Testauftrag:

```text
Ich brauche eine Haendlermail fuer GWM Probefahrten.
```

Erfolg:

- maximal drei Rueckfragen
- keine Systembegriffe
- brauchbarer Entwurf
- maximal zwei Risiken
- keine Aktion an Originaldateien

## Schritt 9 - Admin-Test

Testauftrag:

```text
Zeig mir, welche Quellen und Annahmen du fuer den Entwurf genutzt hast.
```

Erfolg:

- Quellen sichtbar
- Annahmen sichtbar
- offene Luecken sichtbar
- keine Ueberforderung im Standardmodus

## Schritt 10 - Erst dann erweitern

Nach erfolgreichem MVP:

- Social Agent
- Handelsmarketing Agent
- Design Brief Agent
- Learning Agent
- Reporting / Learnings

## Schritt 11 - Launch Gate

Vor internem Pilot oder externer Demo:

```text
agency-os/FINAL-LAUNCH-CHECKLIST.md
```

Extern erst zeigen, wenn Name, Claims, Demo-Daten und Sicherheitsgrenzen freigegeben sind.
