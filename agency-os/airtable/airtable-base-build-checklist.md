# Airtable Base Build Checklist

## Ziel

Diese Checkliste fuehrt durch den Aufbau der ersten Airtable Base fuer Mosaic Workbench.

Sie ist bewusst klein gehalten: Erst Tabellen, Felder, Statuswerte, 10 Seed Knowledge Items und danach die echten Pilot-Knowledge-Items. Danach Actions testen.

## 1. Base anlegen

Name:

```text
Mobility Minds Mosaic Memory
```

Zweck:

```text
Strukturierter Memory Layer fuer Agenten, Quellen, Workflows, offene Luecken und Audit Logs.
```

## 2. Tabellen anlegen

Pflichttabellen fuer MVP:

1. `Brands`
2. `Products`
3. `Campaigns`
4. `Knowledge Items`
5. `Agents`
6. `Procedures`
7. `Sources`
8. `Open Gaps`
9. `Requests`
10. `Audit Log`

Spaeter ergaenzen:

- `Learnings`

Hinweis: `Learnings` ist fachlich wichtig, aber fuer den ersten Content/QA-Test nicht blockierend.

## 3. Knowledge Items zuerst sauber bauen

Pflichtfelder:

- `Title`
- `Brand`
- `Type`
- `Summary`
- `Details`
- `Status`
- `Temperature`
- `Relevant For`
- `Source`
- `Confidence`
- `Last Verified`

Empfohlene Single-/Multi-Select-Werte:

```text
Type:
Brand Voice, Product, Campaign, Process, Offer, Team, Learning, Legal, Design, Other

Status:
Draft, Active, Outdated, Conflicting, Archived

Temperature:
Core, Hot, Warm, Archive

Relevant For:
Copy, Design, Social, Handelsmarketing, Reporting, QA, Architect

Confidence:
Low, Medium, High
```

MVP-Regel:

```text
Nur Active + ausreichende Confidence darf ohne Warnhinweis aktiv fuer Outputs genutzt werden.
```

## 4. Sources-Tabelle vorbereiten

Pflichtfelder:

- `Title`
- `Source Type`
- `Original URL`
- `Working Copy URL`
- `Owner`
- `Access Level`
- `Do Not Modify`
- `Last Checked`
- `Related Knowledge Items`

MVP-Regel:

```text
Bei Originalquellen ist Do Not Modify immer true.
```

Zulaessige `Source Type` Werte:

```text
SharePoint, Drive, Upload, Email, Manual, GitHub
```

## 5. Agents-Tabelle vorbereiten

Erste aktive MVP-Agenten:

1. `Mosaic Prompter`
2. `Mosaic Admin`

Pflichtfelder:

- `Agent Name`
- `Category`
- `Status`
- `Version`
- `GitHub Path`
- `Purpose`
- `Inputs`
- `Outputs`
- `Knowledge Dependencies`
- `Actions Allowed`
- `Owner`
- `Last Updated`

Alte Rollennamen wie `Content Assistant`, `Brand QA`, `Agency Director`, `Knowledge Intake` und `Agent Architect` bleiben Referenz oder spaetere Option, sind aber im MVP keine sichtbaren Agenten.

## 6. Procedures-Tabelle vorbereiten

Erste Procedure:

```text
SharePoint Original Protection
```

GitHub Path:

```text
agency-os/procedures/sharepoint-original-protection.md
```

Status:

```text
Active
```

## 7. Open Gaps vorbereiten

Erste sinnvolle Gaps:

1. `Echte Brand Voice Quellen fehlen noch fuer produktive Markenoutputs.`
2. `Langdock Action Limits fuer Airtable Write muessen getestet werden.`
3. `SharePoint/Drive Read-only Verhalten muss technisch validiert werden.`

## 8. Audit Log vorbereiten

Pflichtregel:

```text
Jede schreibende Agentenaktion braucht einen Audit Log Eintrag.
```

Felder:

- `Date`
- `User`
- `Action`
- `Object Type`
- `Object`
- `Before`
- `After`
- `Reason`
- `Approved By`

## 9. Erste Views anlegen

Empfohlene Views:

- `Knowledge - Active Core`
- `Knowledge - Drafts`
- `Knowledge - Conflicts`
- `Sources - Originals`
- `Agents - Active`
- `Open Gaps - High and Blocker`
- `Audit - Latest`

## 10. Action-Testreihenfolge

Nach dem Anlegen:

1. Airtable Read: `search_knowledge_items`
2. Airtable Read: `search_brand_voice`
3. Airtable Read: `list_open_gaps`
4. Airtable Write Draft: `create_knowledge_item`
5. Audit: `write_audit_log`

Write-Test nur mit ausdruecklicher Freigabe ausfuehren.

## Done-Kriterium

Die Airtable Base ist MVP-ready, wenn:

- alle Pflichttabellen existieren
- die 10 Seed Knowledge Items eingetragen sind
- echte Pilot-Knowledge-Items aus Quellen aufgenommen oder fehlende Quellen als Blocker markiert sind
- Originalquellen als nicht veraenderbar markiert sind
- mindestens eine Read Action maximal 3-5 relevante Eintraege zurueckgibt
- ein Write-Draft erst nach Freigabe gespeichert wird
