# Skill Candidate: diamond-claim-risk-check-v1

Status:

```text
Candidate
```

Owner Agent:

```text
Mosaic Prompter
```

Mode:

```text
QA Mode
```

## Zweck

Prueft kurze Texte auf harte Claims, Preise, Angebote und offensichtliche Faktenrisiken.

## Trigger

- pruef diesen Text
- ist das safe
- Claim check
- Preis check
- Angebot check

## Input

```text
Text
Marke, falls bekannt
Quelle, falls vorhanden
Pruefschwerpunkt, falls vorhanden
```

## Ablauf

1. Text auf harte Claims pruefen.
2. Preise und Angebote auf Quellenbedarf pruefen.
3. Quellenkonflikte markieren.
4. Maximal 1-3 wichtigste Punkte nennen.
5. Bessere Formulierung vorschlagen.

## Output

```text
Kurzfazit
Sollte geaendert werden
Vorschlag
```

## Lean Guardrail

Keine langen Mangel-Listen.

Wenn kein Risiko sichtbar ist:

```text
Wirkt sauber.
```

## Eval

```text
eval_hard_claim
eval_conflicting_knowledge
```

## Review-Bedarf

- reale Beispiele fuer Claims sammeln
- markenspezifische Tonalitaet testen
- rechtliche Freigabe nicht simulieren
