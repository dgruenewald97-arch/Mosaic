# Mosaic Repo Setup Guide

## Zweck

Diese Anleitung beschreibt, wie Mosaic Workbench nach dem Kopieren des Repos praktisch aufgesetzt wird.

Sie ist fuer den Moment gedacht, in dem jemand das Repo neu oeffnet und fragt:

```text
Was muss ich jetzt konkret tun?
```

## 0. Wichtig vor dem Start

Arbeite im neuen relevanten Ordner:

```text
agency-os
```

Die alten Ordner bleiben erhalten, sind aber fuer den aktuellen MVP nicht fuehrend:

```text
langdock/
github/
```

Nicht loeschen.
Nicht umbauen.
Erstmal nicht weiter ausbauen.

## 1. Aktuelle Produktwahrheit

Produktname:

```text
Mosaic Workbench
```

Sichtbare MVP-Agenten:

```text
Mosaic Prompter
Mosaic Admin
```

Alte Dateinamen mit `HERMES` duerfen vorerst bleiben.

Wenn ein Dateiname `HERMES` sagt, aber der Inhalt Mosaic meint, gilt:

```text
Produktname = Mosaic Workbench
Legacy-Dateiname = technisch vorerst akzeptiert
```

## 2. Lesereihenfolge

Nach dem Kopieren des Repos zuerst diese Dateien lesen:

1. `agency-os/HERMES-DEBUG-MAP.md`
2. `agency-os/MOSAIC-PRODUCT-NAMING.md`
3. `agency-os/MOSAIC-WORKBENCH-PAPER.md`
4. `agency-os/HERMES-TWO-AGENT-MVP.md`
5. `agency-os/agents/hermes-prompter/hermes-prompter-de-v1.md`
6. `agency-os/agents/hermes-admin/hermes-admin-de-v1.md`
7. `agency-os/AIRTABLE-MEMORY-SCHEMA.md`
8. `agency-os/airtable/airtable-base-build-checklist.md`
9. `agency-os/airtable/mvp-knowledge-seed.md`
10. `agency-os/airtable/pilot-knowledge-intake-template.md`
11. `agency-os/evals/hermes-eval-cases.json`

Wenn etwas widerspruechlich wirkt:

```text
HERMES-DEBUG-MAP.md gewinnt.
```

## 3. Repo-Struktur verstehen

Wichtige Bereiche:

```text
agency-os/
  agents/
  airtable/
  evals/
  patterns/
  procedures/
  skills/
  training/
  workflows/
```

### agents

Enthaelt Prompt-Dateien fuer Agenten.

Fuer den MVP relevant:

```text
agents/hermes-prompter/hermes-prompter-de-v1.md
agents/hermes-admin/hermes-admin-de-v1.md
```

In Langdock sollen diese sichtbar heissen:

```text
Mosaic Prompter
Mosaic Admin
```

### airtable

Enthaelt praktische Airtable-Vorlagen:

```text
airtable-base-build-checklist.md
mvp-knowledge-seed.md
pilot-knowledge-intake-template.md
```

### evals

Enthaelt Testfaelle.

Wichtig:

```text
evals/hermes-eval-cases.json
```

### patterns

Enthaelt wiederkehrende Aufgabenmuster.

### skills

Enthaelt Skill-Kandidaten und spaeter Diamond Skills.

### procedures

Enthaelt verbindliche Arbeitsregeln, zum Beispiel Originalschutz.

## 4. Airtable Base anlegen

Name der Base:

```text
Mobility Minds Mosaic Memory
```

Falls bereits eine Base mit altem Namen existiert:

```text
Mobility Minds Agency OS Memory
```

kann sie fuer den MVP weiterverwendet werden. Wichtig ist die Struktur, nicht der Name.

## 5. Airtable Tabellen

Pflichttabellen fuer den MVP:

1. `Brands`
2. `Products`
3. `Campaigns`
4. `Knowledge Items`
5. `Agents`
6. `Procedures`
7. `Sources`
8. `Open Gaps`
9. `Requests`
10. `Audit Log`

Spaeter:

```text
Learnings
```

## 6. Knowledge Items zuerst bauen

Die wichtigste Tabelle ist:

```text
Knowledge Items
```

Pflichtfelder:

