# Final Launch Checklist

## Zweck

Diese Checkliste entscheidet, wann Mosaic Workbench intern pilotierbar und spaeter extern vorzeigbar ist.

Sie ersetzt keine Governance. Sie ist der letzte praktische Gatekeeper vor dem Rollout.

## Grundhaltung - Interner Pilot mit Produktdisziplin

Mosaic bleibt im ersten Schritt intern.

Das Team behandelt den Pilot mit Produktdisziplin: sauber, nachvollziehbar, testbar und feedbackfaehig.

Das bedeutet:

- keine privaten echten Namen in Demo- oder Doku-Material
- keine unbelegten Preise, Angebote oder harten Claims
- keine internen Original-Links in Screenshots oder Reports
- keine vertraulichen Team-, Kunden- oder HR-Informationen in Beispielen
- klare Trennung zwischen Konzept, internem Pilot und optionalem spaeterem Launch
- Feedback wird gesammelt, ausgewertet und versioniert
- Hintergrundverbesserungen duerfen automatisch vorbereitet werden
- Aktivierung von Prompts, Skills und kritischem Wissen bleibt kontrolliert
- Launch-Entscheid erst nach echten Teamtests und Eval-Run

Merksatz:

```text
Intern arbeiten.
Produktreif denken.
Automatisch verbessern.
Kontrolliert aktivieren.
```

## Phase 1 - Internal MVP

Status: vorbereiten

Pflicht:

- [ ] Airtable Base nach `AIRTABLE-MEMORY-SCHEMA.md` angelegt
- [ ] 10 Seed Knowledge Items aus `airtable/mvp-knowledge-seed.md` eingetragen
- [ ] 10 echte Pilot-Knowledge-Items nach `airtable/pilot-knowledge-intake-template.md` aus belastbaren Quellen aufgenommen oder als Blocker markiert
- [ ] Pilot-Demo nach `HERMES-PILOT-DEMO-SCRIPT.md` vorbereitet
- [ ] Mosaic Prompter in Langdock angelegt
- [ ] Mosaic Admin in Langdock angelegt und nur fuer Admins sichtbar
- [ ] SharePoint/Drive nur read-only angebunden oder Fallback dokumentiert
- [ ] Technical Action Check ausgefuehrt
- [ ] MVP-Testplan ausgefuehrt
- [ ] erster Mosaic Network Report fuer Admins erzeugt oder als Fallback manuell erstellt
- [ ] Mosaic Keyfacts im Network Report geprueft: charmant, faktenbasiert, nicht verharmlosend

Gate:

```text
Internal MVP ist bestanden, wenn 7 von 8 MVP-Tests bestehen und Originalschutz, Versionierung und Monthly/Campaign Routing im Mosaic Prompter zwingend bestanden sind.
```

## Phase 2 - First Real Workflow

Status: nach Internal MVP

Einen Workflow auswaehlen:

- [ ] Haendlermail
- [ ] Facebook Monthly

Pflicht:

- [ ] echte Quelle verlinkt
- [ ] keine Originaldatei veraendert
- [ ] Output von Mosaic Prompter erstellt
- [ ] Mosaic Prompter QA Mode genutzt, falls Risiko vorliegt
- [ ] Risiken maximal knapp im Standardmodus sichtbar
- [ ] Adminansicht zeigt Quellen, Annahmen und offene Luecken

Gate:

```text
Workflow ist pilotierbar, wenn ein normaler Nutzer das Ergebnis weiterverwenden kann, ohne die Architektur zu verstehen.
```

## Phase 3 - Pilot With Humans

Status: nach erstem Workflow

Pilotgruppe:

- 1 Admin
- 1 Content-/Marketingnutzer
- 1 QA-/Brand-Perspektive

Pflicht:

- [ ] Nutzer koennen passende Arbeitsplaetze finden
- [ ] Rueckfragen bleiben kurz
- [ ] Outputs sind brauchbar genug fuer Weiterarbeit
- [ ] riskante Claims werden erkannt
- [ ] fehlende Quellen werden nicht erfunden
- [ ] Verbesserungsvorschlaege werden gesammelt, aber nicht live selbst angewendet

Gate:

```text
Pilot ist bestanden, wenn das System echte Zeit spart und keine Governance-Regel verletzt.
```

## Phase 4 - External Readiness

Status: nicht vor MVP-Pilot

Pflicht vor externer Kommunikation:

- [ ] Name `Mosaic Workbench` geprueft
- [ ] externe Produktclaims geprueft
- [ ] Demo-Screens ohne private Namen oder vertrauliche Daten
- [ ] keine echten Preise ohne Quelle in Demo
- [ ] keine internen Original-Links sichtbar
- [ ] Datenschutz- und Freigabeprozess geklaert
- [ ] klare Aussage, was das System kann und was nicht

Gate:

```text
Extern erst zeigen, wenn Name, Claims, Demo-Daten und Sicherheitsgrenzen freigegeben sind.
```

## Launch-Entscheidung

Nicht launchbereit, wenn:

- eine Write-Action ohne Freigabe laufen kann
- Originale veraendert werden koennen
- Quellen nicht nachvollziehbar sind
- Preise oder harte Claims ohne Quelle erscheinen
- normale Nutzer mit Architekturbegriffen konfrontiert werden
- Agenten sich selbst live veraendern

Launchbereit fuer internen Pilot, wenn:

- MVP-Testplan bestanden ist
- erster echter Workflow funktioniert
- Admins nachvollziehen koennen, was passiert ist
- Nutzer einen klaren Nutzen spuert

## Sofort naechste Schritte

1. Airtable Base bauen.
2. Seed Knowledge Items eintragen.
3. Echte Pilot-Knowledge-Items aufnehmen oder fehlende Quellen als Blocker markieren.
4. Mosaic Prompter und Mosaic Admin in Langdock anlegen.
5. Haendlermail-Test ausfuehren.
6. Brand-QA-Test mit hartem Claim und Preis ohne Quelle ausfuehren.
7. Ergebnisse im Audit Log oder Setup-Log dokumentieren.
