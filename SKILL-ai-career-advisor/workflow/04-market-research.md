# 04 — Market research (competency mirror)

> **Interaction:** This file defines *what evidence to seek*, not a batch job. Obey `SKILL.md` PRIMARY INTERACTION CONTRACT — end discovery turns with ONE question, then STOP.

**Not** job search. Live postings exist to form **hypotheses** and better questions about the candidate.

Obey `SKILL.md` Conversation mode. Schema: `candidate/market-research.yaml`.  
Method detail: `references/market-research-guide.md` (methodology only — no stage steering).

```text
experience + current postings  →  compare  →  skill_hypotheses  →  grilling (05)
```

---

## Procedure (mandatory order)

### 1. Enter stage / gate on goal

- Need usable target from `career-goal.yaml`.  
- If missing → ask, or set `market-research.meta.status: BLOCKED` + reason; do **not** fake research.
- Else: `current_stage` → `04-market-research`, progress `IN_PROGRESS`; meta `IN_PROGRESS`.

Explain briefly (plain language): looking at offers as a **mirror**, not applying.

### 2. Define scope

- Current role labels + **target** roles + **related** roles that have reasons in career-goal  
- No related-role sprawl without reasons

### 3. Sample postings

- Aim ~10–15 **included** postings for the scope  
- Exclude junk (wrong seniority/scope/domain); record exclusions in `sample_quality`  
- Never claim “N offers” if half were excluded and untracked

### 4. Build market skill base

- Recurring competencies + normalization aliases (synonyms → stable skill ids)  
- Compare to candidate stories / existing `skills.yaml`

### 5. Write hypotheses (outbound rules)

| Mirror mode | `proposed_knowledge_status` |
|-------------|----------------------------|
| MARKET + candidate signal | `INFERRED` |
| MARKET_ONLY (never mentioned) | `UNKNOWN` |

**Never** from market alone: `CONFIRMED`, `PARTIAL`, or any `capability`.

Each hypothesis: `ask_angle`, `experience_ids_to_probe`, `mirror_from_candidate` (null OK for MARKET_ONLY), priority for grilling.

Optionally promote into `skills.yaml` only when **queuing for conversation** (UNKNOWN/INFERRED) — avoid flooding skills with market noise.

### 6. Build grilling priorities

- HIGH first for stage 05 / open-questions (formed asks only)  
- User-facing: no JD walls, no YAML

### 7. Exit

- `market-research.meta.status: COMPLETE` (or honest partial + notes)  
- `progress."04-market-research": COMPLETE`  
- `current_stage` → `05-competency-grilling` IN_PROGRESS  

Handoff (PL):  
> Z ofert widać kilka nazw, które mogą pasować do tego, co już opisałaś. Sprawdzimy je po kolei — bez zgadywania, że coś „masz”.

Load `workflow/05-competency-grilling.md`.

---

## Read / Write

**Read:** `profile.yaml`, `career-goal.yaml`, employment stories, `skills.yaml`, `market-research.yaml`.  
**Write:** `market-research.yaml`; careful skills promotions; open-questions for HIGH formed asks; `profile.yaml` progress.

---

## Exit checklist

- [ ] Scope tied to endorsed targets/related-with-reason  
- [ ] Sample quality tracked  
- [ ] No CONFIRMED/PARTIAL/capability from market alone  
- [ ] Grilling priorities ready  
- [ ] `04` COMPLETE → `05` IN_PROGRESS  

## Anti-patterns

- Confirming skills from JD keywords  
- Research for its own sake / infinite scrolling  
- Related-role sprawl without reasons  
- Inflated “we checked 15 offers” without exclusions logged  
