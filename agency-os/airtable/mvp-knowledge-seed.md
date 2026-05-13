# MVP Knowledge Seed

## Zweck

Diese Datei definiert 10 erste Knowledge Items fuer den Airtable Memory Layer.

Die Items sind bewusst interne Operating-Knowledge-Items aus den vorhandenen Mosaic-Dateien. Sie enthalten keine erfundenen Produktdaten, Preise oder privaten Namen.

## Import-Hinweis

Empfohlene Ziel-Tabelle:

```text
Knowledge Items
```

Empfohlene Grundwerte fuer alle Eintraege:

```text
Status: Active
Temperature: Core
Confidence: High
Last Verified: 2026-05-12
Created By: System Setup
Updated By: System Setup
```

## 1. Mosaic Kernarchitektur

```text
Title: Mosaic Kernarchitektur
Brand: Mobility Minds
Type: Process
Summary: Langdock ist UI und Ausfuehrungsraum, Airtable ist strukturierter Memory Layer, GitHub versioniert Agenten und Procedures, SharePoint/Drive bleiben read-only Originalquellen.
Details: Kritische Wahrheit darf nicht nur in Langdock liegen. Airtable speichert strukturierte aktive Memory Items. GitHub speichert Prompts, Procedures, Skills und Changelogs. SharePoint/Drive dienen als Originalquellen und werden nicht direkt bearbeitet.
Relevant For: Copy, Design, Social, Handelsmarketing, Reporting, QA, Architect
Source: agency-os/SYSTEM-BLUEPRINT.md
```

## 2. Originalschutz fuer SharePoint und Drive

```text
Title: Originale niemals veraendern
Brand: Mobility Minds
Type: Legal
Summary: Originaldateien in SharePoint oder Drive duerfen nicht geloescht, verschoben, umbenannt, ueberschrieben oder direkt bearbeitet werden.
Details: Agenten duerfen Originale lesen und referenzieren. Wenn eine Bearbeitung noetig ist, muss eine Working Copy vorgeschlagen und nach Freigabe erstellt oder genutzt werden. Schreibende Aktionen an Originalen sind nicht erlaubt.
Relevant For: Copy, Design, Social, Handelsmarketing, QA, Architect
Source: agency-os/procedures/sharepoint-original-protection.md
```

## 3. Schreibende Aktionen nur nach Freigabe

```text
Title: Keine schreibende Aktion ohne Freigabe
Brand: Mobility Minds
Type: Process
Summary: Agenten duerfen Schreibaktionen vorbereiten, aber erst nach ausdruecklichem Ja ausfuehren.
Details: Das gilt fuer Airtable, GitHub, Working Copies und alle weiteren Systeme. Write-Actions muessen mit Ziel, Aenderung und Risiko erklaert werden. Danach wird ein Audit Log Eintrag erwartet.
Relevant For: QA, Architect
Source: agency-os/GOVERNANCE.md
```

## 4. Keine Preise ohne belastbare Quelle

```text
Title: Preise und Angebote nur mit Quelle
Brand: Mobility Minds
Type: Legal
Summary: Preise, Angebote, Rabatte und harte kaufbezogene Aussagen duerfen nur verwendet werden, wenn eine belastbare und aktuelle Quelle vorhanden ist.
Details: Fehlt die Quelle, muss der Agent den Preis oder das Angebot vermeiden oder als zu pruefendes Risiko markieren. Der Agent darf keine Angebotslogik erfinden.
Relevant For: Copy, Social, Handelsmarketing, QA
Source: agency-os/SAFETY-MASTER-RULES.md
```

## 5. Keine harten Claims ohne Beleg

```text
Title: Harte Claims brauchen Belege
Brand: Mobility Minds
Type: Legal
Summary: Superlative, Leistungsversprechen, technische Aussagen und vergleichende Claims duerfen nicht ohne Beleg als sichere Fakten formuliert werden.
Details: Bei unsicherer Faktenlage soll konservativ formuliert werden. Riskante Formulierungen werden markiert und bei Bedarf in weichere Alternativen umgeschrieben.
Relevant For: Copy, Social, Handelsmarketing, QA
Source: agency-os/SAFETY-MASTER-RULES.md
```

## 6. Mosaic Prompter Arbeitsplatzrolle

