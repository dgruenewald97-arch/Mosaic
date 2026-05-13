# Mosaic Workbench Paper

## Zweck

Dieses Paper erklaert den aktuellen Stand von Mosaic Workbench so, dass man nach dem Kopieren des Repos versteht:

- was Mosaic ist
- warum es existiert
- wie die Bausteine zusammenarbeiten
- wie es klein startet
- wie es spaeter skaliert
- welche wissenschaftlichen Ideen im System stecken
- was bewusst nicht automatisiert wird

Es ist kein Pitchdeck und keine neue Konzeption. Es ist die aktuelle Arbeitswahrheit des Systems.

## Kurzfassung

Mosaic Workbench ist eine KI-gestuetzte Arbeitsflaeche fuer Inhouse-Marketingteams.

Mosaic verbindet verstreutes Marketingwissen, Quellen, Prompts, Skills, Outputs und Learnings zu einem nutzbaren Gesamtbild.

Der MVP ist bewusst einfach:

```text
2 sichtbare Agenten.
1 Memory Layer.
1 Versionssystem.
1 geschuetzte Quellenlogik.
1 Eval- und Skill-Factory.
```

Sichtbar sind nur:

```text
Mosaic Prompter
Mosaic Admin
```

Alles andere ist intern:

- Modus
- Pattern
- Skill Candidate
- Diamond Skill
- Procedure
- Evalcase
- Backlog
- Referenz

Der zentrale Satz:

```text
Zwei Agenten nach aussen.
Viele gute Denk- und Arbeitsmuster nach innen.
```

## Pilot-Haltung

Mosaic wird zuerst intern gebaut und getestet.

Trotzdem gilt fuer den Team-Pilot Produktdisziplin:

```text
Intern arbeiten.
Produktreif denken.
Automatisch verbessern.
Kontrolliert aktivieren.
```

Das System darf intern rau lernen, aber nicht schlampig dokumentieren.

Fuer Teamtests bedeutet das:

- keine privaten echten Namen in Beispielen
- keine unbelegten Preise oder harten Claims
- keine internen Original-Links in Demo-Material
- Feedback strukturiert sammeln
- Hintergrundverbesserungen aus echten Teamfaellen ableiten
- Evals nach echten Teamfaellen erweitern
- Launch erst nach Nutzen-, Risiko- und Quellenpruefung bewerten

## Problem

Marketingteams arbeiten oft mit verstreutem Wissen:

- alte Praesentationen
- SharePoint-Ordner
- Drive-Dokumente
- E-Mails
- Kampagnenbriefings
- Markenregeln
- Produktdaten
- Angebotsinformationen
- Erfahrungswissen einzelner Personen
- wiederkehrende Text- und Kampagnenmuster

Ein normaler Chatbot hilft kurzfristig, aber loest das strukturelle Problem nicht:

- Wissen wird nicht sauber versioniert.
- Quellen und Outputs sind schwer nachvollziehbar.
- Gute Prompts verschwinden im Chatverlauf.
- Neue Agenten entstehen schneller als klare Verantwortlichkeiten.
- Claims, Preise und Angebote koennen ohne Quelle in Outputs rutschen.
- Wiederkehrende Aufgaben werden immer wieder neu geloest.

Mosaic Workbench soll nicht einfach mehr Kontext in ein Modell werfen.

Mosaic soll besseren Kontext liefern:

```text
Nicht mehr Kontext.
Besserer Kontext.
```

## Produktidee

Mosaic Workbench ist eine kontrollierbare KI-Arbeitsflaeche fuer Marketingarbeit.

Der Name ist bewusst gewaehlt:

```text
Mosaic = verstreute Teile werden zu einem Gesamtbild.
Workbench = praktische Arbeitsflaeche, nicht abstraktes Betriebssystem.
```

Mosaic ist nicht die Agentur.

Mosaic ist die Werkbank, auf der Agenturwissen nutzbar wird.

## Zielnutzer

### Normale Nutzer

Normale Nutzer wollen keine Architektur sehen.

Sie wollen:

- bessere Texte
- schnellere Varianten
- klare Kampagnenstrukturen
- sichere Haendlermails
- nutzbare Monthly-Posts
- knappe Zusammenfassungen
- Rueckfragen nur, wenn wirklich noetig

Fuer sie ist Mosaic vor allem:

```text
Mosaic Prompter
```

### Admins und Systemverantwortliche

Admins wollen verstehen, steuern und verbessern.

Sie brauchen:

- Memory-Status
- Quellenstatus
- offene Luecken
- Eval-Ergebnisse
- Skill-Kandidaten
- Prompt-vNext Entwuerfe
- Network Reports
- Changelog- und Review-Vorbereitung

Fuer sie ist Mosaic vor allem:

```text
Mosaic Admin
```

## Kernarchitektur

