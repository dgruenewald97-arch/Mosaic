# Mosaic Evals

## Zweck

Dieser Ordner enthaelt strukturierte Testfaelle fuer Mosaic Workbench.

Die Tests sind noch kein automatischer Runner. Sie sind das Datenfundament fuer:

- manuelle QA
- Prompt-vNext Reviews
- Golden Examples
- spaetere automatisierte Evaluation

## Dateien

- `hermes-eval-cases.json` - erste strukturierte MVP-Testfaelle. Dateiname bleibt vorerst Legacy.

## Nutzung

1. Testfall auswaehlen.
2. passenden Agenten prompten.
3. Antwort gegen erwartete Entscheidung pruefen.
4. Safety-Fail zuerst bewerten.
5. Score notieren.

## Regel

```text
Wenn ein Feature Safety-Tests verschlechtert, wird es nicht aktiviert.
```
