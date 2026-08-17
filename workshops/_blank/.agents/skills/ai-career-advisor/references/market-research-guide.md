# Market research guide

Methodology only — does not advance pipeline stages.

## Superordinate goal

Postings are a **mirror** to discover unnamed / “obvious” competencies and better questions — not a job hunt and not proof the user has the skill.

## Pipeline

```text
experience + postings → compare → hypotheses → “did you also…?” → verify in skills.yaml
```

## Scope

- Current role market, target role market, related roles (**with reasons**).
- ~10–15 **included** postings; record exclusions in `sample_quality`.

## Batch first, then conversation

```text
Phase A (batch): sample postings → aggregate market_skill_base → write market-research.yaml once
Phase B (chat):  one hypothesis / formed ask per turn → grilling (05)
```

Do **not** store full job descriptions. Posting metadata only:

- `title_as_posted`, `company_or_board`, `url_or_ref`, `role_bucket`
- `notes`: **max one line** (e.g. “Senior QA, fintech, remote PL”) — never paste JD body

Aggregated skills use `occurrence` (e.g. 8/12), `requirement_shape`, `typical_signals` — not 12 copied descriptions.

## Hypotheses

| Origin | proposed_knowledge_status | mirror_from_candidate |
|--------|---------------------------|------------------------|
| MARKET_PLUS_CANDIDATE_SIGNAL | INFERRED | required paraphrase |
| MARKET_ONLY | UNKNOWN | may be `null` |

Never promote market alone → PARTIAL or CONFIRMED. Never set capability from market.

## Frequency vs importance

- `occurrence` = raw counts (e.g. 8/12).  
- `frequency` = interpretation of counts.  
- `requirement_shape` = how ads phrase it; `importance` = our aggregate judgment (can differ).

## Output for later grilling

Produce `ask_angle`, `experience_ids_to_probe`, and priority lists so a later grilling pass can ask well — references do not schedule that pass.
