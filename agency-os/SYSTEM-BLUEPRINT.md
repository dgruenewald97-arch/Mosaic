# Mobility Minds Agency OS - System Blueprint

## Kurzfassung

Wir bauen keine Sammlung einzelner Agenten. Wir bauen ein Agency OS fuer Mobility Minds: ein lernendes System, das Unternehmenswissen strukturiert speichert, daraus bessere Agenten baut und die taegliche Arbeit einer Inhouse-Agentur vereinfacht.

Der zentrale Agent ist der Agent Architect. Er versteht die Systemstruktur, erkennt Luecken, baut Spezial-Agenten, pflegt Versionen und fuehrt Admins durch Verbesserungen. Normale Nutzer arbeiten dagegen mit einfachen Workflows wie Text erstellen, Kampagne planen, Social Content oder Text pruefen.

## Ziel

Das System soll drei Dinge leisten:

1. Unternehmenswissen absichern und nutzbar machen.
2. Agenten bauen, verbessern und versionieren.
3. Alltagsarbeit fuer Texter, Design, Social und Handelsmarketing einfacher machen.

Der Anspruch ist nicht, alles autonom zu machen. Der Anspruch ist, wiederkehrende Denk- und Produktionsarbeit so vorzubereiten, dass Menschen schneller zu guten Ergebnissen kommen.

## Kernarchitektur

```text
Langdock
= Arbeitsinterface, Agenten, Actions, Formulare, Workflows

Airtable
= editierbares Unternehmensgedaechtnis mit CRUD

GitHub
= versionierter Speicher fuer Agenten-Prompts, Procedures, Registry und Changelogs

SharePoint / Drive
= Originalquellen, nur lesend, niemals direkt bearbeitet

Working Copies
= bearbeitbare Kopien von Originalen, wenn ein Dokument veraendert werden muss
```

## Warum nicht Langdock Knowledge als Hauptgedaechtnis?

Langdock Knowledge ist gut fuer Abruf und Grounding, aber schlecht als dynamisches Betriebssystem, wenn Ordner manuell angelegt und gepflegt werden muessen. Ein lernendes System braucht strukturierte Daten, Relationen, Statusfelder, Quellen, Freigaben und Update-Logik.

Darum ist Langdock das Cockpit, nicht das Gedaechtnis.

## UI-First-Regel fuer Langdock

Langdock wird als Bedienoberflaeche und Ausfuehrungsraum behandelt, nicht als alleinige Quelle der Wahrheit.

Das ist keine starre Ablehnung von Langdock Knowledge. Wenn Langdock fuer kleine Snippets, Prototypen oder einfache Agentenkontexte praktisch ist, darf es genutzt werden. Kritische oder langfristig relevante Wahrheit darf aber nicht nur in Langdock liegen.

Langdock darf bequem sein, aber nicht die einzige Quelle der Wahrheit.

## Source-of-Truth-Regeln

```text
Originalquelle gewinnt als Beleg.
Airtable gewinnt als strukturierter aktiver Memory Layer.
GitHub gewinnt fuer Agentenlogik, Prompts und Procedures.
Langdock gewinnt fuer UI, Formulare, Chats und Ausfuehrung.
```

Wenn Airtable und Langdock Knowledge widersprechen:

- Airtable gewinnt, wenn der Eintrag `Active` und ausreichend vertrauenswuerdig ist.
- Der Widerspruch wird als Gap oder Konflikt markiert.

Wenn Airtable und eine Originalquelle widersprechen:

- Nicht selbst entscheiden.
- Konflikt markieren.
- Unsicheren Fakt in Outputs vermeiden.
- Menschliche Klaerung einholen.

## Kontext- und Token-Regel

Das System soll nicht dadurch schlau wirken, dass es alles in den Kontext laedt.

Regel:

```text
Nicht mehr Kontext. Besserer Kontext.
```

Agenten laden nur, was fuer die aktuelle Aufgabe relevant ist:

- kurze Prompts statt Wissensberge
- strukturierte Memory-Abfragen statt kompletter Dokumente
- aktive und vertrauenswuerdige Quellen bevorzugen
- Originaldokumente nur bei Bedarf lesen
- alte, widerspruechliche oder archivierte Informationen nicht automatisch nutzen

