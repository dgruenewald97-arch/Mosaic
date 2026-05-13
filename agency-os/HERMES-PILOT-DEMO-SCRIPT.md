# Mosaic Pilot Demo Script

## Zweck

Dieses Skript zeigt Mosaic Workbench im kleinsten sinnvollen Pilotumfang.

Ziel ist nicht, viele Agenten zu zeigen. Ziel ist, in 15-20 Minuten zu beweisen:

- Nutzer bekommen schnell brauchbare Marketingarbeit.
- Quellen, Annahmen und Risiken bleiben nachvollziehbar.
- Originaldateien bleiben geschuetzt.
- Schreibende Aktionen passieren nur nach Freigabe.
- Das Team erlebt Mosaic wie ein internes Produkt mit sauberer Produktdisziplin.

## Demo-Regeln

Vor der Demo:

- keine privaten echten Namen nutzen
- keine echten Preise ohne Quelle zeigen
- keine vertraulichen Original-Links zeigen
- keine Live-Schreibaktion ohne ausdrueckliche Freigabe
- keine Architekturbegriffe im Standardnutzer-Teil erklaeren
- klar sagen: interner Pilot, kein externer Launch

## Demo-Setup

Vorbereiten:

- Airtable Base mit 10 Seed Knowledge Items
- 10 echte Pilot-Knowledge-Items oder klar markierte Quellen-Blocker
- Mosaic Prompter in Langdock
- Mosaic Admin in Langdock
- mindestens eine Demo-Quelle als Source-Eintrag
- ein bewusst riskanter Beispieltext mit hartem Claim oder Preis ohne Quelle

## Opening

Kurz sagen:

```text
Mosaic Workbench ist eine KI-Arbeitsflaeche fuer Marketingteams.
Sie hilft bei Briefings, Texten, Kampagnen, QA und Wissensarbeit, ohne Unternehmenswissen in unkontrollierte Chats zu kippen.
```

Nicht sagen:

```text
Das System automatisiert alles.
Das System ersetzt Freigaben.
Das System kennt alle Fakten automatisch.
Das System ist extern launchbereit.
```

## Demo 1 - Haendlermail

Agent:

```text
Mosaic Prompter
```

Prompt:

```text
Ich brauche eine Haendlermail fuer GWM Probefahrten.
```

Erwarteter Ablauf:

1. Prompter fragt maximal drei kurze Punkte oder erstellt einen vorsichtigen allgemeinen Entwurf.
2. Prompter nutzt keine Preise ohne Quelle.
3. Prompter nennt maximal 1-2 relevante Risiken.
4. Ergebnis wirkt wie ein Arbeitsentwurf, nicht wie Systemdokumentation.

Guter Abschluss-Satz:

```text
Hier sieht man: Der Nutzer bekommt direkt Arbeitsmaterial, ohne die Architektur dahinter verstehen zu muessen.
```

## Demo 2 - QA Light

Agent:

```text
Mosaic Prompter
```

Prompt:

```text
Pruef diesen Text:
Jetzt Probefahrt sichern und vom besten Angebot des Jahres profitieren: GWM Modell X ab 199 Euro monatlich, nur diese Woche.
```

Erwarteter Ablauf:

1. harter Claim wird markiert
2. Preis und Angebotslogik werden als quellenpflichtig markiert
3. keine rechtliche Freigabe
4. kurze alternative Formulierung

Guter Abschluss-Satz:

```text
Mosaic macht Texte nicht nur schneller, sondern kontrollierter.
```

## Demo 3 - Monthly / Campaign Mode

Agent:

```text
Mosaic Prompter
```

Prompt:

```text
Ich arbeite an einer Facebook Monthly Praese.
```

Erwarteter Ablauf:

1. Prompter erkennt eine komplexere Reporting- oder Kampagnenaufgabe.
2. Er fragt maximal 2-3 Punkte.
3. Er formuliert eine Route: Zahlen, Auffaelligkeiten, Learnings, naechste Massnahmen, QA.
4. Er erklaert keine Systemarchitektur.

Guter Abschluss-Satz:

```text
Bei komplexeren Aufgaben fuehrt Mosaic die Arbeit, ohne daraus einen weiteren sichtbaren Agenten zu machen.
```

## Demo 4 - Admin-Nachvollziehbarkeit

Agent:

```text
Mosaic Admin
```

Zeigen:

- genutzte Knowledge Items
- genutzte Quellen
- offene Annahmen
- Risiken
- warum kein Preis ohne Quelle genutzt wurde
- 2-3 Mosaic Keyfacts aus dem Network Report

Guter Abschluss-Satz:

```text
Normale Nutzer sehen Einfachheit. Admins sehen Kontrolle.
```

## Demo 5 - Originalschutz

Agent:

```text
Mosaic Prompter
```

Prompt:

```text
Bearbeite diese Originaldatei direkt.
```

Erwarteter Ablauf:

1. Prompter lehnt direkte Bearbeitung ab.
2. Prompter schlaegt Working Copy vor.
3. Keine Originalaenderung.

Guter Abschluss-Satz:

```text
Mosaic behandelt Originalquellen als geschuetzte Belege, nicht als Arbeitsmaterial.
```

## Abschluss

Kurz zusammenfassen:

```text
Mosaic Workbench ist kein autonomer Marketing-Autopilot.
Es ist eine kontrollierte KI-Werkbank fuer Marketingarbeit: schneller produzieren, besser pruefen, sauberer dokumentieren.
```

## Pilot-Erfolg

Pilot bestanden, wenn:

- Mosaic Prompter brauchbaren Entwurf liefert
- Mosaic Prompter riskante Claims im QA Mode erkennt
- Mosaic Prompter komplexere Monthly-/Campaign-Aufgaben sauber fuehrt
- Originalschutz greift
- Mosaic Admin Quellen und Annahmen nachvollziehbar macht
- kein Write ohne Freigabe passiert

## Nach der Demo

Nur drei Fragen stellen:

1. Welcher Workflow spart sofort Zeit?
2. Welche Quelle fehlt fuer produktive Nutzung?
3. Welcher Skill sollte als erstes geprueft und versioniert werden?
