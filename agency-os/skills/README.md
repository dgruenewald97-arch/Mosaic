# Mosaic Skills

## Zweck

Skills sind wiederverwendbare, gepruefte Arbeitsmuster fuer Mosaic Prompter und Mosaic Admin.

Im MVP sind alle Skills zunaechst Kandidaten.

## Skill-Stufen

```text
Candidate
Reviewed
Diamond
Deprecated
```

## Candidate

Ein Skill Candidate ist ein Vorschlag.

Er darf:

- beschrieben werden
- getestet werden
- verbessert werden

Er darf nicht:

- automatisch als aktiv gelten
- ohne Review in Prompts eingebaut werden
- ohne Evalcase genutzt werden

## Diamond

Ein Diamond Skill ist:

- geprueft
- versioniert
- evaluiert
- einem Agentenmodus zugeordnet
- kurz genug fuer echte Nutzung

## Ordner

- `candidates/` - Skill-Kandidaten
- `diamond/` - spaeter gepruefte Skills

## Regel

```text
Viele Patterns.
Wenige sichtbare Agenten.
Nur gepruefte Skills werden Diamanten.
```
