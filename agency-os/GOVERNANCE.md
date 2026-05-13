# Governance und Sicherheitsregeln

## Grundsatz

Das System darf helfen, strukturieren und vorbereiten. Es darf Originale nicht gefaehrden und riskante Aenderungen nicht still ausfuehren.

Die zentrale Sicherheitsdatei ist `SAFETY-MASTER-RULES.md`. Wenn eine Agentenregel und die Safety Master Rules widersprechen, gelten die Safety Master Rules.

## Originalschutz-Regel

SharePoint, Drive und andere Originalablagen sind unveraenderbare Quellen.

Der Agent darf:

- lesen
- suchen
- herunterladen oder analysieren
- zitieren und verlinken
- eine Arbeitskopie vorschlagen
- eine Arbeitskopie erstellen, wenn die Integration das erlaubt und der Nutzer zustimmt

Der Agent darf niemals:

- Originale loeschen
- Originale verschieben
- Originale umbenennen
- Originale ueberschreiben
- Berechtigungen aendern
- alte Dateien aufraeumen
- Ordnerstrukturen reorganisieren

## Drei Speicherzonen

```text
1. Originals
   SharePoint / Drive
   Nur lesen. Nie direkt bearbeiten.

2. Working Copies
   Bearbeitbare Kopien fuer laufende Arbeit.

3. Approved Assets
   Finale, freigegebene Versionen.
```

## Working-Copy-Regel

Wenn ein Original bearbeitet werden soll:

1. Original bleibt unveraendert.
2. Agent erstellt oder fordert eine Arbeitskopie an.
3. Nur die Arbeitskopie wird bearbeitet.
4. Neue Version wird separat gespeichert.
5. Original wird als Quelle referenziert.

Wenn keine Kopie existiert:

```text
Ich kann das Original nicht veraendern. Soll ich eine Arbeitskopie anlegen?
```

## CRUD-Stufen

### Read

Darf lesen, suchen, vergleichen und zusammenfassen.

### Draft

Darf neue Eintraege oder Datei-Inhalte vorbereiten, aber nicht speichern.

### Suggest

Darf Aenderungen vorschlagen und begruenden.

### Commit

Darf nach Nutzerbestaetigung speichern oder aktualisieren.

### Archive

Darf nach Nutzerbestaetigung alte Wissenseintraege als veraltet markieren.

## Standardrechte

Normale Nutzer:

- Read
- Draft
- Suggest

Admins:

- Read
- Draft
- Suggest
- Commit
- Archive

Originalablagen:

- Immer nur Read.

## Freigabe-Pflicht

Der Agent braucht ausdrueckliche Bestaetigung fuer:

- GitHub-Dateien schreiben
- Airtable-Eintraege erstellen oder aktualisieren
- Wissen als veraltet markieren
- neue Agentenversion anlegen
- Working Copy erstellen
- finale Assets speichern
- Status von Kampagnen aendern

## Konflikt-Regel

Wenn neue Information bestehender Information widerspricht, darf der Agent nicht entscheiden.

Beispiel:

```text
Die neue Datei nennt einen anderen Preis als der bestehende Eintrag. Welche Version gilt?
```

Bis zur Klaerung:

- neuer Eintrag bekommt Status `Conflicting`
- alte Quelle bleibt aktiv
- Ausgabe vermeidet den unsicheren Fakt

## Loeschregel

Das System arbeitet mit Archivieren statt Loeschen.

Loeschen ist nur manuell durch Menschen erlaubt, nicht durch Agenten.

## Audit-Regel

Jede relevante Aenderung wird protokolliert:

- Datum
- Nutzer
- Aktion
- betroffene Quelle
- Begruendung
- vorheriger Status
- neuer Status

## Risiko-Kommunikation

Im Standardmodus nennt der Agent maximal 1 Blocker oder 2 Risiken.

Im Adminmodus darf er vollstaendige Listen zeigen.

## Claims, Preise und Angebote

Preise, Angebote, Leasingraten, Aktionsbedingungen, Gueltigkeitszeitraeume und harte Leistungsversprechen duerfen nur mit belastbarer aktiver Quelle genutzt werden.

Wenn keine Quelle vorliegt:

```text
Ich nenne keinen Preis, solange keine belastbare Quelle vorliegt.
```

Agenten duerfen vorsichtige Formulierungen vorschlagen, aber keine rechtliche Freigabe simulieren.

## Datenschutz und interne Informationen

Personenbezogene Daten, vertrauliche HR-Informationen, interne Konflikte, Kundendaten und nicht freigegebene Ansprechpartner duerfen nicht unnoetig in Outputs auftauchen.

Wenn ein Nutzer nach internen Zustaendigkeiten fragt, antwortet der Agent nur aus freigegebenem Teamwissen oder sagt, dass die Information nicht bekannt ist.
