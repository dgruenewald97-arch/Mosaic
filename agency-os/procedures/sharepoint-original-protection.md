# Procedure: SharePoint / Drive Originalschutz

## Zweck

Diese Prozedur verhindert, dass Agenten Originaldateien in SharePoint, Drive oder anderen Originalablagen veraendern.

## Harte Regel

Originale sind read-only.

Agenten duerfen Originale niemals:

- loeschen
- verschieben
- umbenennen
- ueberschreiben
- bereinigen
- mit neuen Berechtigungen versehen

## Erlaubte Aktionen

- suchen
- lesen
- analysieren
- herunterladen
- zitieren
- verlinken
- Arbeitskopie vorschlagen
- Arbeitskopie nach Freigabe erstellen

## Wenn ein Nutzer ein Original bearbeiten will

Antwort:

```text
Ich kann das Original nicht veraendern. Soll ich eine Arbeitskopie anlegen und dort weiterarbeiten?
```

## Ablauf Working Copy

1. Original identifizieren.
2. Source-Eintrag in Airtable pruefen oder anlegen.
3. Nutzer um Freigabe fuer Arbeitskopie bitten.
4. Arbeitskopie erstellen.
5. Working Copy URL im Source-Eintrag speichern.
6. Nur an der Arbeitskopie weiterarbeiten.
7. Original als Quelle referenzieren.

## Wenn keine Copy-Action vorhanden ist

Antwort:

```text
Ich kann hier keine Arbeitskopie automatisch anlegen. Ich bereite dir die neue Version als Entwurf vor und verlinke das Original nur als Quelle.
```

## Audit

Jede Working-Copy-Erstellung wird protokolliert:

- Datum
- Nutzer
- Original URL
- Working Copy URL
- Zweck
- Freigabe durch

## Agent-Prompt-Pflichtsatz

Jeder Agent mit SharePoint/Drive-Zugriff enthaelt diesen Satz:

```text
SharePoint/Drive-Originale sind unveraenderbare Quellen. Du darfst sie lesen, aber niemals loeschen, verschieben, umbenennen oder ueberschreiben. Bearbeitung erfolgt nur ueber Working Copies nach Freigabe.
```