```text
Title: Mosaic Prompter Rolle
Brand: Mobility Minds
Type: Process
Summary: Mosaic Prompter erstellt und verbessert Texte, Kampagnenstrukturen, Haendlermails, Social-nahe Textbausteine, Varianten und Knowledge Drafts.
Details: Der Agent erklaert keine Systemarchitektur, baut keine Agenten, speichert nichts ohne Freigabe, veraendert keine Originaldateien und vermeidet unsichere Fakten. Bei unklarem Auftrag stellt er maximal drei kurze Fragen und liefert, wenn moeglich, eine vorsichtige Arbeitsversion.
Relevant For: Copy, Handelsmarketing, QA
Source: agency-os/agents/hermes-prompter/hermes-prompter-de-v1.md
```

## 7. Mosaic Prompter QA Mode

```text
Title: Mosaic Prompter QA Mode
Brand: Mobility Minds
Type: Process
Summary: Mosaic Prompter prueft Texte im QA Mode auf Tonalitaet, Faktenrisiken, Markenfit, Modellnamen, Preise, Angebotslogik, harte Claims und Verstaendlichkeit.
Details: Im Standardmodus nennt Mosaic Prompter maximal die wichtigsten Punkte. Er gibt keine rechtliche Freigabe und entscheidet Faktenkonflikte nicht selbst. Fehlen Quellen fuer Preise, Angebote oder harte Claims, wird das als Risiko markiert.
Relevant For: QA, Copy, Social, Handelsmarketing
Source: agency-os/agents/hermes-prompter/hermes-prompter-de-v1.md
```

## 8. Mosaic Routing-Regel

```text
Title: Einfache Aufgaben direkt, komplexe Aufgaben ueber Mosaic Modi
Brand: Mobility Minds
Type: Process
Summary: Einfache Text-, Pruef- oder Intake-Aufgaben laufen ueber Mosaic Prompter. System-, Memory-, Eval- und Review-Aufgaben laufen ueber Mosaic Admin.
Details: Beispiele fuer Prompter-Aufgaben sind kurze Mail, Text pruefen, Monthly-Struktur oder neues Wissen als Draft einordnen. Beispiele fuer Admin-Aufgaben sind Network Report, Source-to-Output Trace, Eval Run, Prompt-vNext und Skill Candidate Review.
Relevant For: Copy, Design, Social, Handelsmarketing, QA, Architect
Source: agency-os/HERMES-TWO-AGENT-MVP.md
```

## 9. Nicht mehr Kontext, besserer Kontext

```text
Title: Kontext sparsam und relevant laden
Brand: Mobility Minds
Type: Process
Summary: Agenten sollen nicht moeglichst viel Kontext laden, sondern nur relevante, aktive und vertrauenswuerdige Informationen.
Details: Standardaufgaben sollen maximal 3-5 relevante Memory Items nutzen. Originaldokumente werden nur gezielt gelesen, wenn Summarys nicht reichen. Alte, widerspruechliche oder archivierte Informationen werden nicht automatisch verwendet.
Relevant For: Copy, Design, Social, Handelsmarketing, Reporting, QA, Architect
Source: agency-os/SYSTEM-BLUEPRINT.md
```

## 10. Knowledge Item Statusregeln

```text
Title: Knowledge Item Statusregeln
Brand: Mobility Minds
Type: Process
Summary: Active darf fuer Outputs genutzt werden, Draft nur mit Hinweis, Outdated nicht fuer neue Outputs, Conflicting nicht als Fakt, Archived nur historisch.
Details: Bei Konflikten zwischen Airtable und Originalquelle entscheidet der Agent nicht selbst. Er markiert den Konflikt, vermeidet den unsicheren Fakt und holt menschliche Klaerung ein.
Relevant For: Copy, Design, Social, Handelsmarketing, Reporting, QA, Architect
Source: agency-os/AIRTABLE-MEMORY-SCHEMA.md
```

## Naechste echte fachliche Items

Sobald belastbare Originalquellen vorliegen, sollten diese 10 Operating Items durch fachliche Items ergaenzt werden:

1. Marken-Tonalitaet pro aktiver Marke.
2. Aktuelle Modellnamen und Schreibweisen.
3. Aktive Angebote nur mit Quelle und Gueltigkeit.
4. Haendlerkommunikationsregeln.
5. Social Tonalitaet und Kanalregeln.
6. Design-Pflichtbausteine.
7. Rechtliche Pflichttexte.
8. Kampagnen-FAQs.
9. Reporting-Standards.
10. Abgeschlossene Kampagnen-Learnings.
