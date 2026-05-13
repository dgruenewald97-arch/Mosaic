# Mosaic Demo Run - Current MVP

Stand: 2026-05-13

## Kontext

Diese Demo zeigt Mosaic Workbench im aktuellen MVP-Stand.

Wichtig:

```text
Das ist eine gefuehrte Demo auf Basis der vorhandenen agency-os-Dateien.
Airtable, Langdock Actions und SharePoint/Drive sind noch nicht live angebunden.
```

Die Demo beweist:

- Nutzerfuehrung
- Safety-Verhalten
- QA-Light-Logik
- Monthly-/Campaign-Routing im Mosaic Prompter
- Admin-Vernetzungsreport
- Keyfacts zum Schmunzeln

Sie beweist noch nicht:

- echte Airtable CRUD-Actions
- echte SharePoint/Drive Read-only Integration
- echte GitHub Write-Freigaben
- externen Launch-Status

## Demo 1 - Mosaic Prompter Content Mode

Nutzer:

```text
Ich brauche eine Haendlermail fuer GWM Probefahrten.
```

Mosaic Prompter:

```text
Alles klar. Ich schreibe sie allgemein fuer GWM Probefahrten und lasse Preise oder konkrete Aktionsbedingungen weg, solange keine Quelle vorliegt.

Betreff:
GWM Probefahrt anfragen: Jetzt Fahrerlebnis vor Ort anbieten

Hallo zusammen,

viele Kundinnen und Kunden wollen ein Fahrzeug nicht nur sehen, sondern erleben. Nutzt deshalb die Gelegenheit, aktiv auf Probefahrten mit GWM aufmerksam zu machen.

Ein kurzer Hinweis im Kundengespraech, auf eurer Website oder in der lokalen Kommunikation kann reichen, um Interesse in einen konkreten Termin zu verwandeln.

Vorschlag fuer eure Ansprache:

Erleben Sie GWM bei einer Probefahrt und lernen Sie Design, Komfort und Fahrgefuehl direkt vor Ort kennen. Vereinbaren Sie jetzt Ihren Termin bei Ihrem teilnehmenden Haendler.

Wenn ihr lokale Kommunikationsmittel benoetigt, koennen wir daraus gerne kurze Textbausteine fuer Website, Social Media oder E-Mail ableiten.

Viele Gruesse

Kurz pruefen:
- Modellnamen, Aktionszeitraum und teilnehmende Haendler fehlen noch.
- Preise oder Angebote wurden bewusst nicht genannt, weil keine belastbare Quelle angegeben ist.
```

Warum das passt:

- maximal knapp
- kein Systemjargon
- kein Preis ohne Quelle
- brauchbarer erster Entwurf

## Demo 2 - Mosaic Prompter QA Mode

Nutzer:

```text
Pruef diesen Text:
Jetzt Probefahrt sichern und vom besten Angebot des Jahres profitieren: GWM Modell X ab 199 Euro monatlich, nur diese Woche.
```

Mosaic Prompter:

```text
Kurzfazit:
Der Text ist kommunikativ stark, aber aktuell zu riskant, weil Preis, Aktionszeitraum und Superlativ nicht belegt sind.

Sollte geaendert werden:
- "bestes Angebot des Jahres" ist ein harter Claim und braucht einen Beleg.
- "ab 199 Euro monatlich" darf ohne aktuelle Angebotsquelle nicht verwendet werden.
- "nur diese Woche" braucht einen belegten Gueltigkeitszeitraum.

Vorschlag:
Jetzt Probefahrt anfragen und GWM direkt vor Ort erleben. Informationen zu aktuellen Angeboten erhalten Sie bei Ihrem teilnehmenden Haendler.
```

Warum das passt:

- harte Claims werden erkannt
- Preis bleibt blockiert
- keine rechtliche Freigabe
- kurzer brauchbarer Ersatz

## Demo 3 - Mosaic Prompter Monthly Mode

Nutzer:

```text
Ich arbeite an einer Facebook Monthly Praese.
```

Mosaic Prompter:

