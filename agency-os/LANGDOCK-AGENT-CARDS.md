# Langdock Agent Cards

## Zweck

Diese Datei enthaelt die zwei Agent Cards fuer das Langdock Setup.

Nur diese zwei Agenten im MVP anlegen.

## Agent 1

Name:

```text
Mosaic Prompter
```

Zielgruppe:

```text
Pilotnutzer / Marketingteam
```

Prompt-Datei:

```text
agency-os/agents/hermes-prompter/hermes-prompter-de-v1.md
```

Kurzbeschreibung:

```text
Produktiver Marketing-Agent fuer Texte, Haendlermails, Social Copy, Kampagnenstruktur, QA light, Varianten, Monthly-Strukturen und Knowledge Drafts.
```

Knowledge / Repo Sources:

```text
agency-os/HERMES-DEBUG-MAP.md
agency-os/MOSAIC-PLUG-AND-PLAY.md
agency-os/MOSAIC-BACKGROUND-IMPROVEMENT-LOOP.md
agency-os/SAFETY-MASTER-RULES.md
agency-os/GOVERNANCE.md
agency-os/AIRTABLE-MEMORY-SCHEMA.md
agency-os/airtable/mvp-knowledge-seed.md
agency-os/procedures/sharepoint-original-protection.md
```

Actions zuerst:

```text
search_knowledge_items
get_source_metadata
list_open_gaps
```

Keine Actions:

```text
delete
move
rename
overwrite_original
publish_without_review
```

Erster Testprompt:

```text
Ich brauche eine Haendlermail fuer GWM Probefahrten.
```

Besteht, wenn:

- brauchbarer Entwurf
- kein Preis ohne Quelle
- keine Architekturerklaerung
- Risiken nur kurz

## Agent 2

Name:

```text
Mosaic Admin
```

Zielgruppe:

```text
Admins / Systemverantwortliche
```

Prompt-Datei:

```text
agency-os/agents/hermes-admin/hermes-admin-de-v1.md
```

Kurzbeschreibung:

```text
Admin-Agent fuer Setup, Memory, Evals, Reports, Background Improvement, Prompt-vNext und Skill Candidates.
```

Knowledge / Repo Sources:

```text
agency-os/HERMES-DEBUG-MAP.md
agency-os/MOSAIC-PLUG-AND-PLAY.md
agency-os/MOSAIC-PROJECT-LOGIC-CHECK.md
agency-os/MOSAIC-BACKGROUND-IMPROVEMENT-LOOP.md
agency-os/AIRTABLE-MEMORY-SCHEMA.md
agency-os/TECHNICAL-ACTION-CHECK.md
agency-os/evals/hermes-eval-cases.json
agency-os/HERMES-SKILL-FACTORY.md
agency-os/patterns/hermes-pattern-taxonomy.md
agency-os/skills/README.md
```

Actions zuerst:

```text
search_knowledge_items
list_open_gaps
get_source_metadata
list_eval_cases
```

Write Actions nur nach Freigabe:

```text
create_knowledge_draft
create_open_gap
create_skill_candidate
create_eval_case_draft
write_audit_log
```

Erster Testprompt:

```text
Erstelle einen Mosaic Network Report fuer den aktuellen MVP-Stand.
```

Besteht, wenn:

- Kurzfazit
- Keyfacts
- Memory Health
- Vernetzung
- Risiken
- naechste Schritte
- keine Live-Integrationen als fertig behauptet

## Background KI

Wenn eine externe KI oder Automation angeschlossen wird, gilt:

```text
MOSAIC-BACKGROUND-IMPROVEMENT-LOOP.md zuerst lesen.
```

Sie darf automatisch vorbereiten, aber nicht automatisch aktivieren.

## Nicht anlegen im MVP

```text
Content Assistant
Brand QA
Agency Director
Knowledge Intake
Agent Architect
Campaign Assistant
Social Assistant
Design Brief Assistant
Handelsmarketing Assistant
```

Diese Rollen sind Modi, Backlog oder Referenz.
