# Hermes GraphRAG Memory Plan

## Zweck

Hermes braucht nicht sofort eine Graphdatenbank.

Aber Hermes braucht graphisches Denken:

```text
Brand -> Product -> Campaign -> Knowledge Item -> Source -> Agent -> Workflow -> Gap
```

Dieses Dokument beschreibt, wie der Airtable Memory Layer GraphRAG-inspiriert genutzt wird.

## Warum Graphdenken

Listen zeigen, was existiert.

Graphen zeigen:

- was zusammenhaengt
- was isoliert ist
- welche Quelle welchen Output stuetzt
- welche Agenten von welchem Wissen abhaengen
- wo Luecken echte Workflows blockieren

## MVP-Ansatz

Keine neue Graphdatenbank.

Stattdessen:

- Airtable Relations sauber pflegen
- Network Report nutzen
- isolierte Knoten markieren
- Quellenabdeckung messen
- Workflows gegen Knowledge Items mappen

## Knoten

```text
Brand
Product
Campaign
Knowledge Item
Source
Agent
Procedure
Workflow
Open Gap
Learning
```

## Kanten

```text
Brand -> Product
Brand -> Campaign
Campaign -> Knowledge Item
Knowledge Item -> Source
Knowledge Item -> Agent
Agent -> Workflow
Workflow -> Procedure
Open Gap -> Workflow
Learning -> Campaign
```

## Graph Health Metrics

Metriken:

- isolierte Knowledge Items
- Sources ohne Knowledge Items
- Agents ohne Knowledge Dependencies
- Workflows ohne QA-Regel
- Products ohne Last Verified
- Campaigns ohne Source
- Active Items mit Low Confidence
- Conflicting Items mit betroffenen Workflows

## Retrieval-Regel

Graph Retrieval laeuft in Stufen:

1. Startknoten erkennen: Brand, Product, Campaign oder Workflow
2. direkte Nachbarn laden
3. nur bei Bedarf zweite Ebene laden
4. Safety- und QA-Knoten immer priorisieren
5. Archive nur auf Nachfrage

## Token-Kontrolle

Graphdenken darf nicht bedeuten:

```text
alles laden, was verbunden ist.
```

Regel:

```text
Maximal die kleinste relevante Nachbarschaft laden.
```

## Network Report Integration

Der Network Report ist die erste Graph-Ansicht.

Er zeigt:

- Memory Health
- Vernetzungsgrad
- Quellenabdeckung
- Agenten-Abhaengigkeiten
- Workflow-Abdeckung
- Risiken und Konflikte

## Spaeter

Erst nach MVP pruefen:

- Export als Graph JSON
- Visualisierung
- Graphdatenbank
- GraphRAG-Community-Summaries
- Entity Resolution

## Merksatz

```text
Hermes braucht keinen Graphen, um fancy zu wirken.
Hermes braucht Beziehungen, damit Wissen nicht alleine im Keller steht.
```