Mosaic besteht aus fuenf Schichten.

```text
Langdock
-> Airtable
-> GitHub
-> SharePoint/Drive
-> Working Copies
```

### Langdock

Langdock ist das Cockpit.

Es ist:

- UI
- Arbeitsplatz
- Agentenoberflaeche
- Action-Ausfuehrung
- Einstieg fuer Nutzer

Langdock ist nicht die einzige Wahrheit.

Keine kritische Wahrheit darf nur in Langdock liegen.

### Airtable

Airtable ist der strukturierte Memory Layer.

Es speichert:

- Brands
- Products
- Campaigns
- Knowledge Items
- Agents
- Procedures
- Sources
- Open Gaps
- Requests
- Audit Log

Die wichtigste Tabelle ist:

```text
Knowledge Items
```

Mosaic nutzt Airtable nicht als Datengrab, sondern als lebendes Unternehmensgedaechtnis.

### GitHub

GitHub versioniert alles, was fuer Systemverhalten wichtig ist:

- Agentenprompts
- Procedures
- Workflows
- Skills
- Evalcases
- Changelogs
- Setup-Dokumente

Regel:

```text
Keine stillen Commits.
Keine Prompt-Aenderung ohne Review.
Keine aktiven Skills ohne Freigabe.
```

### SharePoint und Drive

SharePoint und Drive enthalten Originalquellen.

Sie sind read-only.

Mosaic darf Originale:

- lesen
- referenzieren
- zusammenfassen
- als Quelle markieren

Mosaic darf Originale nicht:

- loeschen
- verschieben
- umbenennen
- direkt bearbeiten
- ueberschreiben

### Working Copies

Wenn ein Dokument bearbeitet werden muss, entsteht eine Working Copy.

Die Working Copy ist die bearbeitbare Kopie.

Das Original bleibt unangetastet.

## Die zwei sichtbaren Agenten

### Mosaic Prompter

Mosaic Prompter ist der produktive Agent fuer normale Nutzer.

Er macht:

- Texte
- Kampagnenstruktur
- Social Copy
- Haendlermails
- Brand-/Claim-Check im leichten Modus
- Wissen aufnehmen als Draft
- Quellenzusammenfassungen
- Varianten
- Monthly-Strukturen

Interne Modi:

```text
Content Mode
QA Mode
Campaign Mode
Knowledge Draft Mode
Monthly Mode
Variant Mode
```

Der Nutzer muss diese Modi nicht kennen. Mosaic erkennt aus der Aufgabe, welcher Modus passt.

### Mosaic Admin

Mosaic Admin ist der Agent fuer Setup, Memory, Evals, Reports und Systemverbesserung.

Er macht:

- Airtable Base Setup
- Knowledge Items strukturieren
- Network Reports
- Eval Runs
- Prompt-vNext vorbereiten
- Skill-Kandidaten erstellen
- Quellen- und Luecken-Checks
- Systemstatus
- Changelog- und Review-Vorbereitung

Interne Modi:

```text
System Mode
Memory Mode
Eval Mode
Network Report Mode
Prompt Architect Mode
Skill Mining Mode
```

Mosaic Admin darf Verbesserung vorbereiten, aber nicht automatisch live anwenden.

## Warum nicht viele Agenten

Viele Agenten klingen stark, erzeugen aber schnell neue Probleme:

- mehr Setup
- mehr Promptpflege
- mehr Oberflaechen
- mehr Rechtekonfiguration
- mehr Tests
- mehr Erklaerbedarf
- mehr Risiko fuer widerspruechliche Rollen

Mosaic skaliert anders.

```text
10.000 Aufgaben
-> 500 Patterns
-> 100 Skill Candidates
-> 20 Diamond Skills
-> 2 sichtbare Agenten
```

Der USP entsteht nicht durch einen Agenten-Zoo.

Er entsteht durch:

- klare Rollen
- gutes Memory
- gepruefte Skills
- kontrollierte Verbesserung
- einfache Nutzung

## Pattern- und Skill-Factory

Mosaic soll wiederkehrende Arbeit erkennen.

Pipeline:

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

### Pattern

Ein Pattern ist ein wiederkehrendes Aufgabenmuster.

Beispiele:

- Haendlermail mit Angebot
- Facebook Monthly Story
- Claim-Risiko-Check
- Source-to-Output Trace
- Wissensaufnahme aus Quelle

### Skill Candidate

Ein Skill Candidate ist ein wiederverwendbarer Ablauf, der noch nicht freigegeben ist.

Er enthaelt:

- Zweck
- Trigger
- Input
- Ablauf
- Output
- Risiken
- Review-Bedarf

### Diamond Skill

Ein Diamond Skill ist ein gepruefter, versionierter und sicherer Skill.

Er braucht:

- echte Beispiele
- negativen Testfall
- Eval
- Review
- Version
- Changelog