- `Title`
- `Brand`
- `Type`
- `Summary`
- `Details`
- `Status`
- `Temperature`
- `Relevant For`
- `Source`
- `Confidence`
- `Last Verified`

Statuswerte:

```text
Draft
Active
Outdated
Conflicting
Archived
```

Confidence:

```text
Low
Medium
High
```

MVP-Regel:

```text
Nur Active plus ausreichende Confidence darf ohne Warnhinweis aktiv fuer Outputs genutzt werden.
```

## 7. Sources vorbereiten

Pflichtfelder:

- `Title`
- `Source Type`
- `Original URL`
- `Working Copy URL`
- `Owner`
- `Access Level`
- `Do Not Modify`
- `Last Checked`
- `Related Knowledge Items`

Bei Originalquellen:

```text
Do Not Modify = true
```

Erlaubte Source Types:

```text
SharePoint
Drive
Upload
Email
Manual
GitHub
```

## 8. Agents in Airtable

Fuer den MVP zuerst nur diese zwei aktiven Agenten anlegen:

```text
Mosaic Prompter
Mosaic Admin
```

Empfohlene Felder:

- `Agent Name`
- `Category`
- `Status`
- `Version`
- `GitHub Path`
- `Purpose`
- `Inputs`
- `Outputs`
- `Knowledge Dependencies`
- `Actions Allowed`
- `Owner`
- `Last Updated`

GitHub Paths:

```text
agency-os/agents/hermes-prompter/hermes-prompter-de-v1.md
agency-os/agents/hermes-admin/hermes-admin-de-v1.md
```

## 9. Procedures eintragen

Erste Procedure:

```text
SharePoint Original Protection
```

GitHub Path:

```text
agency-os/procedures/sharepoint-original-protection.md
```

Status:

```text
Active
```

## 10. Open Gaps anlegen

Erste sinnvolle Gaps:

1. `Echte Brand Voice Quellen fehlen noch fuer produktive Markenoutputs.`
2. `Langdock Action Limits fuer Airtable Write muessen getestet werden.`
3. `SharePoint/Drive Read-only Verhalten muss technisch validiert werden.`
4. `Live-Eval gegen Langdock-Agenten steht noch aus.`
5. `Pilot Knowledge Items muessen aus echten Quellen befuellt werden.`

## 11. Seed Knowledge Items eintragen

Nutze:

```text
agency-os/airtable/mvp-knowledge-seed.md
```

Ziel:

```text
10 erste Knowledge Items
```

Diese Items bilden den Startzustand fuer:

- Originalschutz
- Claims
- Preise
- Memory-Regeln
- Skill Factory
- Two-Agent-MVP

## 12. Pilot Knowledge Items aufnehmen

Nutze:

```text
agency-os/airtable/pilot-knowledge-intake-template.md
```

Ziel:

```text
10 echte Pilot-Knowledge-Items aus belastbaren Quellen
```

Wichtig:

- keine privaten echten Namen in Doku
- keine Preise ohne Quelle
- keine harten Claims ohne Beleg
- Quellenkonflikte als `Conflicting` markieren
- fehlende Quellen als Open Gap notieren

## 13. Langdock Agenten anlegen

In Langdock zwei Agenten erstellen.

### Agent 1

Name:

```text
Mosaic Prompter
```

Promptquelle:

```text
agency-os/agents/hermes-prompter/hermes-prompter-de-v1.md
```

Ziel:

- produktive Arbeit
- Texte
- Kampagnen
- Haendlermails
- Social
- QA light
- Knowledge Drafts

### Agent 2

Name:

```text
Mosaic Admin
```

Promptquelle:

```text
agency-os/agents/hermes-admin/hermes-admin-de-v1.md
```

Ziel:

- Setup
- Memory
- Evals
- Reports
- Prompt-vNext
- Skill-Kandidaten

## 14. Langdock Actions verbinden

Erst read-only starten.

Empfohlene erste Read Actions:

```text
search_knowledge_items
search_brand_voice
list_open_gaps
get_source_metadata
```

Spaetere Write Actions nur mit Freigabe:

```text
create_knowledge_item
update_knowledge_item_status
write_audit_log
create_open_gap
```

Write-Regel:

```text
Vor dem Schreiben zeigt Mosaic, was geschrieben wird.
Der Nutzer bestaetigt.
Dann wird geschrieben.
Danach Audit Log.
```

## 15. SharePoint/Drive anbinden

Startregel:

```text
Read-only.
```

Mosaic darf:

- Quellen lesen
- Quellen zusammenfassen
- Metadaten aufnehmen
- Working Copy vorschlagen

Mosaic darf nicht:

- Originale bearbeiten
- Originale loeschen
- Originale verschieben
- Originale umbenennen
- Originale ueberschreiben

## 16. GitHub nutzen

GitHub ist fuer Versionierung.

Versioniert werden:

- Prompts
- Procedures
- Skills
- Evalcases
- Changelogs
- Setup-Dokumente

Regel:

```text
Keine stillen Commits.
Keine Aenderung aktiver Prompts ohne Review.
```

## 17. Erste Live-Tests

Nutze:

```text
agency-os/evals/hermes-eval-cases.json
```

Teste zuerst manuell in Langdock.

Mosaic Prompter:

- Preis ohne Quelle
- harter Claim
- Originalschutz
- Prompt Injection in Quelle
- mueder Nutzer / hohe Friktion
- Quellenkonflikt
- harmloser interner Teaser

Mosaic Admin:

- Network Report
- Source-to-Output Trace
- USP-Qualitaet
- Skill-Mining-Gate

## 18. Testergebnis dokumentieren

Pro Test notieren:

- Case ID
- Agent
- Input
- Ergebnis
- Passed / Partial / Failed
- Score
- Kritische Fehler
- Naechste Aktion

Wenn live getestet wurde, neuen Run speichern unter:

```text
agency-os/evals/runs/
```

Dateiname:

```text
mosaic-live-eval-run-YYYY-MM-DD.md
```

## 19. Demo-Run

Eine echte Demo sollte nur diese Stationen zeigen:

1. Nutzer fragt Mosaic Prompter nach einer Haendlermail.
2. Prompter liefert brauchbaren Entwurf.
3. Prompter markiert fehlende Preisquelle, falls relevant.
4. Admin zeigt Network Report.
5. Admin zeigt offene Luecken.
6. Admin schlaegt Skill Candidate vor, aktiviert ihn aber nicht.

Ziel:

```text
Nutzer sieht Nutzen.
Admin sieht Kontrolle.
```

## 20. Debug-Regeln

Wenn Mosaic zu gross wirkt:

```text
Zurueck zu zwei Agenten.
```

Wenn zu viele Agentennamen auftauchen:

```text
Als Modus in Prompter/Admin mappen.
```

Wenn zu viel Sicherheit auftaucht:

```text
Lean Guardrail pruefen.
Nur echte Risiken blocken.
```

Wenn alte Hermes-Namen irritieren:

```text
Legacy-Dateiname.
Produktname ist Mosaic Workbench.
```

Wenn Quellen fehlen:

```text
Nicht erfinden.
Als Open Gap markieren.
```

Wenn ein Output gut wiederholbar ist:

```text
Pattern notieren.
Skill Candidate vorbereiten.
Nicht automatisch aktivieren.
```

## 21. Done-Kriterium fuer MVP Setup

Der MVP ist praktisch startklar, wenn:

- Airtable Base steht
- 10 Seed Knowledge Items eingetragen sind
- 10 echte Pilot-Knowledge-Items erfasst oder als Gap dokumentiert sind
- Mosaic Prompter in Langdock angelegt ist
- Mosaic Admin in Langdock angelegt ist
- Read Actions funktionieren
- Write Actions nur nach Freigabe laufen
- SharePoint/Drive read-only validiert ist
- Evalcases live getestet sind
- mindestens ein Demo-Workflow funktioniert

## 22. Naechster sinnvoller Schritt nach Setup

Nicht weiter aufblasen.

Dann:

```text
1 echter Workflow.
1 echte Demo.
1 echter Network Report.
1 echter Skill Candidate aus Wiederholung.
```

Empfohlener erster Workflow:

```text
Haendlermail
```

Alternative:

```text
Facebook Monthly
```

## Merksatz

```text
Mosaic ist startklar, wenn ein normaler Nutzer arbeiten kann
und ein Admin versteht, warum das Ergebnis vertrauenswuerdig ist.
```
