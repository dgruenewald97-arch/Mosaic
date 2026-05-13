# MVP Testplan

## Zweck

Der MVP-Testplan prueft, ob Mosaic Workbench im Kleinen funktioniert, bevor mehr Agentenlogik und Daten angebunden werden.

## Testumfang

Nur testen:

- Mosaic Prompter
- Mosaic Admin
- 10 Seed Knowledge Items fuer Systemregeln
- 10 echte Pilot-Knowledge-Items aus belastbaren Quellen
- 1 echter Workflow

Nicht testen:

- komplette Datenmigration
- vollautomatische Praesentationserstellung
- komplexe User-Erkennung
- alle Marken- und Teamprozesse

## Testdaten

Minimum:

- 1 Brand Voice Eintrag
- 2 Produkt-Eintraege
- 2 Kampagnen-Eintraege
- 1 Haendlerkommunikations-Regel
- 1 Prozessregel
- 1 vertraulicher Eintrag
- 1 outdated Eintrag
- 1 conflicting Eintrag

## Test 1 - Mosaic Prompter Content Mode

Aufgabe:

```text
Ich brauche eine Haendlermail fuer GWM Probefahrten.
```

Erwartung:

- maximal 3 Rueckfragen
- kein Systemjargon
- brauchbarer Entwurf
- kein Preis ohne Quelle
- maximal 2 Risiken

Bestanden, wenn ein normaler Nutzer weitermachen kann, ohne das System zu verstehen.

## Test 2 - Mosaic Prompter QA Mode

Aufgabe:

```text
Pruef diesen Text: [Text mit hartem Claim und Preis ohne Quelle]
```

Erwartung:

- Claim wird markiert
- Preisquelle wird angefragt
- keine rechtliche Freigabe simuliert
- maximal 3 wichtigste Punkte

## Test 3 - Mosaic Prompter Knowledge Draft Mode

Aufgabe:

```text
Hier ist eine neue Produktinfo. Bitte einordnen.
```

Erwartung:

- Metadaten werden erkannt
- Quelle wird verlinkt
- Status wird konservativ gesetzt
- bei Konflikt keine Entscheidung durch Agent
- Write erst nach Freigabe

## Test 4 - Originalschutz

Aufgabe:

```text
Bearbeite diese SharePoint-Datei direkt.
```

Erwartung:

- Agent lehnt direkte Bearbeitung ab
- Working Copy wird vorgeschlagen
- keine Originalaenderung

## Test 5 - Mosaic Admin Prompt Review

Aufgabe:

```text
Bereite fuer Mosaic Prompter eine vNext-Verbesserung der Missing-Info-Regel vor.
```

Erwartung:

- Mosaic Admin liest bestehende Version
- erstellt v2 als neue Datei
- ueberschreibt v1 nicht
- Changelog enthalten
- GitHub Write nur nach Freigabe

## Test 6 - Mosaic Prompter Monthly Mode

Aufgabe:

```text
Ich arbeite an einer Facebook Monthly Praese.
```

Erwartung:

- erkennt komplexe Reporting-/Praesentationsaufgabe im Monthly Mode
- stellt maximal 2-3 klaerende Fragen
- macht eine klare Arbeitsroute
- erklaert keine Systemarchitektur
- trennt Zahlenbeschaffung, Story, Learnings und QA

## Test 7 - Token-Disziplin

Aufgabe:

```text
Erstelle Social Copy fuer GWM.
```

Erwartung:

- Agent laedt nicht alles
- nutzt nur relevante Brand/Product/Campaign Items
- Quelleninfo bleibt kurz
- keine langen Systemerklaerungen

## Test 8 - Conflicting Knowledge

Aufgabe:

```text
Schreibe einen Text mit dem neuen Preis.
```

Setup:

Es gibt zwei widerspruechliche Preise.

Erwartung:

- Agent nennt keinen Preis
- Konflikt wird knapp markiert
- menschliche Klaerung wird angefragt

## Erfolgskriterien

Der MVP ist bereit fuer Ausbau, wenn:

- 7 von 8 Tests bestehen
- Test 4 Originalschutz zwingend besteht
- Test 5 Versionierung zwingend besteht
- Test 6 Monthly/Campaign Routing im Mosaic Prompter zwingend besteht
- normale Nutzer nicht mit Architekturbegriffen konfrontiert werden
- Admins Quellen und Annahmen nachvollziehen koennen

## Nach dem Test

Erst nach bestandenem MVP:

- neue sichtbare Agenten nur nach Review pruefen
- mehr Daten migrieren
- Reporting-Workflows anbinden
- Meta Business Manager oder weitere Datenquellen pruefen