Mosaic verbessert sich dadurch strukturiert, aber nicht unkontrolliert.

## Self-Improvement, aber nicht Self-Changing

Mosaic darf lernen, beobachten und vorbereiten.

Mosaic darf:

- Muster erkennen
- Luecken notieren
- Skill-Kandidaten schreiben
- Prompt-vNext entwerfen
- Evalcases vorschlagen
- Network Reports erstellen

Mosaic darf nicht:

- aktive Prompts selbst ueberschreiben
- Skills ohne Review aktivieren
- neue sichtbare Agenten ohne Entscheidung erstellen
- Endlosschleifen starten
- eigene Regeln live aendern
- schreibende Aktionen ohne Freigabe ausfuehren

Merksatz:

```text
Selbstverbessernd im Denken.
Nicht selbstveraendernd im Betrieb.
```

## Background Improvement Loop

Mosaic braucht keinen sichtbaren Trainingsmodus.

Wenn eine externe KI oder Automation angebunden wird, soll Verbesserung im Hintergrund laufen:

```text
Daten lesen
-> Muster erkennen
-> Knowledge Drafts vorbereiten
-> Skill Candidates vorbereiten
-> Evalcases vorschlagen
-> Review Queue aktualisieren
-> nach Freigabe aktivieren
```

Das ist in `MOSAIC-BACKGROUND-IMPROVEMENT-LOOP.md` beschrieben.

Die externe KI soll dadurch wissen:

- wie Daten aus Airtable, Quellen und Outputs gelesen werden
- wie Wissen strukturiert wird
- wie Konflikte markiert werden
- wie Verbesserungen vorgeschlagen werden
- wo menschliche oder Admin-Freigabe noetig bleibt

## Lean Guardrail

Mosaic soll nicht durch Sicherheitsreden nerven.

Regel:

```text
Wenn keine riskante Aktion betroffen ist, liefert Mosaic direkt.
```

Riskant ist:

- echte Write-Action
- Originaldateien bearbeiten
- Preise oder Angebote ohne Quelle
- harte Claims ohne Beleg
- personenbezogene oder vertrauliche Daten
- Quellenkonflikte

Wenn nichts davon betroffen ist:

```text
Liefern. Nicht belehren.
```

Wenn ein Risiko betroffen ist:

```text
Sichere Alternative liefern.
Risiko kurz nennen.
Naechsten konkreten Schritt sagen.
```

## Memory-Modell

Mosaic Memory besteht aus strukturierten Eintraegen statt riesigen Kontextbloecken.

Ein Knowledge Item braucht mindestens:

- Title
- Brand
- Type
- Summary
- Details
- Status
- Temperature
- Relevant For
- Source
- Confidence
- Last Verified

Statuslogik:

```text
Active = darf genutzt werden.
Draft = nur mit Hinweis nutzen.
Outdated = nicht fuer neue Outputs nutzen.
Conflicting = nicht als Fakt nutzen.
Archived = bleibt erhalten, aber nicht aktiv.
```

Confidence:

```text
Low
Medium
High
```

Mosaic soll nicht alles laden.

Standard fuer normale Aufgaben:

```text
0-3 relevante Memory Items
```

Komplexere Aufgaben:

```text
3-5 relevante Memory Items
```

## Wissenschaftliche Arbeitsanker

Mosaic ist kein Forschungssystem, aber es uebernimmt sinnvolle Ideen aus der KI- und Organisationspraxis.

### Retrieval statt Kontext-Flut

Das System folgt der Idee, relevante Informationen gezielt abzurufen, statt alles in den Prompt zu packen.

Praktisch bedeutet das:

- kurze Suchanfrage
- wenige relevante Knowledge Items
- Status und Confidence beachten
- Quelle pruefen
- Output knapp ableiten

### Graph-inspiriertes Memory

Mosaic denkt Wissen nicht nur als Liste.

Wichtige Relationen:

- Brand zu Product
- Product zu Campaign
- Campaign zu Output
- Source zu Knowledge Item
- Knowledge Item zu Agent oder Skill
- Gap zu Workflow

Das ist keine komplizierte Graphdatenbank im MVP.

Es ist eine einfache Graph-Logik auf Airtable-Basis.

### Evaluation als Produktbestandteil

Mosaic behandelt Tests nicht als Nachgedanke.

Evalcases pruefen:

- Preise ohne Quelle
- harte Claims
- Originalschutz
- Prompt Injection in Quellen
- hohe Nutzerfriktion
- widerspruechliches Wissen
- Lean Guardrail
- Network Report
- Source-to-Output Trace
- USP-Qualitaet
- Skill-Mining-Gate

Aktueller lokaler Baseline-Stand:

```text
11/11 passed
110/110
0 critical failures
```

