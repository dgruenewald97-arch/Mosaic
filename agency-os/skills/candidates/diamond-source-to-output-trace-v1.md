# Skill Candidate: diamond-source-to-output-trace-v1

Status:

```text
Candidate
```

Owner Agent:

```text
Mosaic Admin
```

Mode:

```text
Admin / Trace Mode
```

## Zweck

Zeigt, warum ein Output vertrauenswuerdig ist und welche Luecken bleiben.

## Trigger

- warum ist das vertrauenswuerdig
- welche Quellen wurden genutzt
- zeig Annahmen
- Adminansicht
- Source Trace

## Input

```text
Output
genutzte Quellen
Knowledge Items
Annahmen
fehlende Quellen
```

## Ablauf

1. Quellen nennen.
2. Annahmen nennen.
3. Luecken nennen.
4. Confidence knapp einschaetzen.
5. Naechsten Schritt empfehlen.

## Output

```text
Quellen
Annahmen
Luecken
Confidence
Naechster Schritt
```

## Eval

```text
eval_source_to_output_trace
```

## Review-Bedarf

- Airtable-Quellenfelder live testen
- Adminformat nicht zu lang machen
