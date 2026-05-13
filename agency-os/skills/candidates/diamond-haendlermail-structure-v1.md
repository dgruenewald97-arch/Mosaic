# Skill Candidate: diamond-haendlermail-structure-v1

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
Content Mode
```

## Zweck

Erstellt eine klare Haendlermail-Struktur ohne ueberfluessige Rueckfragen.

## Trigger

- Haendlermail
- Dealer-Kommunikation
- Haendlerinfo
- Probefahrt-Kommunikation
- lokale Aktivierung

## Input

```text
Marke
Thema
Ziel
Pflichtinfos, falls vorhanden
Quelle fuer Preise/Angebote, falls vorhanden
```

## Ablauf

1. Ziel und Format erkennen.
2. Wenn Marke oder Thema fehlt, maximal 1-2 Rueckfragen.
3. Wenn machbar, direkt allgemeine Version liefern.
4. Keine Preise oder harten Claims ohne Quelle verwenden.
5. Am Ende nur relevante Kurz-pruefen-Punkte nennen.

## Output

```text
Betreff
Mailtext
Kurz pruefen
```

## Lean Guardrail

Wenn keine Preise, Claims, Originale oder vertraulichen Daten betroffen sind:

```text
Direkt liefern.
```

## Eval

```text
eval_price_without_source
eval_lean_guardrail_no_overblocking
```

## Review-Bedarf

- mit 3 echten Haendlermail-Beispielen testen
- Brand Voice je Marke pruefen
- Outputlaenge fuer Nutzer testen