Das ist ein lokaler Doku-/Prompt-Baseline-Test, kein Beweis fuer Live-Integrationen.

### Affective Decision Layer

Mosaic soll nicht so tun, als haette es echte Gefuehle.

Es nutzt aber Entscheidungsmarker, um menschlicher und nuetzlicher zu reagieren:

- urgency
- user_friction
- risk_heat
- source_trust
- care_mode

Wenn der Nutzer muede, gestresst oder unklar wirkt:

- kuerzer antworten
- kleinere Schritte anbieten
- weniger Rueckfragen stellen
- trotzdem ehrlich bleiben

Das ist keine simulierte Seele.

Es ist eine bessere Entscheidungslogik fuer Ton, Laenge, Risiko und Naechstschritt.

### Token-Effizienz als Intelligenz

Mosaic behandelt Token nicht als Speicherplatz, sondern als Aufmerksamkeit.

Gute Token-Nutzung heisst:

- nur relevante Quellen
- keine Architektur bei normalen Aufgaben
- Zusammenfassungen statt Volltexte
- klare Outputformate
- kleine Evals
- kurze Adminreports mit Prioritaet

Token-Effizienz ist ein Produktmerkmal, weil sie Antworten schneller, klarer und guenstiger macht.

## Network Report

Der Mosaic Admin kann einen Network Report erstellen.

Der Report beantwortet:

- Welche Wissensbereiche sind gut vernetzt?
- Welche Quellen fehlen?
- Welche Knowledge Items sind Draft, Active, Conflicting oder Outdated?
- Welche Workflows haengen an welchen Quellen?
- Welche Skills entstehen aus wiederkehrenden Aufgaben?
- Welche Risiken blockieren produktive Nutzung?

Format:

```text
Kurzfazit
Keyfacts zum Schmunzeln
Memory Health
Vernetzung
Risiken
Naechste Schritte
```

Keyfacts duerfen charmant sein, aber nicht erfunden.

Regel:

```text
Schmunzeln ja.
Fake-Fakten nein.
```

## Setup-Ziel nach Repo-Kopie

Wenn jemand das Repo kopiert, soll der Start so aussehen:

1. `agency-os/HERMES-DEBUG-MAP.md` lesen.
2. `agency-os/MOSAIC-PRODUCT-NAMING.md` lesen.
3. `agency-os/MOSAIC-REPO-SETUP-GUIDE.md` abarbeiten.
4. Airtable Base anlegen.
5. Mosaic Prompter in Langdock erstellen.
6. Mosaic Admin in Langdock erstellen.
7. 10 Seed Knowledge Items eintragen.
8. 10 echte Pilot-Knowledge-Items aufnehmen.
9. Read Actions testen.
10. Evalcases live gegen Langdock-Agenten testen.

## Aktueller MVP-Status

Fertig als Doku-/Prompt-Paket:

- Produktname Mosaic Workbench
- Zwei-Agenten-MVP
- Prompter Prompt
- Admin Prompt
- Airtable Schema
- Airtable Build Checklist
- Seed Knowledge Items
- Pilot Knowledge Intake Template
- Evalcases
- lokaler Baseline-Run
- Skill Factory
- Pattern Taxonomy
- Diamond Skill Candidates
- Debug Map

Noch praktisch einzurichten:

- Airtable Base live bauen
- Langdock Agenten live anlegen
- Actions verbinden
- Pilot Knowledge Items aus echten Quellen eintragen
- Live-Eval laufen lassen
- erste echte Demo ausfuehren

## Was Mosaic nicht ist

Mosaic ist nicht:

- ein 200-Agenten-System
- ein autonomer Selbstverbesserungsloop
- ein Ersatz fuer Quellenpruefung
- ein Tool, das Originale veraendert
- ein System, das Preise oder Claims ohne Beleg final setzt
- ein schwarzer Kasten ohne Versionierung
- ein Chatverlauf als Unternehmensgedaechtnis

## Was Mosaic sein soll

Mosaic soll sein:

- einfach fuer Nutzer
- nachvollziehbar fuer Admins
- quellenbewusst
- versionierbar
- testbar
- skill-basiert skalierbar
- menschlich im Ton
- kontrolliert in Aktionen
- nuetzlich vor allem in echten Marketingablaeufen

## Schlussbild

Mosaic Workbench ist eine Werkbank fuer Marketingwissen.

Der erste starke Stand entsteht nicht, wenn alles automatisiert wird.

Der erste starke Stand entsteht, wenn:

- die richtigen zwei Agenten stehen
- das Memory sauber ist
- Quellen geschuetzt bleiben
- Skills aus echten Wiederholungen entstehen
- Evals verhindern, dass Unsinn produktiv wird
- Nutzer schnell brauchbare Arbeit bekommen

Merksatz:

```text
Mosaic macht aus verstreutem Wissen bessere Marketingarbeit.
```