Die detaillierte innere Arbeitslogik steht in `AGENT-COGNITIVE-ARCHITECTURE.md`.

## Systemrollen

Das Agency OS hat drei Ebenen:

```text
Direction Layer
= fuehrt, priorisiert, orchestriert und entscheidet ueber Arbeitsrichtung

Production Layer
= erstellt Texte, Konzepte, Social Content, Design-Briefings und Handelsmarketing-Outputs

Control Layer
= prueft, sichert Wissen, versioniert, protokolliert und verhindert Chaos
```

Ohne Direction Layer wuerden alle Produktions-Agenten nebeneinander arbeiten. Die Directors sorgen dafuer, dass Aufgaben sauber gebrieft, passend verteilt, konsistent zusammengefuehrt und qualitativ geprueft werden.

## Direction Layer

### Agency Director

Der Agency Director ist der operative Leiter fuer komplexe Anfragen. Er nimmt unklare Aufgaben entgegen, macht daraus einen klaren Arbeitsplan, entscheidet welche Spezial-Agenten gebraucht werden und fuehrt Ergebnisse zusammen.

Er ist kein Admin-Systemagent. Er steuert Arbeit, nicht Infrastruktur.

### Strategy Director

Der Strategy Director verantwortet Kampagnenlogik, Zielgruppen, Botschaften, Kanalrollen und strategische Schluessigkeit.

### Creative Director

Der Creative Director verantwortet Idee, Tonalitaet, kreative Konsistenz, Text-/Design-Zusammenspiel und Praesentationsqualitaet.

### Operations Director

Der Operations Director verantwortet Ablauf, Deadlines, Uebergaben, fehlende Inputs, Status und naechste Schritte.

### QA Director

Der QA Director entscheidet, wann Brand QA, Faktencheck, Claim-Pruefung oder Freigabehinweise notwendig sind. Er verhindert, dass riskante Outputs unmarkiert rausgehen.

## Control Layer

### Agent Architect

Der System-Agent fuer Admins. Er baut und verbessert Agenten, prueft Luecken, pflegt GitHub-Versionen und erklaert, was im System passiert.

### Knowledge Curator

Nimmt neue Informationen auf, erkennt Typ, Marke, Quelle, Widersprueche, Duplikate und Relevanz. Er schreibt strukturierte Eintraege in Airtable und verlinkt Originalquellen.

## Production Layer

### Campaign Strategist

Erstellt Kampagnenlogik: Ziel, Zielgruppe, Botschaft, Kanalidee, Timing, Aktivierungsmechanik.

### Copy Agent

Schreibt Texte, Claims, Newsletter, Haendlerkommunikation und Varianten.

### Social Agent

Erstellt Posts, Captions, Redaktionsplaene, Story-Ideen und Varianten pro Kanal.

### Design Brief Agent

Uebersetzt Strategie und Text in klare Design-Briefings.

### Handelsmarketing Agent

Fokussiert auf Haendleraktionen, POS, lokale Adaptionen, Dealer-Kommunikation und Aktivierungsmechaniken.

### QA / Brand Check Agent

Prueft Tonalitaet, Fakten, Modellnamen, Claims, Preise und offene Risiken.

### Learning Agent

Extrahiert Learnings aus abgeschlossenen Kampagnen und schreibt sie zurueck in den Memory Layer.

## Denkfluss

```text
Input kommt rein
-> Agency Director klaert Ziel und Arbeitsroute
-> Strategy Director schaerft Logik, falls Kampagne/Positionierung
-> Creative Director fuehrt Idee, Text und Design zusammen
-> Production Agents erstellen konkrete Outputs
-> QA Director / Brand QA pruefen Risiken
-> Knowledge Curator speichert relevante neue Erkenntnisse
-> Learning Agent speichert Kampagnen-Learnings
-> System wird besser
```

## Director-Regel

Directors sind nur fuer komplexe oder mehrstufige Aufgaben noetig.

