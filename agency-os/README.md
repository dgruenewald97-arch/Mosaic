# Mosaic Workbench

Dieses Verzeichnis ist der neue Blueprint fuer eine interne Marketing Workbench.

Produktname:

```text
Mosaic Workbench
```

Mosaic Workbench ist die produktisierte Huelle fuer dieses System: eine KI-gestuetzte Arbeitsflaeche fuer Marketingteams, die verstreutes Wissen, Prompts, Skills, Outputs und Learnings zu einem nutzbaren Gesamtbild verbindet.

Die alte Struktur in `langdock/` und `github/` bleibt als Prototyp erhalten. Dieses Paket beschreibt die neue Zielarchitektur:

- Langdock ist das einfache Arbeitsinterface.
- Airtable ist das lebende, editierbare Gedaechtnis.
- GitHub versioniert Agenten, Prozeduren und Changelogs.
- SharePoint/Drive bleiben die geschuetzten Originalquellen.
- Normale Nutzer sehen einfache Arbeitsflows, nicht den Maschinenraum.

## Dokumente

1. `SYSTEM-BLUEPRINT.md` - Gesamtidee, Architektur und MVP.
2. `UX-BLUEPRINT.md` - Nutzerfuehrung fuer einfache und fortgeschrittene Nutzung.
3. `GOVERNANCE.md` - Rechte, Freigaben, SharePoint-Originalschutz und Sicherheitsregeln.
4. `AIRTABLE-MEMORY-SCHEMA.md` - Tabellen, Felder und Beziehungen fuer den Memory Layer.
5. `LANGDOCK-INTERFACE.md` - Welche Agenten, Actions und Workflows in Langdock sichtbar sein sollen.
6. `GITHUB-STRUCTURE.md` - Repo-Struktur fuer Prompts, Procedures und Registry.
7. `MVP-ROADMAP.md` - Reihenfolge, in der das System gebaut werden sollte.
8. `SETUP-SEQUENCE.md` - Konkrete Setup-Reihenfolge fuer den ersten Build.
9. `SAFETY-MASTER-RULES.md` - Zentrale No-Go-Regeln fuer Claims, Preise, Datenschutz und Originale.
10. `TECHNICAL-ACTION-CHECK.md` - Pruefplan fuer Langdock Actions und Integrationen.
11. `MVP-TESTPLAN.md` - Kleine, harte Tests fuer den ersten nutzbaren Kern.
12. `DIRECTOR-MODEL.md` - Agentur-Hierarchie mit Direction, Production und Control Layer.
13. `AGENT-COGNITIVE-ARCHITECTURE.md` - Best-Practice-basierte innere Arbeitslogik fuer alle Agenten.
14. `AGENCY-SWARM-INSPIRATION.md` - Welche Multi-Agent-Agentur-Patterns wir uebernehmen und welche bewusst nicht.
15. `HERMES-PERSISTENCE-PATTERN.md` - Persistente Agentenidentitaet, Skills und kontrollierte Selbstverbesserung ohne Endlosschleifen.
16. `HERMES-FOR-MARKETING.md` - Produktisierte Positionierung fuer Mosaic Workbench. Dateiname bleibt vorerst Legacy.
17. `FINAL-LAUNCH-CHECKLIST.md` - Gatekeeper-Checkliste fuer internen Pilot und externe Readiness.
18. `HERMES-PILOT-DEMO-SCRIPT.md` - Schlankes Demo-Skript fuer den ersten Mosaic-Pilot. Dateiname bleibt vorerst Legacy.
19. `HERMES-NETWORK-REPORT.md` - Admin-Report zur Vernetzung von Wissen, Quellen, Agenten, Workflows und Luecken.
20. `HERMES-KEYFACTS.md` - Regeln und Beispiele fuer charmante, faktenbasierte Admin-Keyfacts.
21. `HERMES-CONSISTENCY-CHECK.md` - Aktueller Konsistenzcheck fuer das Mosaic MVP-Paket. Dateiname bleibt vorerst Legacy.
22. `HERMES-DEMO-RUN-CURRENT-MVP.md` - Gefuehrte echte Demo auf Basis des aktuellen MVP-Stands.
23. `HERMES-SCIENCE-NOTES.md` - Wissenschaftliche Arbeitsanker fuer Training, Agentenlogik, Affective Computing und Token-Effizienz.
24. `HERMES-AFFECTIVE-DECISION-LAYER.md` - Interne Entscheidungsmarker fuer Risiko, Vertrauen, Dringlichkeit und Nutzerfriktion.
25. `HERMES-TOKEN-EFFICIENCY.md` - Token-Budgets, Retrieval-Reihenfolge und Kontext-Kompression.
26. `HERMES-INTELLIGENCE-UPGRADE.md` - Feature-Roadmap fuer bessere Entscheidungslogik, Skill Mining und Evaluation.
27. `HERMES-MODEL-TRAINING-THEORY.md` - Stufenmodell von Prompting ueber Retrieval und Golden Examples bis optionalem Fine-Tuning.
28. `HERMES-PROMPT-UPGRADE-PACK-VNEXT.md` - Review-faehige Prompt-Snippets fuer Affective Layer und Token Budget.
29. `HERMES-EVALUATION-HARNESS.md` - Testfaelle und Scoring fuer sichere Prompt- und Feature-Verbesserungen.
30. `HERMES-DEEP-RUN-REPORT-2026-05-13.md` - Bericht zum Deep Run fuer neue Logik, Token-Effizienz, Training-Theorie und Affective Layer.
31. `HERMES-FEATURE-RADAR-2026-05-13.md` - Bewertetes Feature-Radar fuer neue Hermes-Faehigkeiten.
32. `HERMES-AGENTIC-SECURITY-MODEL.md` - Security-Modell fuer Prompt Injection, Tool-Rechte, RAG und excessive agency.
33. `HERMES-GRAPHRAG-MEMORY-PLAN.md` - GraphRAG-inspirierter Memory-Plan auf Airtable-Basis.
34. `HERMES-RAG-EVALUATION.md` - RAG-Evaluationsmetriken fuer Retrieval, Faithfulness, Nutzen und Risiko.
35. `HERMES-SWARM-DISCOVERY-ENGINE.md` - Begrenztes Schwarmverfahren fuer Feature-, USP- und Trainingswissen.
36. `HERMES-USP-DISCOVERY.md` - USP-Kandidaten und Positionierung fuer Agenturen.
37. `HERMES-SWARM-DEEP-RUN-2026-05-13.md` - 12 Discovery-Schleifen mit Feature-, USP-, Eval- und Trainingssignalen.
38. `HERMES-TWO-AGENT-MVP.md` - Radikal vereinfachter MVP mit nur Mosaic Prompter und Mosaic Admin. Dateiname bleibt vorerst Legacy.
39. `HERMES-DEBUG-MAP.md` - Primaere Orientierungsdatei, damit MVP, Backlog und alte Rollen nicht durcheinander geraten.
40. `HERMES-SKILL-FACTORY.md` - Pipeline von Aufgabenmustern zu Skill-Kandidaten und Diamond Skills.
41. `MOSAIC-PRODUCT-NAMING.md` - Produktname, Naming-Logik und Migration von Hermes zu Mosaic Workbench.
42. `MOSAIC-WORKBENCH-PAPER.md` - Ausfuehrliches Paper zu Produkt, Architektur, Memory, Skills, Evals und wissenschaftlichen Arbeitsankern.
43. `MOSAIC-REPO-SETUP-GUIDE.md` - Praktische Anleitung, um Mosaic nach dem Kopieren des Repos aufzusetzen.
44. `MOSAIC-PROJECT-LOGIC-CHECK.md` - Aktueller Gesamtcheck zu Logik, Naming, Tests, Privacy und naechsten Blockern.
45. `MOSAIC-BACKGROUND-IMPROVEMENT-LOOP.md` - Hintergrundlogik fuer externe KI, Datenlesen, Mustererkennung und kontrollierte Verbesserungen.
46. `MOSAIC-PLUG-AND-PLAY.md` - Kuerzester Weg vom privaten Repo-Link zu Langdock, Airtable und erstem Live-Test.
47. `LANGDOCK-AGENT-CARDS.md` - Copy-freundliche Agent Cards fuer Mosaic Prompter und Mosaic Admin.

