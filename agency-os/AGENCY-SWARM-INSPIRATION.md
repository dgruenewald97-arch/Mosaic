# Agency Swarm Inspiration

## Zweck

Dieses Dokument verbindet das Mobility Minds Agency OS mit bewaehrten Multi-Agent-Agentur-Patterns.

Inspiration ist unter anderem Agency Swarm: ein Open-Source-Framework, das Agenten als Rollen innerhalb einer Agentur denkt. Die relevante Idee ist nicht, moeglichst viele Agenten zu bauen, sondern Arbeit ueber spezialisierte Rollen, klare Verantwortlichkeiten und kontrollierte Kommunikation zu strukturieren.

## Was wir uebernehmen

### 1. Agentur-Metapher

Agenten werden wie Rollen in einer echten Agentur gedacht:

- Director
- Strategist
- Copy
- Social
- Design Brief
- QA
- Knowledge
- Architect

Das macht das System fuer Menschen intuitiver als abstrakte technische Agentennamen.

### 2. Spezialisierte Rollen

Jeder Agent hat eine konkrete Aufgabe und einen klaren Output.

Regel:

```text
Ein Agent = eine Verantwortung.
```

Keine Alleskoenner-Prompts.

### 3. Orchestrierung statt Wildwuchs

Komplexe Aufgaben laufen ueber einen leitenden Agenten.

Im Mobility Minds Agency OS ist das:

```text
Agency Director
```

Er entscheidet, ob Content, Strategy, Design Brief oder QA gebraucht werden.

### 4. Kommunikation ueber Rollenbeschreibung

Agenten sollen nicht alles voneinander wissen. Sie brauchen nur:

- Aufgabe
- Input
- Output
- Uebergabeformat
- Grenzen

Das reduziert Kontext und verhindert Prompt-Chaos.

### 5. Guardrails vor Autonomie

Autonomie ist nur innerhalb klarer Regeln sinnvoll.

Bei Mobility Minds heisst das:

- keine Originale veraendern
- keine Preise ohne Quelle
- keine harten Claims ohne Beleg
- keine stillen Commits
- Human-in-the-loop bei riskanten Aktionen

## Was wir nicht uebernehmen

### Kein 200-Agenten-System im MVP

Viele Agenten wirken beeindruckend, machen aber schnell:

- Routing schwer
- Wartung teuer
- Qualitaet uneinheitlich
- Verantwortlichkeiten unscharf
- Tokenverbrauch hoeher

MVP-Regel:

```text
So wenige Agenten wie moeglich, so viele wie noetig.
```

### Kein autonomes Agenten-Theater

Agenten sollen nicht endlos miteinander reden.

Sie sollen:

- schnell klaeren
- gezielt arbeiten
- knapp pruefen
- brauchbar liefern

### Kein Framework-Lock-in

Agency Swarm ist Inspiration, nicht Fundament.

Mobility Minds baut auf:

- Langdock als UI
- Airtable als Memory
- GitHub als Versionierung
- SharePoint/Drive als Originalquelle

## Mobility-Minds-Version des Patterns

```text
Agency Director
-> routed komplexe Aufgaben

Content Assistant
-> schreibt konkrete Texte

Brand QA
-> prueft Risiken

Knowledge Intake
-> speichert Wissen sauber

Agent Architect
-> baut und pflegt das System
```

Spaeter erweiterbar:

- Social Assistant
- Design Brief Assistant
- Handelsmarketing Assistant
- Reporting Assistant
- Learning Agent

## Entscheidungsregel fuer neue Agenten

Ein neuer Agent wird nur gebaut, wenn mindestens drei Punkte zutreffen:

- Aufgabe kommt regelmaessig vor
- eigener Output ist klar
- eigene Memory-Bereiche sind klar
- bestehender Agent waere ueberladen
- eigene Safety-Regeln sind noetig
- Nutzergruppe ist klar

Wenn nicht:

```text
Bestehenden Agenten verbessern statt neuen bauen.
```

## Merksatz

```text
Nicht viele Agenten machen das System intelligent.
Klare Rollen, gute Orchestrierung und sauberes Memory machen es intelligent.
```