Einfache Aufgaben gehen direkt an den passenden Arbeitsplatz-Agenten:

```text
kurze Mail -> Content Assistant
Text pruefen -> Brand QA
neues Dokument einordnen -> Knowledge Intake
```

Komplexe Aufgaben gehen ueber den Agency Director:

```text
Kampagne planen
Monthly Praese vorbereiten
Markenuebergreifende Aktion
Briefing zu Text + Design + Social
```

So bleibt das System im Alltag einfach und wird nur dann mehrstufig, wenn es wirklich hilft.

## Multi-Agent-Agentur-Pattern

Das System orientiert sich an bewaehrten Multi-Agent-Agentur-Patterns: spezialisierte Rollen, klare Uebergaben, ein Orchestrator fuer komplexe Aufgaben und starke Guardrails.

Die detaillierte Ableitung steht in `AGENCY-SWARM-INSPIRATION.md`.

Wichtig:

```text
Nicht viele Agenten machen das System intelligent.
Klare Rollen, gute Orchestrierung und sauberes Memory machen es intelligent.
```

## Persistence- und Skill-Pattern

Das Agency OS kann spaeter Hermes-aehnliche Persistenzmuster nutzen:

- stabile Agentenidentitaet
- kuratiertes Arbeitsgedaechtnis
- wiederverwendbare Skills
- Verbesserungsvorschlaege aus wiederkehrenden Mustern

Aber:

```text
Keine autonomen Selbstverbesserungsloops.
Keine Prompt-Aenderung ohne Freigabe.
Keine neuen Agenten ohne Architect Review.
Keine Todeschleifen.
```

Details stehen in `HERMES-PERSISTENCE-PATTERN.md`.

## Nutzerprinzip

Normale Nutzer sollen nie den Maschinenraum sehen. Sie starten einfache Aufgaben:

- Text erstellen
- Kampagne planen
- Social Content erstellen
- Haendleraktion erstellen
- Text pruefen
- Wissen hinzufuegen

Das System fragt nur, was wirklich gebraucht wird. Fehlende Informationen werden dezent behandelt: erst liefern, dann vorsichtig absichern.

## Arbeitsplatz-Agenten statt Personenerkennung

Im MVP erkennt das System Nutzerrollen nicht automatisch. Stattdessen gibt es separate Agenten als Arbeitsplaetze:

- Content Assistant
- Campaign Assistant
- Social Assistant
- Design Brief Assistant
- Handelsmarketing Assistant
- Brand QA
- Knowledge Intake
- Agent Architect fuer Admins
- Agency Director fuer komplexe Aufgaben

Die Rolle steckt im Agenten, nicht in einer komplexen Identity-Logik. Langdock-Sharing steuert, wer welchen Agenten sieht. Dadurch bleibt das System einfacher, billiger und weniger fehleranfaellig.

Spaeter kann eine People- oder Team-Directory-Struktur ergaenzt werden, wenn sie wirklich gebraucht wird.

## Adminprinzip

Admins koennen tiefer schauen:

- Welche Quellen wurden genutzt?
- Welche Annahmen wurden getroffen?
- Welche Wissensluecken gibt es?
- Welche Agenten sind betroffen?
- Welche Version ist aktiv?
- Was wurde zuletzt geaendert?

## MVP

Der erste belastbare Systemkern besteht aus:

1. Airtable Memory Layer.
2. GitHub-Struktur fuer Prompts und Procedures.
3. separaten Arbeitsplatz-Agenten in Langdock.
4. einem schlanken Agency Director fuer komplexe Aufgaben.
5. Agent Architect v1.
6. Knowledge Curator v1.
7. Einem Nutzerflow: Briefing zu Kampagnenkonzept zu Copy zu Design Brief zu QA.
8. SharePoint/Drive nur lesend mit Working-Copy-Regel.

## Erfolgskriterium

Das System ist gut, wenn ein Standardnutzer eine Haendlermail starten kann, ohne irgendetwas ueber Airtable, GitHub, Knowledge Items oder Agentenarchitektur zu wissen, und ein Admin trotzdem nachvollziehen kann, welche Quellen und Annahmen genutzt wurden.
