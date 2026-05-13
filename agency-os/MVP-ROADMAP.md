# MVP Roadmap

## Ziel des MVP

Der MVP soll beweisen, dass das Agency OS echte Arbeit erleichtert und gleichzeitig kontrollierbar bleibt.

Der launchbare Arbeitstitel fuer diesen MVP ist:

```text
Mosaic Workbench
```

Nicht Ziel:

- alle Agenten fertig bauen
- alle Daten migrieren
- perfekte Automatisierung
- vollautonome Entscheidungen

Ziel:

- ein stabiler Memory Layer
- ein einfacher Nutzerflow
- zwei sichtbare Agenten: Mosaic Prompter und Mosaic Admin
- interne Modi statt separater Arbeitsplatz-Agenten
- Lean Guardrail statt sichtbarer Sicherheitslast
- nachvollziehbare Outputs

## Phase 1 - Fundament

Ergebnis:

- Airtable Base steht.
- GitHub-Struktur steht.
- SharePoint/Drive ist als Read-only-Quelle definiert.
- Governance-Regeln sind dokumentiert.

Aufgaben:

1. Airtable-Tabellen nach `AIRTABLE-MEMORY-SCHEMA.md` anlegen.
2. GitHub-Repo nach `GITHUB-STRUCTURE.md` anlegen.
3. Originalschutz-Regel in alle Agentenprompts aufnehmen.
4. Erste echte Quellen verlinken, nicht kopieren.
5. Technical Action Check aus `TECHNICAL-ACTION-CHECK.md` durchgehen.

## Phase 2 - Mosaic Admin v1

Ergebnis:

- Mosaic Admin kann Systemstatus erklaeren.
- Mosaic Admin kann Memory, Eval Runs und Network Reports betreuen.
- Mosaic Admin kann Prompt-vNext und Skill-Kandidaten vorbereiten.
- Mosaic Admin schreibt nur nach Freigabe.

Aufgaben:

1. Mosaic Admin Prompt anlegen.
2. Airtable Read Actions anbinden.
3. GitHub Read Actions fuer Prompt-/Skill-Review anbinden.
4. Antwortformate fuer Admins definieren.

## Phase 3 - Mosaic Prompter v1

Ergebnis:

- Nutzer sehen einen produktiven Arbeitsagenten statt Agentenliste.
- Content, QA light, Campaign, Monthly und Knowledge Drafts laufen als Modi.
- Lean Guardrail verhindert Warnungsueberladung.

Aufgaben:

1. Mosaic Prompter in Langdock anlegen.
2. Content Mode testen.
3. QA Mode testen.
4. Monthly Mode testen.
5. Knowledge Draft Mode testen.

## Phase 4 - Zwei-Agenten-Test

Ergebnis:

- Die 11 Evalcases laufen gegen Mosaic Prompter und Mosaic Admin.
- Harmlose Aufgaben werden nicht ueberblockt.
- Admin bekommt Quellen, Luecken und Network Report.

Aufgaben:

1. Evalcases gegen Mosaic Prompter mappen.
2. Evalcases gegen Mosaic Admin mappen.
3. Live-Ergebnis dokumentieren.
4. Prompt-vNext nur bei echtem Fail vorbereiten.

## Phase 5 - Erster Nutzerflow

Ergebnis:

- Ein echter Workflow laeuft ueber Mosaic Prompter.
- Mosaic Admin kann Quellen, Annahmen und Luecken nachvollziehen.
- Keine separaten Spezial-Agenten noetig.

Aufgaben:

1. Haendlermail oder Facebook Monthly waehlen.
2. Mosaic Prompter produziert ersten Output.
3. Mosaic Prompter prueft leichte Risiken im QA Mode.
4. Mosaic Admin erstellt Source-to-Output Trace.
5. Mosaic Admin dokumentiert offene Luecken.

Empfohlener Flow:

```text
Briefing -> Mosaic Prompter Output -> QA Mode -> Mosaic Admin Trace -> Learning
```

Warum dieser Flow:

- Er passt zu eurer Inhouse-Agentur-Arbeit.
- Er verbindet Strategie, Text, Design und Pruefung.
- Er zeigt sofort, ob der Memory Layer wirklich hilft.

Minimaler Ablauf:

1. Nutzer gibt Marke, Thema, Ziel und vorhandene Unterlagen ein.
2. Mosaic Prompter erkennt den passenden Modus.
3. Mosaic Prompter erzeugt Copy, Struktur oder Varianten.
4. Mosaic Prompter markiert nur echte Risiken.
5. Mosaic Admin kann Quellen, Annahmen und Luecken zeigen.

## Phase 6 - Lernen zurueckspielen

Ergebnis:

- Nach Kampagnenabschluss werden Learnings als Draft extrahiert.
- Learnings landen strukturiert in Airtable.
- Kuenftige Outputs nutzen diese Learnings.

Aufgaben:

1. Mosaic Prompter oder Admin erstellt Learning Draft.
2. Mosaic Admin prueft Struktur.
3. Learnings-Tabelle nutzen.
4. Campaigns mit Learnings verknuepfen.
5. Offene Luecken vorschlagen, aber nicht nerven.

## Prioritaet der ersten Agenten

1. Mosaic Prompter
2. Mosaic Admin

Spaeter optional:

- spezialisierte Arbeitsplatz-Agenten
- Directors
- Learning Agent

Diese optionalen Agenten werden erst gebaut, wenn der Zwei-Agenten-MVP echten Bedarf zeigt.

## Erfolgstest

Die vollstaendige Testliste steht in `MVP-TESTPLAN.md`.

Der finale Launch-Gate steht in `FINAL-LAUNCH-CHECKLIST.md`.

### Test 1 - Standardnutzer

Ein Standardnutzer soll ohne Systemwissen eine Haendlermail anstossen koennen.

Erfolgreich, wenn:

- er maximal drei Fragen beantworten muss
- ein brauchbarer Entwurf entsteht
- Risiken knapp genannt werden
- keine technischen Begriffe auftauchen

### Test 2 - Admin

Ein Admin soll denselben Output nachvollziehen koennen.

Erfolgreich, wenn sichtbar ist:

- welche Quellen genutzt wurden
- welche Annahmen getroffen wurden
- welche Knowledge Items relevant waren
- welche Luecken offen bleiben

### Test 3 - Originalschutz

Ein Originaldokument soll niemals veraendert werden.

Erfolgreich, wenn:

- Agent nur liest
- bei Bearbeitungswunsch eine Arbeitskopie vorgeschlagen wird
- Aenderungen nur an der Kopie passieren
