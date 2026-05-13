# Hermes Swarm Discovery Engine

## Zweck

Die Swarm Discovery Engine erzeugt neues Agenturwissen, Feature-Ideen, USP-Kandidaten und Trainingsfaelle aus mehreren Perspektiven.

Sie ist kein autonomer Selbstverbesserungsloop. Sie ist ein begrenztes Denkverfahren:

```text
Viele Perspektiven.
Klare Bewertung.
Kein Live-Umbau ohne Review.
```

## Warum Schwarm

Ein einzelner Agent sieht oft nur die naechste Antwort.

Ein Schwarm aus Perspektiven sieht:

- Nutzerwert
- Agenturwert
- Kreativqualitaet
- Operations-Aufwand
- Quellenlage
- Risiken
- Wiederverwendbarkeit
- Trainingswert

## Rollen im Schwarm

### Strategy Lens

Fragt:

- Hilft das Feature echten Marketingzielen?
- Macht es Kampagnen oder Kommunikation besser?
- Gibt es einen klaren Nutzen fuer Agenturen?

### Creative Lens

Fragt:

- Macht es Outputs besser, frischer oder markanter?
- Hilft es, Ideen zu finden statt nur Texte zu verwalten?
- Hat es eine erinnerbare Oberflaeche?

### Operations Lens

Fragt:

- Spart es echte Zeit?
- Passt es in bestehende Prozesse?
- Kann ein Team es ohne Maschinenraum nutzen?

### Memory Lens

Fragt:

- Entsteht daraus besseres Unternehmensgedaechtnis?
- Gibt es Quellen, Relationen und Wiederverwendbarkeit?
- Wird Wissen spaeter leichter auffindbar?

### QA Lens

Fragt:

- Verhindert es Fehler?
- Macht es Claims, Preise oder Konflikte sichtbarer?
- Ist der Guardrail schlank genug?

### User Empathy Lens

Fragt:

- Fuehlt es sich fuer Menschen entlastend an?
- Senkt es Friktion?
- Gibt es einen klaren naechsten Schritt?

### Architect Lens

Fragt:

- Passt es in Hermes?
- Ist es ein Agent, Skill, Procedure, Report oder Memory-Feld?
- Kann es getestet und versioniert werden?

## Loop-Format

Jede Schleife erzeugt:

```text
1. Beobachtung
2. Feature-Kandidat
3. USP-Hypothese
4. Trainingssignal
5. Eval-Test
6. Entscheidung
```

## Bewertungslogik

```text
Human Value      0-3
Agency Value     0-3
Memory Value     0-3
Differentiation  0-3
Buildability     0-3
```

Entscheidung:

```text
13-15 = Build next
10-12 = Pilot
7-9   = Keep as training signal
0-6   = Drop
```

## Lean Guardrail

Hermes soll nicht vor lauter Vorsicht lahm werden.

Regel:

```text
Guardrails sollen riskante Aktionen stoppen, nicht harmlose Arbeit bremsen.
```

Wenn kein Preis, kein harter Claim, kein Original, keine personenbezogene Information und keine Write-Action betroffen ist:

```text
Liefern statt warnen.
```

## Training-Signal

Jede gute Schleife erzeugt mindestens eins:

- Golden Example
- Negative Example
- Skill Candidate
- Open Gap
- Evaluation Case
- Memory Relation
- Product USP

## Stop-Regel

Ein Swarm Run endet nach einer festen Anzahl Schleifen.

MVP-Empfehlung:

```text
12 Schleifen pro Discovery Run.
```

Danach:

- Top Features priorisieren
- Trainingsfaelle speichern
- keine automatische Live-Aktivierung

## Merksatz

```text
Hermes denkt im Schwarm, aber handelt mit Freigabe.
```
