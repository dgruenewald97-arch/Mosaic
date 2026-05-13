# Hermes Persistence Pattern

## Zweck

Dieses Dokument uebernimmt die nuetzliche Logik persistenter Agenten wie Hermes, ohne ein unkontrolliertes Selbstverbesserungssystem zu bauen.

Ziel:

```text
Nicht 200 Agenten.
20 gute Agenten mit 200 geprueften Skills.
```

## Was wir uebernehmen

### 1. Persistente Identitaet

Wichtige Agenten bekommen eine stabile Identitaet:

- Rolle
- Zweck
- Werte
- Grenzen
- Ton
- Safety-Regeln
- typische Entscheidungen

Das entspricht dem SOUL-Prinzip, wird bei uns aber nicht mystisch genutzt. Es ist eine klare Agentenidentitaet.

### 2. Kuratiertes Gedaechtnis

Wissen wird nicht als endloser Chatverlauf gespeichert.

Stattdessen:

- Airtable ist der strukturierte Memory Layer.
- GitHub speichert Agentenlogik und Procedures.
- kurze Agent-Memory-Dateien koennen nur fuer stabile Arbeitsmuster genutzt werden.

### 3. Skills statt Agenten-Zoo

Wiederkehrende Faehigkeiten werden als Skills oder Procedures gespeichert.

Beispiele:

- Facebook Monthly Story bauen
- Haendlermail strukturieren
- Kampagnenlearning extrahieren
- Claim-Risiko pruefen
- Produktinfo einordnen
- Design-Briefing aus Kampagnenidee ableiten

Ein Skill ist kleiner als ein Agent.

## Was wir nicht uebernehmen

### Keine autonomen Selbstverbesserungsloops

Das System darf sich nicht still selbst umbauen.

Verboten:

```text
Agent aendert eigenen Prompt ohne Freigabe.
Agent erzeugt neue Agenten ohne Freigabe.
Agent schreibt Skills live ohne Review.
Agent startet rekursive Verbesserungslaeufe.
```

### Keine Todeschleifen

Jeder Verbesserungsprozess hat harte Stop-Regeln:

- maximal ein Verbesserungsvorschlag pro Aufgabe
- kein automatischer Re-Run ohne Nutzerauftrag
- keine Kette aus Agent -> Director -> Architect -> Agent ohne Freigabe
- keine Selbstbewertungsschleife ueber mehrere Runden

## Drei Dateien pro Kern-Agent

Fuer wichtige Agenten kann spaeter diese Struktur genutzt werden:

```text
agents/{agent-name}/
|-- {agent-name}-de-v1.md
|-- SOUL.md
|-- WORKING-MEMORY.md
`-- SKILLS.md
```

### SOUL.md

Stabile Identitaet des Agenten.

Enthaelt:

- Mission
- Rolle
- Werte
- Grenzen
- Tonalitaet
- Safety-Regeln
- typische Entscheidungen

### WORKING-MEMORY.md

Kurze, kuratierte Arbeitsmuster.

Keine rohen Chatlogs.
Keine personenbezogenen Details ohne Freigabe.
Keine Fakten, die eigentlich in Airtable gehoeren.

### SKILLS.md

Liste gepruefter wiederverwendbarer Skills.

Jeder Skill hat:

- Name
- Zweck
- Trigger
- Input
- Ablauf
- Output
- Safety-Hinweise
- Version

## Skill-Lifecycle

```text
1. Pattern erkannt
2. Skill-Vorschlag erstellt
3. Mensch prueft
4. Architect versioniert
5. Skill wird in GitHub gespeichert
6. Skill wird im Agenten referenziert
7. Nutzung wird beobachtet
8. Verbesserung nur nach Freigabe
```

## Skill Mining

Hermes darf wiederkehrende Muster erkennen und als Skill-Kandidaten markieren.

Erlaubt:

```text
Diese Aufgabe kam mehrfach vor. Soll ich einen Skill-Vorschlag vorbereiten?
```

Nicht erlaubt:

```text
Ich habe daraus automatisch einen aktiven Skill gemacht.
```

Skill Mining nutzt:

- wiederkehrende Requests
- wiederkehrende QA-Risiken
- stabile Outputformate
- wiederkehrende Open Gaps
- positive Pilot-Rueckmeldungen

Ein Skill-Kandidat bleibt Draft, bis ein Mensch ihn prueft.

## Skill-Gate

Ein neuer Skill wird nur angelegt, wenn mindestens drei Punkte zutreffen:

- Aufgabe kommt wiederholt vor
- Ablauf ist stabil
- Outputformat ist klar
- Safety-Regeln sind bekannt
- Skill spart echte Zeit
- Skill verbessert Qualitaet
- Skill verhindert Fehler

Wenn nicht:

```text
Nur als Learning notieren, keinen Skill bauen.
```

## Diamond-Konzept

"Diamanten" sind keine Agenten. Diamanten sind gepruefte Skills.

Ein Diamond Skill ist:

- wiederverwendbar
- getestet
- sicher
- versioniert
- knapp dokumentiert
- einem Agenten zugeordnet

Beispiele:

```text
diamond-facebook-monthly-story-v1
diamond-haendlermail-structure-v1
diamond-claim-risk-check-v1
diamond-campaign-learning-extraction-v1
```

## Self-Improvement-Regel

Agenten duerfen Verbesserungen vorschlagen, nicht selbst live anwenden.

Erlaubt:

```text
Mir ist aufgefallen, dass diese Aufgabe wiederkehrt. Soll ich daraus einen Skill-Vorschlag erstellen?
```

Nicht erlaubt:

```text
Ich habe meinen Prompt aktualisiert und ab jetzt anders gearbeitet.
```

## Architect-Rolle

Nur der Agent Architect darf Skill- oder Prompt-Aenderungen vorbereiten.

Auch der Architect schreibt nur nach Freigabe.

## Safety-Stopps

Ein Skill darf nicht angelegt werden, wenn:

- er Originale veraendern wuerde
- er Preise ohne Quelle nutzt
- er harte Claims ohne Beleg nutzt
- er personenbezogene Daten unsauber verarbeitet
- er nicht klar getestet werden kann
- er einen anderen Agenten still veraendert

## Merksatz

```text
Das System wird nicht schlau, weil es sich unkontrolliert selbst veraendert.
Es wird schlau, weil gute Muster erkannt, geprueft, versioniert und wiederverwendet werden.
```
