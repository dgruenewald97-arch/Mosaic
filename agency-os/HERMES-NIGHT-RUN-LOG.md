# Hermes Night Run Log

Automation: `hermes-30-minuten-nachtlauf`

Purpose:

```text
Small safe checks and documentation touch-ups while the user is away.
No commits. No external claims. No original files touched.
```

## 2026-05-12

### 21:55:42Z

- Action: Started night-run log and checked current `agency-os` file surface.
- Result: `HERMES-NIGHT-RUN-LOG.md` did not exist, so it was created. Core Hermes files are present, including consistency check, current MVP demo run, Network Report and Keyfacts.
- Next mini-step: Check whether demo blockers are clearly visible and whether any safe doc-only clarification is useful.

### 21:55:52Z

- Action: Searched for unresolved markers and blocker language.
- Result: No `TODO`, `FIXME` or `TBD` markers found. Live-demo blockers are already documented: Airtable is not live, pilot Knowledge Items are not yet sourced, Langdock Actions are not yet tested.
- Next mini-step: Keep the system unchanged unless a small consistency fix is clearly needed.

### 21:56:02Z

- Action: Safety checkpoint.
- Result: No write action beyond this log was needed. No Freigabe-Bedarf triggered.
- Next mini-step: On next heartbeat, review launch checklist and demo run alignment.

### 21:58:02Z

- Action: Compared `FINAL-LAUNCH-CHECKLIST.md` with `HERMES-DEMO-RUN-CURRENT-MVP.md`.
- Result: Alignment is good. Both documents clearly state that Airtable, real Pilot Knowledge Items and Langdock Actions are the practical blockers before a live-action demo.
- Next mini-step: Check whether the Airtable setup path has enough detail for the next human build step.

### 21:58:12Z

- Action: Reviewed Network Report and Keyfacts presence in the demo run.
- Result: Admin-report story is coherent: Keyfacts are present, risks are not softened, and missing live integrations are explicitly marked.
- Next mini-step: Avoid extra changes unless the Airtable setup path exposes a gap.

### 21:58:22Z

- Action: Safety checkpoint.
- Result: No Freigabe-Bedarf triggered. No original files touched. No external claims added.
- Next mini-step: On next heartbeat, inspect Airtable setup docs for demo-build readiness.

## 2026-05-13

### Deep Run

- Action: Added science-backed intelligence layer documents.
- Result: Created `HERMES-SCIENCE-NOTES.md`, `HERMES-AFFECTIVE-DECISION-LAYER.md`, `HERMES-TOKEN-EFFICIENCY.md` and `HERMES-INTELLIGENCE-UPGRADE.md`.
- Next mini-step: Review consistency and keep live system changes gated behind Airtable/Langdock build.

- Action: Updated cognitive architecture from a 7-step to an 8-step loop.
- Result: Added Affective Marker step and Token-Budget rule while keeping no-fake-emotion and no-autonomous-self-change constraints.
- Next mini-step: Later fold minimal versions into the actual agent prompts after review.

- Action: Added Skill Mining section to persistence pattern.
- Result: Hermes can propose reusable skills from repeated patterns, but cannot activate them without human review.
- Next mini-step: Build first draft skill only after real pilot outputs exist.

- Action: Added practical upgrade and evaluation docs.
- Result: Created `HERMES-MODEL-TRAINING-THEORY.md`, `HERMES-PROMPT-UPGRADE-PACK-VNEXT.md` and `HERMES-EVALUATION-HARNESS.md`.
- Next mini-step: Validate that the new docs are referenced and do not conflict with governance.

- Action: Added feature radar, agentic security model, GraphRAG memory plan, RAG evaluation and structured eval cases.
- Result: Hermes now has a stronger setup for feature evaluation, prompt-injection quarantine, graph-style memory, RAG scoring and concrete JSON eval fixtures.
- Next mini-step: Run final consistency checks and keep harmful/illegal capability expansion permanently rejected.

- Action: Added swarm discovery layer and training cases.
- Result: Created Swarm Discovery Engine, USP Discovery, a 12-loop Swarm Deep Run and 12 structured training cases. Expanded eval fixtures with lean guardrail, source trace, USP and skill mining tests.
- Next mini-step: Validate JSON and update consistency counts.

- Action: Ran first local MVP baseline eval.
- Result: Created `evals/runs/hermes-mvp-test-run-2026-05-13.md` and `.json`. Result: 10 pass, 1 partial, 0 fail, 105/110, no safety-critical failures.
- Next mini-step: Normalize Network Report heading and prepare live Langdock/Airtable test setup.

- Action: Normalized Network Report heading in the test run output.
- Result: Local MVP baseline updated to 11 pass, 0 partial, 0 fail, 110/110.
- Next mini-step: Repeat baseline against real Langdock agents after setup.

- Action: Simplified MVP to two visible agents.
- Result: Added `HERMES-TWO-AGENT-MVP.md`, `hermes-prompter-de-v1.md` and `hermes-admin-de-v1.md`; mapped eval cases to Hermes Prompter and Hermes Admin; updated Langdock interface, product positioning and MVP roadmap.
- Next mini-step: Validate references and rerun local baseline under two-agent mapping.

- Action: Added Two-Agent MVP baseline run.
- Result: Created `evals/runs/hermes-two-agent-mvp-test-run-2026-05-13.md` and `.json`. Result: 11 pass, 0 partial, 0 fail, 110/110.
- Next mini-step: Create the two live Langdock agents and run the same eval cases there.

- Action: Added debug structure.
- Result: Created `HERMES-DEBUG-MAP.md` as the first-read orientation file and updated consistency check to treat Prompter/Admin as the only MVP-visible agents.
- Next mini-step: Use Debug Map before any future Hermes edits.

- Action: Added Pattern and Skill Factory.
- Result: Created pattern taxonomy, skill factory, skills folder and four initial Skill Candidates for Haendlermail, Claim Risk Check, Facebook Monthly Story and Source-to-Output Trace.
- Next mini-step: Keep candidates in review state until real examples and evals are collected.

- Action: Renamed product language from Hermes to Mosaic Workbench.
- Result: Added `MOSAIC-PRODUCT-NAMING.md` and updated README, product positioning, USP discovery and debug map. Legacy Hermes filenames remain for continuity.
- Next mini-step: Rename visible Langdock agents to Mosaic Prompter and Mosaic Admin when creating them live.
