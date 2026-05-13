# Mosaic Debug Map

## Zweck

Diese Datei ist die Arbeitskarte fuer Codex und alle Admins.

Wenn du dich im Mosaic-System orientierst, lies diese Datei zuerst.

## Aktuelle Wahrheit

```text
MVP = Zwei sichtbare Agenten.
1. Mosaic Prompter
2. Mosaic Admin
```

Skalierung:

```text
Nicht mehr sichtbare Agenten.
Mehr Patterns, Skill-Kandidaten und spaeter Diamond Skills.
```

Alles andere ist:

- Modus
- Skill
- Procedure
- Backlog
- Referenz
- spaetere Ausbauoption

## Nicht mehr als MVP-Wahrheit behandeln

Nicht als sichtbare MVP-Agenten behandeln:

- Content Assistant
- Brand QA
- Agency Director
- Knowledge Intake
- Agent Architect
- Campaign Assistant
- Social Assistant
- Design Brief Assistant
- Handelsmarketing Assistant

Diese Namen duerfen in alten oder referenzierten Dokumenten vorkommen, aber im MVP sind sie nur Modi oder spaetere Optionen.

## MVP-Agenten

### Mosaic Prompter

Datei:

```text
agents/hermes-prompter/hermes-prompter-de-v1.md
```

Macht:

- Content
- QA light
- Campaign
- Monthly
- Varianten
- Knowledge Drafts

### Mosaic Admin

Datei:

```text
agents/hermes-admin/hermes-admin-de-v1.md
```

Macht:

- Systemstatus
- Memory
- Eval Runs
- Network Report
- Prompt-vNext
- Skill-Kandidaten

## Primaere Dateien

Fuer aktuelle Arbeit zuerst lesen:

1. `MOSAIC-PLUG-AND-PLAY.md`
2. `LANGDOCK-AGENT-CARDS.md`
3. `HERMES-DEBUG-MAP.md`
4. `MOSAIC-PRODUCT-NAMING.md`
5. `MOSAIC-WORKBENCH-PAPER.md`
6. `MOSAIC-REPO-SETUP-GUIDE.md`
7. `MOSAIC-PROJECT-LOGIC-CHECK.md`
8. `MOSAIC-BACKGROUND-IMPROVEMENT-LOOP.md`
9. `HERMES-TWO-AGENT-MVP.md`
10. `agents/hermes-prompter/hermes-prompter-de-v1.md`
11. `agents/hermes-admin/hermes-admin-de-v1.md`
12. `LANGDOCK-INTERFACE.md`
13. `MVP-ROADMAP.md`
14. `MVP-TESTPLAN.md`
15. `FINAL-LAUNCH-CHECKLIST.md`
16. `evals/hermes-eval-cases.json`
17. `evals/runs/hermes-two-agent-mvp-test-run-2026-05-13.md`
18. `HERMES-SKILL-FACTORY.md`
19. `patterns/hermes-pattern-taxonomy.md`

## Sekundaere Dateien

Fuer Vertiefung:

- `HERMES-FOR-MARKETING.md`
- `HERMES-USP-DISCOVERY.md`
- `HERMES-SWARM-DEEP-RUN-2026-05-13.md`
- `HERMES-AFFECTIVE-DECISION-LAYER.md`
- `HERMES-TOKEN-EFFICIENCY.md`
- `HERMES-PERSISTENCE-PATTERN.md`
- `HERMES-NETWORK-REPORT.md`

## Backlog / Referenz

Nicht als aktuelle Build-Anweisung verwenden, ohne gegen diese Debug Map zu pruefen:

- `DIRECTOR-MODEL.md`
- `AGENCY-SWARM-INSPIRATION.md`
- alte Einzelagentenprompts
- `workflows/briefing-to-campaign.md`
- umfangreiche Feature-Radar- und Science-Dateien

## Entscheidungsregeln

### Wenn eine Datei sagt "mehr Agenten"

Pruefe:

```text
Ist das Two-Agent-MVP betroffen?
```

Wenn ja:

```text
Nicht mehr Agenten bauen. Als Modus in Prompter/Admin mappen.
```

### Wenn eine Datei viel Sicherheit fordert

Pruefe:

```text
Ist eine riskante Aktion betroffen?
```

Wenn nein:

```text
Lean Guardrail: liefern, nicht warnen.
```

### Wenn eine Datei "spaeter" sagt

Dann ist sie Backlog, nicht MVP.

## Aktueller Teststand

Two-Agent Baseline:

```text
11/11 passed
110/110
0 critical failures
```

Run:

```text
evals/runs/hermes-two-agent-mvp-test-run-2026-05-13.md
```

## Aktuelle Blocker

Praktisch, nicht konzeptionell:

1. Mosaic Prompter in Langdock anlegen.
2. Mosaic Admin in Langdock anlegen.
3. Airtable Base anlegen.
4. Seed Knowledge Items eintragen.
5. 10 echte Pilot-Knowledge-Items aufnehmen.
6. 11 Evalcases live laufen lassen.

## Self-Check

Vor Setup oder nach Aenderungen:

```powershell
powershell -ExecutionPolicy Bypass -File .\agency-os\tools\check-mosaic.ps1
```

## Codex-Arbeitsregel

Vor jeder groesseren Aenderung:

```text
1. Debug Map lesen.
2. Pruefen: MVP oder Backlog?
3. Pruefen: Prompter/Admin oder neuer Agent?
4. Pruefen: Lean Guardrail oder echtes Risiko?
5. Pruefen: Pattern, Skill Candidate oder Diamond Skill?
6. Kleine Aenderung machen.
7. Eval oder Konsistenzcheck aktualisieren.
```

## Merksatz

```text
Wenn Mosaic kompliziert wird, zurueck zu zwei Agenten.
```
