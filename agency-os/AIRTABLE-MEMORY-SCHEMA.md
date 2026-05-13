# Airtable Memory Schema

## Rolle von Airtable

Airtable ist der Memory Layer des Agency OS. Es speichert strukturiertes Wissen, Status, Quellen, Relationen, Agenten und offene Luecken.

Langdock fragt Airtable ueber Actions ab und schreibt nach Freigabe zurueck.

## Tabellenuebersicht

```text
Brands
Products
Campaigns
Knowledge Items
Agents
Procedures
Learnings
Sources
Open Gaps
Requests
Audit Log
```

## Brands

Speichert Marken und Kundenkontexte.

Felder:

- `Name`
- `Typ` - Marke, Kunde, Intern
- `Status` - Active, Paused, Archived
- `Beschreibung`
- `Tonalitaet`
- `Verknuepfte Produkte`
- `Verknuepfte Kampagnen`
- `Aktive Knowledge Items`
- `Owner`

## Products

Speichert Produkt- und Modelldaten.

Felder:

- `Name`
- `Brand`
- `Kategorie`
- `Status` - Active, Upcoming, Outdated, Archived
- `USPs`
- `Technische Fakten`
- `Preise / Angebote`
- `Quelle`
- `Gueltig ab`
- `Gueltig bis`
- `Confidence` - Low, Medium, High
- `Last Verified`

## Campaigns

Speichert Kampagnenkontext.

Felder:

- `Name`
- `Brand`
- `Status` - Idea, Briefing, Active, Completed, Archived
- `Ziel`
- `Zielgruppe`
- `Botschaft`
- `Kanale`
- `Zeitraum`
- `Produkte`
- `Sources`
- `Outputs`
- `Learnings`
- `Owner`

## Knowledge Items

Zentrale Wissenseintraege. Das ist die wichtigste Tabelle.

Felder:

- `Title`
- `Brand`
- `Type` - Brand Voice, Product, Campaign, Process, Offer, Team, Learning, Legal, Design, Other
- `Summary`
- `Details`
- `Status` - Draft, Active, Outdated, Conflicting, Archived
- `Temperature` - Core, Hot, Warm, Archive
- `Relevant For` - Copy, Design, Social, Handelsmarketing, Reporting, QA, Architect
- `Source`
- `Related Products`
- `Related Campaigns`
- `Related Agents`
- `Confidence` - Low, Medium, High
- `Last Verified`
- `Created By`
- `Updated By`

## Agents

Speichert Agentenstatus und Versionen.

Felder:

- `Agent Name`
- `Category` - Architect, Curator, Campaign, Copy, Social, Design, Handelsmarketing, QA, Learning
- `Status` - Draft, Active, Deprecated, Needs Update
- `Version`
- `GitHub Path`
- `Purpose`
- `Inputs`
- `Outputs`
- `Knowledge Dependencies`
- `Actions Allowed`
- `Owner`
- `Last Updated`

## Procedures

Speichert Arbeitsregeln fuer Agenten.

Felder:

- `Name`
- `Procedure Type`
- `Status`
- `GitHub Path`
- `Applies To`
- `Summary`
- `Last Updated`

## Learnings

Speichert Kampagnen- und Produktionslernen.

Felder:

- `Title`
- `Brand`
- `Campaign`
- `What Worked`
- `What Did Not Work`
- `Evidence`
- `Recommendation`
- `Relevant For`
- `Confidence`
- `Source`
- `Date`

## Sources

Verweist auf Originaldokumente.

Felder:

- `Title`
- `Source Type` - SharePoint, Drive, Upload, Email, Manual, GitHub
- `Original URL`
- `Working Copy URL`
- `Owner`
- `Access Level`
- `Do Not Modify` - Checkbox, fuer Originale immer true
- `Last Checked`
- `Related Knowledge Items`

## Open Gaps

Speichert Wissens- und Systemluecken.

Felder:

- `Gap`
- `Type` - Knowledge, Agent, Workflow, Source, Permission, QA
- `Severity` - Low, Medium, High, Blocker
- `Brand`
- `Affected Workflows`
- `Suggested Fix`
- `Owner`
- `Status` - Open, In Progress, Resolved, Ignored
- `Created Date`

## Requests

Speichert Nutzeranfragen, falls das spaeter automatisiert ausgewertet werden soll.

Felder:

- `Request`
- `User`
- `Workflow`
- `Brand`
- `Status`
- `Output Link`
- `Created Date`
- `Follow-up Needed`

## Audit Log

Pflicht fuer Aenderungen.

Felder:

- `Date`
- `User`
- `Action`
- `Object Type`
- `Object`
- `Before`
- `After`
- `Reason`
- `Approved By`

## Statusregeln

`Active` heisst: darf fuer Outputs genutzt werden.

`Draft` heisst: darf nur mit Hinweis genutzt werden.

`Outdated` heisst: nicht fuer neue Outputs nutzen, ausser historische Einordnung.

`Conflicting` heisst: nicht als Fakt nutzen, bis ein Mensch entschieden hat.

`Archived` heisst: bleibt erhalten, wird aber nicht aktiv verwendet.