## Tools

- `tools/check-mosaic.ps1` - lokaler Self-Check fuer Pflichtdateien, JSON, ASCII, Naming und Privacy-Hinweise.

## Mosaic Patterns

- `patterns/hermes-pattern-taxonomy.md` - Taxonomie fuer wiederkehrende Agentur-Aufgabenmuster.

## Mosaic Skills

- `skills/candidates/diamond-haendlermail-structure-v1.md`
- `skills/candidates/diamond-claim-risk-check-v1.md`
- `skills/candidates/diamond-facebook-monthly-story-v1.md`
- `skills/candidates/diamond-source-to-output-trace-v1.md`

## Mosaic Evals

- `evals/hermes-eval-cases.json` - strukturierte Testfaelle fuer Safety, RAG, Token Budget und Network Report.

## Mosaic Training

- `training/hermes-swarm-training-cases.json` - Trainingsfaelle aus dem Swarm Deep Run.

## Airtable MVP Setup

- `airtable/airtable-base-build-checklist.md` - Praktische Checkliste zum Anlegen der ersten Airtable Base.
- `airtable/mvp-knowledge-seed.md` - 10 erste belegte Operating-Knowledge-Items fuer den Systemstart.
- `airtable/pilot-knowledge-intake-template.md` - Vorlage fuer 10 echte Pilot-Knowledge-Items aus belastbaren Quellen.

