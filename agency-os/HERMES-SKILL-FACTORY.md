# Hermes Skill Factory

## Zweck

Die Skill Factory verwandelt viele Aufgabenmuster in wenige gute Skills.

Sie ist die Antwort auf:

```text
Koennen wir zehntausende Agenten bauen?
```

Nein.

Wir bauen:

```text
2 sichtbare Agenten.
Viele Patterns.
Viele Skill-Kandidaten.
Wenige Diamond Skills.
```

## Pipeline

```text
Request
-> Pattern erkennen
-> Kategorie zuordnen
-> Modus waehlen
-> Output erzeugen
-> Feedback sammeln
-> Wiederholung erkennen
-> Skill Candidate erstellen
-> Evalcase erstellen
-> Review
-> Diamond Skill
```

## Rollen

### Mosaic Prompter

Nutzt Skills fuer produktive Arbeit:

- Copy
- QA light
- Campaign
- Monthly
- Varianten
- Knowledge Drafts

### Mosaic Admin

Betreibt die Skill Factory:

- Patterns clustern
- Skill-Kandidaten schreiben
- Evalcases erstellen
- Reviews vorbereiten
- Diamond Skills versionieren

## Pattern-Schwelle

Ein Skill Candidate entsteht, wenn mindestens drei Punkte zutreffen:

- Aufgabe kam mindestens 3-mal vor
- Outputformat ist stabil
- Nutzer spart sichtbar Zeit
- Fehler werden verhindert
- Skill passt zu Prompter oder Admin
- Evalcase ist moeglich

## Diamond-Schwelle

Ein Diamond Skill entsteht, wenn:

- 3 echte Beispiele vorliegen
- 1 negativer Testfall vorliegt
- Eval bestanden ist
- Review erfolgt ist
- Version und Changelog stehen

## Erste Skill-Kandidaten

```text
diamond-haendlermail-structure-v1
diamond-claim-risk-check-v1
diamond-facebook-monthly-story-v1
diamond-source-to-output-trace-v1
```

## Was nicht passiert

- keine neuen sichtbaren Agenten fuer jeden Skill
- keine automatische Aktivierung
- keine stillen Prompt-Aenderungen
- keine riesigen Skill-Bibliotheken ohne Eval

## Skalierungslogik

```text
10.000 Aufgaben
-> 500 Patterns
-> 100 Skill Candidates
-> 20 Diamond Skills
-> 2 sichtbare Agenten
```

## Merksatz

```text
Mosaic skaliert nicht durch mehr Koepfe.
Mosaic skaliert durch bessere Griffe.
```
