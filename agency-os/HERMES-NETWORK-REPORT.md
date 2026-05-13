# Hermes Network Report

## Zweck

Der Hermes Network Report zeigt Admins, wie gut das Marketing-Gedaechtnis vernetzt ist.

Er ist kein Standardnutzer-Feature. Normale Nutzer sollen weiter einfache Arbeitsplaetze sehen. Der Report hilft Admins, Qualitaet, Luecken und Abhaengigkeiten im Agency OS zu verstehen.

## Kernfrage

```text
Welche Marken, Quellen, Knowledge Items, Agenten, Workflows und offenen Luecken haengen zusammen - und wo reisst das Netz?
```

## Warum das wichtig ist

Ein KI-System wird nicht besser, nur weil mehr Dokumente hochgeladen werden.

Es wird besser, wenn Wissen:

- eine Quelle hat
- mit Marken, Produkten und Kampagnen verbunden ist
- fuer konkrete Agenten nutzbar ist
- aktuell und vertrauenswuerdig bleibt
- Konflikte sichtbar macht
- offene Luecken nicht versteckt

## Report-Frequenz

Empfehlung fuer MVP:

```text
manuell auf Anfrage
```

Spaeter:

```text
monatlich oder vor wichtigen Kampagnenphasen
```

Keine automatische Dauerschleife. Kein Self-Improvement ohne Freigabe.

## Zielgruppe

Primaer:

- Admins
- Agent Architect
- Knowledge Curator
- Marketing Operations

Nicht primaer:

- normale Content-Nutzer
- externe Stakeholder
- ungefilterte Team-Kommunikation

## Datenquellen

Der Report nutzt nur strukturierte Systemdaten:

- `Knowledge Items`
- `Sources`
- `Brands`
- `Products`
- `Campaigns`
- `Agents`
- `Procedures`
- `Open Gaps`
- `Audit Log`

Originaldokumente werden nicht blind komplett gelesen. Bei Bedarf werden nur Metadaten, Summarys oder gezielte Quellen genutzt.

## Standard-Report

```text
Hermes Network Report

1. Kurzfazit
2. Keyfacts zum Schmunzeln
3. Memory Health
4. Vernetzungsgrad
5. Quellenabdeckung
6. Agenten-Abhaengigkeiten
7. Workflow-Abdeckung
8. Risiken und Konflikte
9. Offene Luecken
10. Empfohlene naechste Schritte
```

## 1. Kurzfazit

Maximal 5 Saetze:

- Was ist insgesamt gesund?
- Wo fehlt Verbindung?
- Welche Luecke blockiert echte Arbeit?
- Welcher naechste Schritt hat den groessten Hebel?

## 2. Keyfacts zum Schmunzeln

Kurze, pointierte Admin-Hinweise aus echten Systemdaten.

Regeln:

- maximal 3-5 Keyfacts
- faktenbasiert, nicht erfunden
- keine privaten Namen
- keine Witze auf Kosten von Menschen
- keine Verharmlosung bei Datenschutz, Preisen, Claims oder Originalschutz

Beispiel:

```text
Keyfacts zum Schmunzeln
- 4 Knowledge Items sind noch im Einzelzimmer: keine Quelle, keine Kampagne, kein Agent haengt dran.
- Brand QA ist wachsam, wartet aber noch auf echte Brand-Voice-Quellen.
- Preise bleiben heute im Wartezimmer, weil keine belastbare Quelle hinterlegt ist.
```

Die detaillierten Regeln stehen in `HERMES-KEYFACTS.md`.

## 3. Memory Health

Kennzahlen:

- Anzahl `Active` Knowledge Items
- Anzahl `Draft`
- Anzahl `Outdated`
- Anzahl `Conflicting`
- Anteil Items mit Quelle
- Anteil Items mit `Last Verified`
- Anteil Items mit `Confidence: High`

Ampel:

```text
Gruen: genug aktive, belegte und aktuelle Items
Gelb: nutzbar, aber Luecken sichtbar
Rot: Outputs riskant, weil Quellen oder Status fehlen
```

## 4. Vernetzungsgrad

Prueft:

- Knowledge Items ohne Brand
- Knowledge Items ohne Source
- Knowledge Items ohne Relevant-For-Zuordnung
- Sources ohne verknuepfte Knowledge Items
- Agents ohne Knowledge Dependencies
- Campaigns ohne Sources
- Products ohne Last Verified

Beispielausgabe:

```text
3 isolierte Knowledge Items gefunden.
2 Quellen sind noch mit keinem Knowledge Item verknuepft.
Brand QA hat klare Safety-Regeln, aber noch keine echte markenspezifische Brand Voice Quelle.
```

## 5. Quellenabdeckung

Zeigt:

- Welche Marken haben aktive Quellen?
- Welche Produktdaten sind belegt?
- Welche Angebote oder Preise fehlen oder sind nicht nutzbar?
- Welche Quellen sind Originale und muessen geschuetzt bleiben?

Regel:

```text
Keine Preise, Angebote oder harten Claims als "abgedeckt" markieren, wenn keine belastbare aktive Quelle existiert.
```

## 6. Agenten-Abhaengigkeiten

Zeigt pro Agent:

- Zweck
- aktive Version
- wichtigste Knowledge Dependencies
- erlaubte Actions
- offene Risiken
- letzte Aenderung

Beispiel:

```text
Content Assistant
Version: v1
Abhaengig von: Brand Voice, Product Facts, Campaign Context, Safety Rules
Risiko: Echte Brand Voice Quellen fehlen noch fuer produktive Markenoutputs.
```

## 7. Workflow-Abdeckung

Prueft ausgewaehlte Workflows:

- Haendlermail
- Facebook Monthly
- Briefing to Campaign

Fragen:

- Gibt es genug aktive Knowledge Items?
- Gibt es Quellen?
- Gibt es QA-Regeln?
- Gibt es klare Outputformate?
- Gibt es offene Blocker?

## 8. Risiken und Konflikte

Zeigt nur die wichtigsten Punkte:

- `Conflicting` Knowledge Items
- fehlende Quellen fuer aktive Claims
- veraltete Produktdaten
- Agenten mit zu breiten Write-Rechten
- Originalquellen ohne `Do Not Modify`
- fehlende Audit-Log-Eintraege

## 9. Offene Luecken

Sortierung:

1. Blocker
2. High
3. Medium
4. Low

Pro Luecke:

- Gap
- betroffener Workflow
- Risiko
- vorgeschlagener Fix
- Owner, falls vorhanden

## 10. Empfohlene naechste Schritte

Maximal 5 Schritte.

Jeder Schritt muss konkret sein:

```text
Gut:
Brand Voice Quelle fuer GWM als Active Knowledge Item anlegen.

Schlecht:
Mehr Wissen einpflegen.
```

## Optional: Graph-Ansicht

Spaeter kann der Report eine einfache Graph-Ansicht ausgeben:

```text
Brand -> Product -> Campaign -> Knowledge Item -> Source -> Agent -> Workflow -> Gap
```

MVP reicht als Textreport.

## Langdock-Nutzung

Sichtbar nur fuer Admins:

```text
Systemstatus
Vernetzungsreport
Offene Luecken
```

Beispielprompt:

```text
Erstelle einen Hermes Network Report fuer den aktuellen MVP-Stand.
```

Antwortformat:

```text
Kurzfazit
Keyfacts zum Schmunzeln
Memory Health
Vernetzung
Risiken
Naechste Schritte
```

## Safety

Der Report darf:

- Luecken sichtbar machen
- Verbesserungen vorschlagen
- isolierte Daten markieren
- Konflikte benennen

Der Report darf nicht:

- selbst Knowledge Items aendern
- Agentenprompts live verbessern
- neue Agenten anlegen
- Originale bearbeiten
- automatische Verbesserungsloops starten

## MVP-Erfolg

Der Report ist gut, wenn ein Admin nach 5 Minuten weiss:

- welches Wissen nutzbar ist
- welche Quellen fehlen
- welche Agenten sauber angebunden sind
- welche Workflows pilotierbar sind
- welcher naechste Schritt am meisten bringt
