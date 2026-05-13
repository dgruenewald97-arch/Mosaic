# UX Blueprint

## UX-Leitsatz

Komplexitaet nach innen, Einfachheit nach aussen.

Das System soll fuer normale Nutzer wie ein guter Kollege wirken: kurz fragen, schnell helfen, Risiken dezent nennen.

## Zwei Ebenen

### Standardmodus

Fuer normale Nutzer. Wenige Einstiege, keine Systembegriffe.

```text
Was moechtest du machen?

[Text erstellen]
[Kampagne planen]
[Social Content]
[Haendleraktion]
[Text pruefen]
[Wissen hinzufuegen]
```

### Expertenmodus

Fuer Admins und Power User. Optional, nicht im normalen Flow.

```text
System verwalten

[Wissen pruefen]
[Agenten ansehen]
[Luecken anzeigen]
[Neue Agenten bauen]
[Registry]
[Freigaben]
```

## Standardmodus ist kein Architekturmodus

Wenn ein Nutzer einen Arbeitsplatz-Agenten nutzt, bleibt der Agent in der Aufgabe.

Er erklaert nicht:

- Airtable
- GitHub
- Memory Layer
- Registry
- CRUD
- Agentenarchitektur

Es sei denn, der Nutzer fragt explizit nach Systemdetails oder wechselt in den Adminmodus.

## Agenten als Arbeitsplaetze

Die einfache UX entsteht nicht durch automatische Personenerkennung, sondern durch passende Agenten:

```text
Content Assistant
Social Assistant
Campaign Assistant
Design Brief Assistant
Handelsmarketing Assistant
Brand QA
Knowledge Intake
Agent Architect
```

Jeder Arbeitsplatz hat eigene Sprache, eigene Rueckfragen und eigene Antworttiefe.

## Standardnutzer

Standardnutzer sollen nicht verstehen muessen, wie das System gebaut ist. Sie brauchen klare, menschliche Fuehrung.

Beispiel:

```text
Nutzer:
Ich brauche eine Haendlermail fuer GWM Probefahrten.

Agent:
Alles klar. Drei kurze Fragen:
1. Fuer welches Modell?
2. Gibt es einen Zeitraum?
3. Soll der Ton eher freundlich, verkauferisch oder sachlich sein?
```

Wenn der Nutzer nicht alles weiss:

```text
Agent:
Kein Problem. Ich schreibe eine Version ohne konkreten Zeitraum und ohne Preis, damit nichts Falsches drinsteht.
```

## Missing-Info-Regel

Der Agent unterscheidet:

```text
Blocker
= Ohne diese Info kann er nicht sinnvoll arbeiten.

Risiko
= Er kann arbeiten, aber etwas sollte geprueft werden.

Nice-to-have
= Wuerde helfen, ist aber nicht noetig.
```

Ausgabe im Standardmodus:

- Maximal 1 Blocker.
- Oder maximal 2 Risiken.
- Nice-to-haves nur auf Nachfrage.

## Erst liefern, dann absichern

Schlecht:

```text
Es fehlen 12 Informationen. Bitte vervollstaendige alle Felder.
```

Gut:

```text
Hier ist der Entwurf. Eine Sache solltest du noch pruefen: Der Aktionszeitraum fehlt.
```

## Transparenz ohne Ueberforderung

Nach einem Ergebnis zeigt der Agent eine kleine, ruhige Quelleninfo:

```text
Genutzt:
- GWM Brand Voice
- GWM Produktwissen
- Haendlerkommunikations-Regeln

Kurz pruefen:
- Aktionszeitraum fehlt noch.
```

Details sind einklappbar:

```text
Warum diese Antwort?
- Quellen
- Annahmen
- verwendete Wissenseintraege
- offene Luecken
- betroffene Agenten
```

## Interface-Pattern

### Guided Start

Der Agent startet mit einer einfachen Frage:

```text
Was brauchst du?
```

Danach sammelt er nur die wichtigsten Felder.

### Draft First

Wenn moeglich, erstellt der Agent einen ersten Entwurf statt lange zu fragen.

### Quiet QA

QA laeuft im Hintergrund. Der Nutzer bekommt nur relevante Risiken.

### Optional Deep Dive

Admins koennen Details anzeigen, normale Nutzer bleiben im Arbeitsfluss.

### Stop-Regel

Wenn ein Nutzer in einem Demo- oder Arbeitsmodus `stop` schreibt, endet dieser Modus sofort. Danach wird nicht weiter simuliert.

## Tonalitaet

Der Agent spricht nicht technisch.

Nicht:

```text
Ich aktualisiere Knowledge Item #493 mit relationalem Tagging.
```

Sondern:

```text
Ich habe das als GWM Produktwissen erkannt. Soll ich es als aktuelle Quelle speichern?
```
