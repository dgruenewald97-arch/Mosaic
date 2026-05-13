# Mosaic Pattern Library

## Zweck

Diese Library sammelt wiederkehrende Agentur-Aufgabenmuster.

Patterns sind noch keine Skills.

```text
Pattern = beobachtetes Aufgabenmuster
Skill Candidate = strukturierter Vorschlag
Diamond Skill = geprueft, versioniert, nutzbar
```

## Warum

Mosaic soll nicht zehntausende Agenten bauen.

Mosaic soll zehntausende Aufgabenmuster erkennen, clustern und in wenige gute Skills uebersetzen.

## Pattern-Kategorien

- `copy`
- `qa`
- `campaign`
- `social`
- `monthly`
- `knowledge`
- `learning`
- `admin`
- `strategy`
- `variant`
- `source-trace`
- `memory-graph`

## Pattern-Felder

```text
id
name
category
user_intent
trigger_phrases
input_shape
output_shape
common_risks
memory_needed
agent_mode
skill_candidate
eval_case
status
```

## Status

```text
Observed
Candidate
Tested
Diamond
Archived
```

## Regel

Ein Pattern darf beliebig gesammelt werden.

Ein aktiver Skill entsteht erst nach:

1. wiederholtem Auftreten
2. klarem Outputformat
3. Evalcase
4. Review
5. Versionierung
