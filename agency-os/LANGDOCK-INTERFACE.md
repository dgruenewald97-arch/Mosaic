# Langdock Interface Blueprint

## Rolle von Langdock

Langdock ist das Cockpit. Es ist nicht die Hauptdatenbank und nicht der Ort fuer komplexe Ordnerpflege.

Langdock ist UI-first: Es zeigt Arbeitsplaetze, sammelt Inputs, fuehrt Actions aus und gibt Ergebnisse zurueck. Langfristige Wahrheit liegt in Airtable, GitHub und den Originalquellen.

Langdock stellt bereit:

- einfache Nutzerflows
- Admin-Agenten
- Actions zu Airtable, GitHub und SharePoint/Drive
- Freigaben
- optionale Workflows

## Sichtbare Bereiche

### Fuer alle Nutzer

```text
Mosaic Prompter
```

### Fuer Admins

```text
Mosaic Admin
```

Im MVP gibt es nur diese zwei sichtbaren Agenten.

Alle anderen Rollen sind Modi, Skills oder interne Denkmodelle.

## Zwei-Agenten-MVP

```text
Mosaic Prompter
= Content, QA light, Campaign, Monthly, Varianten, Knowledge Drafts

Mosaic Admin
= System, Memory, Eval, Network Report, Prompt-/Skill-Review
```

Die detaillierte Logik steht in `HERMES-TWO-AGENT-MVP.md`.

## Arbeitsplatz-Agenten nach MVP

Die folgenden Arbeitsplatz-Agenten bleiben als spaetere Ausbauoption oder interne Modi erhalten. Sie werden im MVP nicht separat in Langdock angelegt.

```text
Content Assistant
= Texte, Claims, Newsletter, Haendlermails

Campaign Assistant
= Kampagnenlogik, Botschaften, Kanalideen

Social Assistant
= Posts, Captions, Redaktionsplaene

Design Brief Assistant
= Design-Briefings, Asset-Anforderungen, Formatlogik

Handelsmarketing Assistant
= Haendleraktionen, POS, lokale Aktivierung

Brand QA
= Tonalitaet, Fakten, Claims und Risiken pruefen

Knowledge Intake
= Wissen aufnehmen und strukturieren

Agent Architect
= Admin, System, Agentenbau, Procedures

Agency Director
= komplexe Aufgaben briefen, aufteilen und zusammenfuehren
```

Diese Rollen werden im MVP nicht separat sichtbar. Ihre Logik steckt in Mosaic Prompter oder Mosaic Admin.

## Keine kritische Wahrheit nur in Langdock

Langdock darf fuer Chatverlauf, UI-Zustand, Formulare und kleine Prototyp-Kontexte genutzt werden.

Dauerhaft relevante Informationen muessen in einem der System-Speicher landen:

- Airtable fuer strukturiertes Wissen
- GitHub fuer Agentenlogik und Procedures
- SharePoint/Drive fuer Originale
- Audit Log fuer relevante Aenderungen

## Nicht im MVP sichtbar

Die folgenden Beschreibungen sind Referenz fuer spaetere Ausbaustufen oder interne Modi. Sie sind nicht Teil des sichtbaren Zwei-Agenten-MVP.

### Agency Director Mode

Leitungslogik fuer komplexe Nutzeranfragen.

Im MVP liegt diese Logik im Mosaic Prompter.

Spaeter kann diese Logik Zugriff haben auf:

- Airtable Read Actions
- relevante Modi oder spezialisierte Agenten
- QA Mode
- Knowledge Intake Mode

Er darf:

- Aufgaben klaeren
- Arbeitsroute vorschlagen
- Teilergebnisse zusammenfuehren
- Risiken knapp ausgeben

Er darf nicht:

- Systemdateien aendern
- Agenten bauen
- Originale bearbeiten
- ohne Freigabe speichern

### Director Agents

Im spaeteren Ausbau koennen spezialisierte Directors sichtbar oder intern genutzt werden:

- Strategy Director
- Creative Director
- Operations Director
- QA Director

Im MVP uebernimmt Mosaic Prompter diese Perspektiven leichtgewichtig.

### Agent Architect Mode

Adminlogik fuer System, Prompts und Procedures.

Im MVP liegt diese Logik im Mosaic Admin.

Er braucht Zugriff auf:

- Airtable Memory Actions
- GitHub Read/Write Actions
- SharePoint/Drive Read Actions
- Agent Registry

### Knowledge Intake Mode

Logik fuer neue Informationen.

Im MVP liegt diese Logik als Knowledge Draft Mode im Mosaic Prompter und als Memory Mode im Mosaic Admin.

Er braucht Zugriff auf:

- SharePoint/Drive Read
- Airtable Create/Update nach Freigabe
- Konfliktpruefung

### Campaign Builder

Einfacher Nutzerflow fuer Kampagnen.

Er nutzt intern:

- Campaign Strategist
- Copy Agent
- Design Brief Agent
- QA Agent

### Content Studio

Einfacher Nutzerflow fuer Texte und Social Content.

Er nutzt:

- Copy Agent
- Social Agent
- Brand QA

### Brand QA Mode

Prueft bestehende Texte, Claims und Inhalte.

Im MVP liegt diese Logik im Mosaic Prompter.

## Benoetigte Actions

Der konkrete technische Pruefplan steht in `TECHNICAL-ACTION-CHECK.md`.

### Airtable

- `search_knowledge_items`
- `create_knowledge_item`
- `update_knowledge_item`
- `mark_knowledge_outdated`
- `list_open_gaps`
- `create_open_gap`
- `search_brand_voice`
- `search_products`
- `search_campaigns`
- `create_campaign`
- `create_learning`
- `create_agent_record`
- `update_agent_record`
- `write_audit_log`

### GitHub

- `get_file_content`
- `list_files`
- `create_or_update_file`
- `compare_versions`

GitHub-Write immer mit Freigabe.

### SharePoint / Drive

- `search_files`
- `get_file`
- `download_file`
- `copy_file`

Kein Delete, Move, Rename oder Permission Change fuer Agenten.

## Echte Demo-Regel

Wenn ein Arbeitsplatz-Agent im Standardmodus demonstriert oder genutzt wird:

- keine Architekturbegriffe
- keine Erklaerung von Airtable, GitHub oder Langdock
- maximal 2-3 Rueckfragen
- wenn moeglich erst einen Entwurf liefern
- Risiken nur kurz nennen
- bei `stop` endet der Modus sofort

Architekturfragen gehoeren in Mosaic Admin.

## Formulare

Wiederkehrende Aufgaben sollten nicht nur als freier Chat laufen.

### Text erstellen

Felder:

- Marke
- Format
- Thema
- Zielgruppe
- Ton
- Pflichtinfos
- No-gos

### Kampagne planen

Felder:

- Marke
- Produkt
- Ziel
- Zielgruppe
- Zeitraum
- Kanaele
- Budget, falls vorhanden
- Vorhandene Unterlagen

### Wissen hinzufuegen

Felder:

- Datei oder Link
- Marke
- vermuteter Typ
- Vertraulichkeit
- Soll als aktiv gelten?

### Text pruefen

Felder:

- Text
- Marke
- Format
- Pruefschwerpunkt

## Antwortformat fuer normale Nutzer

```text
[Ergebnis]

Kurz pruefen:
- [maximal 1-2 relevante Risiken]

Genutzt:
- [2-4 wichtigste Quellen/ Wissensbereiche]
```

## Antwortformat fuer Admins

```text
Ergebnis
Quellen
Annahmen
Risiken
Betroffene Knowledge Items
Betroffene Agenten
Empfohlene Systemupdates
```
