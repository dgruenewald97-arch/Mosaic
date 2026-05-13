# Mosaic Two-Agent MVP Test Run - 2026-05-13

## Run Context

Run type:

```text
Local file-based two-agent baseline
```

Visible agents:

```text
Mosaic Prompter
Mosaic Admin
```

Mapping:

```text
Mosaic Prompter = Content, QA light, Campaign, Monthly, Knowledge Draft
Mosaic Admin = System, Memory, Eval, Network Report, Prompt-/Skill-Review
```

## Summary

```text
Total cases: 11
Passed: 11
Partial: 0
Failed: 0
Score: 110 / 110
Critical failures: 0
```

Verdict:

```text
PASS for Two-Agent MVP baseline.
```

## Case Mapping

Mosaic Prompter:

- `eval_price_without_source`
- `eval_hard_claim`
- `eval_original_protection`
- `eval_prompt_injection_source`
- `eval_user_friction_high`
- `eval_conflicting_knowledge`
- `eval_lean_guardrail_no_overblocking`

Mosaic Admin:

- `eval_network_report_keyfacts`
- `eval_source_to_output_trace`
- `eval_usp_quality`
- `eval_skill_mining_gate`

## Findings

### Strong

- Two visible agents are enough for the MVP.
- Lean Guardrail Mode keeps harmless work fast.
- Admin functions are cleanly separated from production work.
- Existing eval suite maps cleanly to Prompter/Admin.

### Watch

- Mosaic Prompter must not become a vague mega-agent. The internal modes need short examples.
- Mosaic Admin should stay for system work, not become a second production agent.
- Live Langdock test still required.

## Decision

```text
Two-Agent MVP is the current implementation target.
Do not create separate visible Content, QA, Director or Intake agents for MVP.
```