```text
Alles klar. Ich wuerde das als Reporting-Aufgabe aufziehen: Zahlen einordnen, Auffaelligkeiten finden, Learnings formulieren und naechste Massnahmen ableiten.

Ich brauche nur:
1. Geht es um organisch, paid oder beides?
2. Soll ich eine bestehende Praese verbessern oder eine Monatsstory formulieren?

Dann starte ich mit einer klaren Monatsstruktur: Kurzfazit, Performance, auffaellige Posts, Learnings, Empfehlungen.
```

Warum das passt:

- Prompter erkennt komplexere Aufgabe
- nur zwei Rueckfragen
- kein Architektursprech
- naechster Schritt ist klar
- kein weiterer sichtbarer Agent noetig

## Demo 4 - Mosaic Network Report

Admin:

```text
Erstelle einen Mosaic Network Report fuer den aktuellen MVP-Stand.
```

Mosaic Admin:

```text
Kurzfazit
Mosaic ist konzeptionell gut vernetzt und bereit fuer den praktischen Aufbau. Die Architektur, Safety-Regeln, Agentenmodi und Demo-Flows passen zusammen. Der groesste Blocker ist nicht Konzept, sondern Befuellung: Airtable und echte Pilot-Knowledge-Items fehlen noch live.

Keyfacts zum Schmunzeln
- Mosaic hat schon ziemlich gute Hausregeln. Jetzt braucht das Haus noch echte Moebel aus Quellen.
- Der QA Mode ist wachsam genug, um Preise im Flur stehen zu lassen, bis jemand eine Quelle mitbringt.
- Der Prompter kann sortieren. Er wartet nur noch darauf, dass Airtable ihm echte Karteikarten reicht.

Memory Health
Gelb. Die Operating-Knowledge ist sauber vorbereitet, aber fachliches Pilot-Wissen aus echten Quellen fehlt noch.

Vernetzung
- 2 aktive MVP-Agentenprompts vorhanden.
- 1 Procedure fuer Originalschutz vorhanden.
- 1 Workflow fuer Briefing to Campaign als Referenz vorhanden.
- Airtable-Schema, Seed Items und Pilot-Intake-Template vorhanden.
- Vernetzungsreport und Keyfacts sind als Admin-Funktion definiert.

Risiken
- Keine echten Produktpreise oder Angebote nutzen, bis Quellen hinterlegt sind.
- Langdock Actions muessen technisch abgenommen werden.
- SharePoint/Drive muss read-only validiert werden.

Naechste Schritte
1. Airtable Base anlegen.
2. Seed Knowledge Items eintragen.
3. 10 echte Pilot-Knowledge-Items aus Quellen aufnehmen.
4. Mosaic Prompter und Mosaic Admin in Langdock testen.
5. Haendlermail-Demo mit QA Mode abnehmen.
```

Warum das passt:

- Admin bekommt Systemblick
- Keyfacts sind charmant, aber nicht erfunden
- Risiken bleiben klar

## Demo 5 - Originalschutz

Nutzer:

```text
Bearbeite diese SharePoint-Datei direkt.
```

Mosaic Prompter:

```text
Das Original veraendere ich nicht.

Ich kann den Inhalt als Quelle lesen und dir eine Arbeitskopie oder einen neuen Entwurf vorbereiten. Soll ich eine Working Copy vorschlagen?
```

Warum das passt:

- Originalschutz greift
- keine direkte Bearbeitung
- Freigabe vor Working Copy

## Demo-Fazit

Mosaic Workbench wirkt im MVP wie eine steuerbare Marketing-Werkbank:

- normale Nutzer bekommen einfache Outputs
- Admins sehen Quellen, Annahmen, Luecken und Vernetzung
- Safety-Regeln greifen sichtbar
- Skalierung passiert ueber Skills und Memory, nicht ueber Agentenwildwuchs

## Was als Naechstes echt live werden muss

```text
1. Airtable Base bauen.
2. Pilot-Knowledge aus echten Quellen eintragen.
3. Langdock Agents anlegen.
4. Technical Action Check ausfuehren.
5. Diese Demo mit echten Actions wiederholen.
```
