# Mosaic Project Logic Check

Checked: 2026-05-13

## Kurzfazit

Mosaic Workbench ist als internes, private-first Pilotprojekt logisch konsistent genug fuer den naechsten echten Setup-Schritt.

Die aktuelle Wahrheit bleibt:

```text
2 sichtbare Agenten:
1. Mosaic Prompter
2. Mosaic Admin
```

Alles andere ist Modus, Pattern, Skill Candidate, Procedure, Eval, Backlog oder Legacy-Referenz.

## Gepruefter Umfang

Geprueft wurden:

- aktuelle `agency-os`-Einstiegsdateien
- Launch-Checkliste
- Demo-Skript
- Current MVP Demo Run
- MVP-Testplan
- Evalcases
- Trainingcases
- Pattern Library
- Skill Library
- Airtable Seed Knowledge
- Legacy-Ordner auf private Namen und offensichtliche Secret-Dateien
- Plug-and-Play Setup
- Langdock Agent Cards
- lokaler Self-Check

Nicht veraendert wurde:

- alte Prototypstruktur in `langdock/` und `github/`
- alte Referenzagenten als historische oder spaetere Optionen
- Legacy-Dateinamen mit `HERMES`

## Ergebnis

### 1. Produktlogik

Status: konsistent.

Produktname:

```text
Mosaic Workbench
```

Arbeitslogik:

```text
Intern arbeiten.
Produktreif denken.
Automatisch verbessern.
Kontrolliert aktivieren.
```

Externer Launch ist nicht das aktuelle Ziel.

Aktuelles Ziel ist ein interner Team-Pilot mit Produktdisziplin und Background Improvement Loop.

### 2. Agentenlogik

Status: konsistent.

Sichtbar im MVP:

- Mosaic Prompter
- Mosaic Admin

Nicht als sichtbare MVP-Agenten behandeln:

- Content Assistant
- Brand QA
- Agency Director
- Knowledge Intake
- Agent Architect

Diese alten Rollen duerfen in Referenzdokumenten vorkommen, aber nicht als aktuelle Setup-Anweisung.

### 3. Demo-Logik

Status: aktualisiert.

Demo-Skript und Current Demo Run laufen jetzt ueber:

- Mosaic Prompter Content Mode
- Mosaic Prompter QA Mode
- Mosaic Prompter Monthly/Campaign Mode
- Mosaic Admin Network Report
- Originalschutz

Entfernt aus der aktuellen Demo-Logik:

- Content Assistant als eigener Demo-Agent
- Brand QA als eigener Demo-Agent
- Agency Director als eigener Demo-Agent

### 4. Testlogik

Status: konsistent mit zwei Testebenen.

Manueller MVP-Testplan:

```text
8 Tests
```

Strukturierte Eval-Fixtures:

```text
11 Evalcases
```

Das ist kein Widerspruch.

Der MVP-Testplan prueft die groben Arbeitsflaechen. Die Evalcases pruefen granularere Safety-, RAG-, USP- und Skill-Mining-Entscheidungen.

### 5. Memory-Logik

Status: aktualisiert.

`airtable/mvp-knowledge-seed.md` wurde auf Mosaic Prompter, Mosaic Admin und Mosaic Modi gemappt.

Die Seed Items sollen keine alten sichtbaren Agenten wieder in den MVP ziehen.

### 6. Naming-Logik

Status: sauber fuer MVP-kritische Dateien.

Gewollt:

- Legacy-Dateinamen mit `HERMES`
- Referenzdokumente, die alte Konzepte beschreiben
- Migrationserklaerungen von Hermes zu Mosaic

Nicht mehr gewollt in MVP-kritischen Setup-Pfaden:

- Hermes Prompter als sichtbarer Name
- Hermes Admin als sichtbarer Name
- Hermes Network Report als aktueller Reportname
- Content Assistant / Brand QA / Agency Director als live anzulegende MVP-Agenten

### 7. Security- und Privacy-Scan

Status: keine kritischen Treffer.

Geprueft:

- keine `.env`-, Key-, Token- oder Secret-Dateien gefunden
- keine privaten echten Namen im Gesamtprojekt gefunden
- JSON-Dateien valide
- keine Non-ASCII-Ausreisser in `agency-os`

Hinweis:

Ein Secret-Scan meldet `diamond-claim-risk-check` als False Positive, weil `risk-check` die Zeichenfolge `sk-c` enthaelt. Das ist kein Token.

### 8. Git-Status

Status: kein Git-Repo gefunden.

Im Workspace wurde kein `.git`-Ordner gefunden.

Wenn versioniert werden soll, muss das private GitHub-Repo noch initialisiert oder neu verbunden werden.

### 9. Plug-and-Play Status

Status: vorbereitet.

Vorhanden:

- `MOSAIC-PLUG-AND-PLAY.md`
- `LANGDOCK-AGENT-CARDS.md`
- `tools/check-mosaic.ps1`

Der Setup-Pfad ist jetzt:

```text
Private Repo
-> Langdock Repo/Knowledge Source
-> Mosaic Prompter
-> Mosaic Admin
-> Airtable Memory
-> Self-Check
-> Live-Eval
```

Letzter lokaler Self-Check:

```text
Mosaic self-check passed.
```

## Aktuelle echte Blocker

Praktisch, nicht konzeptionell:

1. Private GitHub-Versionierung anlegen oder verbinden.
2. Airtable Base bauen.
3. 10 Seed Knowledge Items eintragen.
4. 10 echte Pilot-Knowledge-Items aus Quellen aufnehmen.
5. Mosaic Prompter in Langdock anlegen.
6. Mosaic Admin in Langdock anlegen.
7. Read Actions testen.
8. Write Actions nur mit Freigabe testen.
9. Live-Eval gegen Langdock-Agenten ausfuehren.
10. Teamfeedback strukturiert sammeln.

## Aktuelle Empfehlung

Jetzt nicht weiter konzipieren.

Naechster sinnvoller Schritt:

```text
Privates Repo anlegen.
Dann Airtable Base bauen.
Dann Mosaic Prompter und Mosaic Admin in Langdock testen.
```

## Merksatz

```text
Mosaic ist als internes Pilotpaket stimmig.
Jetzt braucht es echte Nutzung, nicht mehr Theorie.
```