## Erste Agenten-Prompts

- `agents/hermes-prompter/hermes-prompter-de-v1.md` - Produktiver Zwei-Agenten-MVP-Agent fuer normale Nutzer.
- `agents/hermes-admin/hermes-admin-de-v1.md` - Admin-Agent fuer System, Memory, Eval, Reports und Prompt-/Skill-Review.
- `agents/architect/architect-agent-architect-de-v1.md` - Admin-Agent fuer System, Agentenbau und Governance.
- `agents/agency-director/agency-director-de-v1.md` - Leitungs-Agent fuer komplexe Aufgaben und Orchestrierung.
- `agents/knowledge-curator/curator-knowledge-intake-de-v1.md` - Wissen aufnehmen, strukturieren und Konflikte erkennen.
- `agents/content-assistant/content-assistant-de-v1.md` - Arbeitsplatz-Agent fuer Texte, Claims, Newsletter und Haendlermails.
- `agents/brand-qa/brand-qa-de-v1.md` - Arbeitsplatz-Agent fuer Tonalitaet, Faktenrisiken und Markenfit.

## Erste Procedures und Workflows

- `procedures/sharepoint-original-protection.md` - Harte Regel: Originale nie veraendern.
- `workflows/briefing-to-campaign.md` - MVP-Workflow von Briefing zu Kampagne, Copy, Design-Briefing und QA.

## Architektur in einem Satz

Langdock ist die UI, Airtable ist das strukturierte Gedaechtnis, GitHub ist die Versionierung, SharePoint/Drive sind geschuetzte Originalquellen.

## Produkt in einem Satz

Mosaic Workbench ist eine KI-gestuetzte Arbeitsflaeche fuer Inhouse-Marketingteams, die Wissen, Prompts, Skills und Outputs zu nutzbarer Marketingarbeit verbindet.

## MVP-Prinzip

Nicht alles automatisieren. Erst einen kleinen, belastbaren Kern bauen:

1. Mosaic Prompter.
2. Mosaic Admin.
3. 10 Seed Knowledge Items plus 10 echte Pilot-Knowledge-Items aus Quellen.
4. Ein echter Workflow: Haendlermail oder Facebook-Monthly.
5. Evalcases gegen beide Agenten.

## Leitprinzip

Komplexitaet nach innen, Einfachheit nach aussen.

Das System soll sich fuer normale Nutzer wie ein guter Kollege anfuehlen. Fuer Admins soll es erklaerbar, steuerbar und versionierbar bleiben.
