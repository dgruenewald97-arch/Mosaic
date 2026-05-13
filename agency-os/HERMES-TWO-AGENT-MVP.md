# Mosaic Two-Agent MVP

## Zweck

Der MVP wird radikal vereinfacht:

```text
2 Agenten.
1 Admin.
1 Prompter.
```

Alles andere ist im MVP kein sichtbarer Agent, sondern Modus, Skill, Procedure oder internes Denkmodell.

## Warum

Zu viele Agenten machen den Start schwer:

- mehr Setup
- mehr Sharing
- mehr Promptpflege
- mehr Erklaerbedarf
- mehr Testoberflaeche

Der echte Nutzen entsteht erstmal durch:

- gutes Briefing
- gute Outputs
- gutes Memory
- gute Tests
- gute Wiederverwendung

Nicht durch 10 sichtbare Agenten.

## Die zwei Agenten

### 1. Mosaic Prompter

Fuer normale Nutzer und produktive Arbeit.

Er macht:

- Texte
- Kampagnenstruktur
- Social Copy
- Haendlermails
- Brand-/Claim-Check im leichten Modus
- Wissen aufnehmen als Draft
- einfache Quellenzusammenfassungen
- Varianten
- Monthly-Strukturen

Er zeigt keine Architektur.

Interne Modi:

```text
Content Mode
QA Mode
Campaign Mode
Knowledge Draft Mode
Monthly Mode
Variant Mode
```

Der Nutzer waehlt nicht unbedingt den Modus. Mosaic erkennt ihn aus der Aufgabe.

### 2. Mosaic Admin

Fuer System, Setup, Memory und Verbesserung.

Er macht:

- Airtable Base Setup
- Knowledge Items strukturieren
- Network Report
- Eval Runs
- Prompt-vNext vorbereiten
- Skill-Kandidaten erstellen
- Quellen-/Luecken-Checks
- Systemstatus
- Changelog- und Review-Vorbereitung

Er darf nichts live schreiben, wenn eine Freigabe noetig ist.

Interne Modi:

```text
System Mode
Memory Mode
Eval Mode
Network Report Mode
Prompt Architect Mode
Skill Mining Mode
```

## Was aus den bisherigen Agenten wird

```text
Content Assistant -> Mosaic Prompter / Content Mode
Brand QA -> Mosaic Prompter / QA Mode
Agency Director -> Mosaic Prompter / Campaign oder Monthly Mode
Knowledge Intake -> Mosaic Prompter Draft oder Mosaic Admin Memory Mode
Agent Architect -> Mosaic Admin
```

## Lean Guardrail

Sicherheit ist im MVP kein sichtbarer Produktteil.

Regel:

```text
Wenn keine riskante Aktion betroffen ist, liefert Mosaic direkt.
```

Riskante Aktionen sind nur:

- echte Write-Actions
- Originaldateien bearbeiten
- Preise oder Angebote ohne Quelle
- harte Claims ohne Beleg
- personenbezogene oder vertrauliche Daten
- Quellenkonflikte

Alles andere:

```text
Liefern. Nicht belehren.
```

## Langdock Setup

Sichtbar in Langdock:

```text
Mosaic Prompter
Mosaic Admin
```

Optional spaeter:

```text
Mosaic Reports
Mosaic Skill Lab
```

Aber nicht im MVP.

## Antwortlogik Prompter

Standard:

```text
[Ergebnis]

Kurz pruefen:
- [nur wenn wirklich relevant]
```

Wenn harmlos:

```text
[Ergebnis]
```

Wenn riskant:

```text
[Ergebnis oder sichere Alternative]

Kurz pruefen:
- [konkreter Blocker oder Risiko]
```

## Antwortlogik Admin

Standard:

```text
Kurzfazit
Was ich sehe
Was fehlt
Naechste Schritte
```

Bei Reports:

```text
Kurzfazit
Keyfacts zum Schmunzeln
Memory Health
Vernetzung
Risiken
Naechste Schritte
```

## MVP-Test

Der lokale Baseline-Test bleibt gueltig, wird aber gegen zwei Agenten gemappt:

```text
Mosaic Prompter:
- eval_price_without_source
- eval_hard_claim
- eval_original_protection
- eval_prompt_injection_source
- eval_user_friction_high
- eval_conflicting_knowledge
- eval_lean_guardrail_no_overblocking

Mosaic Admin:
- eval_network_report_keyfacts
- eval_source_to_output_trace
- eval_usp_quality
- eval_skill_mining_gate
```

## USP

```text
Mosaic ist kein Agenten-Zoo.
Mosaic ist ein Zwei-Agenten-System mit starkem Memory, guten Skills und klaren Modi.
```

## Merksatz

```text
Zwei Agenten nach aussen.
Viele gute Denk- und Arbeitsmuster nach innen.
```
