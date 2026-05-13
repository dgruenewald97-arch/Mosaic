# Director Model

## Zweck

Das Director Model verhindert, dass viele Spezial-Agenten unkoordiniert nebeneinander arbeiten.

Eine Agentur braucht nicht nur Produktion, sondern auch Leitung:

- Richtung
- Priorisierung
- Uebergabe
- Qualitaet
- Timing
- Abschluss

## Drei Ebenen

```text
Direction Layer
= fuehrt und orchestriert

Production Layer
= erstellt konkrete Arbeitsergebnisse

Control Layer
= prueft, sichert und versioniert
```

## Direction Layer

### Agency Director

Default Director fuer komplexe Aufgaben. Kombiniert Strategy, Creative, Operations und QA leichtgewichtig.

### Strategy Director

Optional spaeter. Verantwortet Strategie, Zielgruppen, Botschaften, Kanalrollen.

### Creative Director

Optional spaeter. Verantwortet kreative Idee, Ton, Dramaturgie, Design-/Text-Zusammenspiel.

### Operations Director

Optional spaeter. Verantwortet Ablauf, offene Inputs, Deadlines, Uebergaben.

### QA Director

Optional spaeter. Verantwortet Pruefroute, Risiken, Freigabehinweise.

## Wann ein Director eingeschaltet wird

Director noetig:

- mehr als ein Output
- mehr als ein Kanal
- Strategie + Produktion gemischt
- unklare Aufgabe
- Praesentation oder Kampagne
- mehrere Spezial-Agenten beteiligt

Director nicht noetig:

- einzelner kurzer Text
- einzelner QA-Check
- einfache Textvariante
- einzelnes Dokument einordnen

## Routing-Regel

```text
Einfach -> Arbeitsplatz-Agent
Komplex -> Agency Director
System -> Agent Architect
Wissen -> Knowledge Intake
Risiko -> Brand QA
```

## Anti-Chaos-Regeln

1. Ein Director fuehrt die Aufgabe, nicht alle gleichzeitig.
2. Production Agents liefern Bausteine, der Director fuehrt zusammen.
3. QA kommt vor finaler Ausgabe, wenn Fakten, Preise, Claims oder Marke betroffen sind.
4. Directors nennen maximal einen naechsten Schritt.
5. Directors duerfen planen, aber muessen schnell in Output kommen.

## MVP-Regel

Im MVP gibt es nur einen sichtbaren Director:

```text
Agency Director
```

Strategy, Creative, Operations und QA sind Perspektiven im Prompt, keine separaten sichtbaren Agenten.

Erst wenn die Aufgabenmenge groesser wird, werden daraus eigene Director-Agenten.
