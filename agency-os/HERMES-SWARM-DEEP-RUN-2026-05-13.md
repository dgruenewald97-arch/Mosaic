# Hermes Swarm Deep Run - 2026-05-13

## Zweck

Dieser Run simuliert 12 begrenzte Schwarm-Schleifen fuer Feature-Discovery, USP-Schaerfung und Trainingswissen.

Perspektiven:

- Strategy
- Creative
- Operations
- Memory
- QA
- User Empathy
- Architect

## Ergebnisuebersicht

Top-Kandidaten:

1. Agency Memory Graph
2. Claim-Safe Content Velocity
3. Affective Decision Layer
4. Skill Mining statt Agenten-Zoo
5. Source-to-Output Trace
6. Lean Guardrail Mode

## Loop 1 - Haendlermail ohne Quelle

Beobachtung:

```text
Nutzer wollen schnelle Copy, aber Preis-/Claim-Risiken duerfen nicht unbemerkt rein.
```

Feature:

```text
Claim-Safe Content Velocity
```

USP:

```text
Schneller schreiben, ohne riskante Fakten zu erfinden.
```

Training Signal:

```text
Golden Example: Draft ohne Preis, Risiko knapp.
```

Eval:

```text
eval_price_without_source
```

Score:

```text
15/15 Build next
```

## Loop 2 - Nutzer ist muede

Beobachtung:

```text
Wenn Nutzer muede sind, sind viele Rueckfragen kontraproduktiv.
```

Feature:

```text
Affective Decision Layer / Care Mode
```

USP:

```text
Hermes reduziert Friktion, statt Nutzer mit Systemlogik zu belasten.
```

Training Signal:

```text
Positive Example: kurze Struktur, maximal 1-2 offene Punkte.
```

Eval:

```text
eval_user_friction_high
```

Score:

```text
14/15 Build next
```

## Loop 3 - Isoliertes Wissen

Beobachtung:

```text
Knowledge Items ohne Quellen oder Relationen sind schwer nutzbar.
```

Feature:

```text
Agency Memory Graph
```

USP:

```text
Hermes zeigt, wo Wissen verbunden ist und wo es allein steht.
```

Training Signal:

```text
Network Report Keyfact.
```

Eval:

```text
eval_network_report_keyfacts
```

Score:

```text
15/15 Build next
```

## Loop 4 - Wiederkehrende Aufgaben

Beobachtung:

```text
Haendlermail, Claim Check und Facebook Monthly werden wiederkehren.
```

Feature:

```text
Skill Mining
```

USP:

```text
Hermes erkennt wiederkehrende Muster und macht daraus pruefbare Skills.
```

Training Signal:

```text
Skill Candidate: diamond-haendlermail-structure-v1
```

Eval:

```text
skill_mining_gate
```

Score:

```text
13/15 Pilot
```

## Loop 5 - Zu viel Sicherheit nervt

Beobachtung:

```text
Wenn kein echtes Risiko vorliegt, soll Hermes liefern statt warnen.
```

Feature:

```text
Lean Guardrail Mode
```

USP:

```text
Hermes bremst nur riskante Aktionen, nicht normale Arbeit.
```

Training Signal:

```text
Negative Example: harmlose Copy wird mit Governance ueberladen.
```

Eval:

```text
eval_lean_guardrail_no_overblocking
```

Score:

```text
15/15 Build next
```

## Loop 6 - Admin will Vertrauen

Beobachtung:

```text
Admins brauchen Nachvollziehbarkeit, normale Nutzer nicht.
```

Feature:

```text
Source-to-Output Trace
```

USP:

```text
Hermes zeigt Quellen und Annahmen dort, wo sie gebraucht werden.
```

Training Signal:

```text
Admin Output Pattern.
```

Eval:

```text
eval_source_to_output_trace
```

Score:

```text
14/15 Build next
```

## Loop 7 - Facebook Monthly

Beobachtung:

```text
Reporting braucht Story, nicht nur Zahlen.
```

Feature:

```text
Monthly Story Builder
```

USP:

```text
Hermes verwandelt Performance-Daten in eine klare Monatsstory.
```

Training Signal:

```text
Golden Example: Kurzfazit, Auffaelligkeiten, Learnings, Massnahmen.
```

Eval:

```text
eval_facebook_monthly_story
```

Score:

```text
13/15 Pilot
```

## Loop 8 - Kreative Varianten

Beobachtung:

```text
Marketing braucht nicht nur eine Antwort, sondern sinnvolle Varianten.
```

Feature:

```text
Variant Ladder
```

USP:

```text
Hermes liefert Varianten nach Zweck: sachlich, aktivierend, premium, lokal.
```

Training Signal:

```text
Variant preference examples.
```

Eval:

```text
eval_variant_ladder
```

Score:

```text
12/15 Pilot
```

## Loop 9 - Quellenkonflikt

Beobachtung:

```text
Konflikte sind nicht Stoerung, sondern wertvolles Systemwissen.
```

Feature:

```text
Conflict-to-Gap Converter
```

USP:

```text
Hermes verwandelt widerspruechliche Fakten in klaerbare Aufgaben.
```

Training Signal:

```text
Open Gap Example.
```

Eval:

```text
eval_conflicting_knowledge
```

Score:

```text
14/15 Build next
```

## Loop 10 - Wissen nach Kampagne

Beobachtung:

```text
Agenturen verlieren viel Wert nach Abschluss einer Kampagne.
```

Feature:

```text
Campaign Learning Extractor
```

USP:

```text
Hermes macht Kampagnenlernen wiederverwendbar.
```

Training Signal:

```text
Learning Item Template.
```

Eval:

```text
eval_campaign_learning_extraction
```

Score:

```text
13/15 Pilot
```

## Loop 11 - Team-Akzeptanz

Beobachtung:

```text
Menschen nutzen Systeme eher, wenn sie sich entlastend und nicht kontrollierend anfuehlen.
```

Feature:

```text
Friendly Admin Keyfacts
```

USP:

```text
Hermes macht Systemgesundheit lesbar, ohne trocken zu werden.
```

Training Signal:

```text
Keyfact Style Examples.
```

Eval:

```text
eval_network_report_keyfacts
```

Score:

```text
12/15 Pilot
```

## Loop 12 - Menschheitsnutzen

Beobachtung:

```text
Der echte Nutzen liegt nicht in mehr Automatisierung, sondern in weniger kognitivem Muell.
```

Feature:

```text
Agency Operating Intelligence
```

USP:

```text
Hermes gibt Teams ein gemeinsames Gedaechtnis, bessere Entscheidungswege und weniger Wiederholungsarbeit.
```

Training Signal:

```text
Positioning Golden Example.
```

Eval:

```text
eval_usp_quality
```

Score:

```text
15/15 Build next
```

## Priorisierte Umsetzung

Build next:

1. Lean Guardrail Mode
2. Source-to-Output Trace
3. Conflict-to-Gap Converter
4. Agency Memory Graph
5. Claim-Safe Content Velocity
6. Agency Operating Intelligence Positioning

Pilot:

7. Skill Mining
8. Monthly Story Builder
9. Variant Ladder
10. Campaign Learning Extractor
11. Friendly Admin Keyfacts

## Schluss

Hermes' staerkster USP ist nicht "Agent kann Text".

Der staerkste USP ist:

```text
Hermes verwandelt Agenturarbeit in ein lernendes, nachvollziehbares und menschlich bedienbares Betriebssystem.
```
