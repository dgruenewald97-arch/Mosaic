# GitHub Structure

## Rolle von GitHub

GitHub versioniert alles, was wie Systemcode behandelt werden soll:

- Agenten-Prompts
- Procedures
- Langdock-Setup-Dokumentation
- Changelogs
- Registry-Snapshots
- System-Blueprints

GitHub ist nicht der Hauptspeicher fuer Unternehmenswissen. Unternehmenswissen liegt strukturiert in Airtable und als Original in SharePoint/Drive.

## Vorgeschlagene Repo-Struktur

```text
mobility-minds-agency-os/
|
|-- agents/
|   |-- architect/
|   |-- knowledge-curator/
|   |-- campaign-strategist/
|   |-- copy-agent/
|   |-- social-agent/
|   |-- design-brief-agent/
|   |-- handelsmarketing-agent/
|   |-- brand-qa/
|   `-- learning-agent/
|
|-- procedures/
|   |-- agent-build.md
|   |-- knowledge-intake.md
|   |-- memory-update.md
|   |-- campaign-workflow.md
|   |-- qa-check.md
|   |-- sharepoint-original-protection.md
|   `-- registry-update.md
|
|-- workflows/
|   |-- briefing-to-campaign.md
|   |-- content-production.md
|   |-- knowledge-upload.md
|   |-- agent-creation.md
|   `-- campaign-learning.md
|
|-- memory-schema/
|   |-- airtable-base.md
|   |-- fields.md
|   `-- relations.md
|
|-- langdock/
|   |-- interface-map.md
|   |-- actions-needed.md
|   |-- agent-setup.md
|   `-- user-flows.md
|
|-- registry/
|   |-- agents.md
|   |-- gaps.md
|   |-- changelog.md
|   `-- releases.md
|
`-- docs/
    |-- system-blueprint.md
    |-- governance.md
    `-- onboarding.md
```

## Agent-Dateiformat

```text
{agent-category}-{agent-name}-{language}-v{version}.md
```

Beispiele:

```text
architect-agent-architect-de-v1.md
curator-knowledge-intake-de-v1.md
copy-gwm-haendlermail-de-v1.md
qa-brand-check-de-v1.md
```

## Agent-Prompt-Struktur

Jeder Agent bekommt dieselbe Grundstruktur:

```text
# Agent Name

## Zweck
## Rolle
## Was du tust
## Was du nicht tust
## Inputs
## Outputs
## Benutzte Actions
## Benutzte Memory-Bereiche
## Arbeitsweise
## Fehler- und Risiko-Regeln
## Beispielinteraktion
## Changelog
```

## Versionierungsregeln

- Bestehende Agenten werden nicht ueberschrieben.
- Neue relevante Aenderungen erzeugen eine neue Version.
- Alte Versionen bleiben erhalten.
- Registry zeigt aktive Version.
- Changelog erklaert, warum eine Version geaendert wurde.

## Schreibrechte

Der Agent Architect darf GitHub nur nach Freigabe beschreiben.

Er darf:

- neue Agentenversion vorbereiten
- Changelog schreiben
- Registry aktualisieren
- Procedure-Vorschlaege erstellen

Er darf nicht:

- Historie loeschen
- alte Agenten entfernen
- Systemstruktur ohne Freigabe umbauen
