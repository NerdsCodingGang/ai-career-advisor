# 05 — Competency grilling (Pass 2)

> **Interaction:** This file defines *what evidence to seek*, not a batch job. Obey `SKILL.md` PRIMARY INTERACTION CONTRACT — end discovery turns with ONE question, then STOP.

Return to experiences **with market hypotheses** — name what they may already do but didn’t label.

Obey `SKILL.md` Conversation mode.  
Schemas: `market-research.yaml`, `skills.yaml`, employment role files, `open-questions.yaml`.  
Question craft: `references/question-design.md` / `skill-evidence-rules.md` (methodology only).

```text
HIGH hypothesis / OPEN question  →  one conversation thread  →  update skill + role evidence
```

**Max one** open-question `IN_PROGRESS` in the whole file.

---

## Procedure (mandatory order)

### 1. Enter stage

- Prefer `04` complete with grilling priorities (else work any formed OPEN questions).
- `current_stage` → `05-competency-grilling`, progress `IN_PROGRESS`.

### 2. Pick next thread

Priority:

1. Existing `open-questions` with status `OPEN` (HIGH first)  
2. Else HIGH item from `market-research` grilling priorities / hypotheses  

Never start `BLOCKED`. When deps met: BLOCKED → OPEN, then eligible.  
Set chosen item `IN_PROGRESS` (only one).

### 3. Ask in companion voice

Map **their story** ↔ market label — not a cold “Do you know X?”

Example (PL):  
> Gdy coś padało i patrzyłaś w logi — w ofertach często mówią o root cause analysis. Czy to pasuje do tego, co robiłaś w tamtej roli?

Load only `experience_ids_to_probe` role files for this thread.

### 4. Update Career Database honestly

From the answer:

| Outcome | Typical writes |
|---------|----------------|
| Clear yes + depth | skill → `PARTIAL` or `CONFIRMED`; capability if earned; role `competency_evidence` agency×capability |
| Soft / limited | `PARTIAL` — **do not** restart from zero later |
| No | `REJECTED` (keep — don’t re-ask) |
| Conflict | `DISPUTED` until resolved |
| Not useful for this profile | `NOT_RELEVANT` |
| Still unclear | leave `UNKNOWN` / `INFERRED`; maybe one clarifier |

Resolve open-question: `outcome.summary` + `outcome.updated[]` paths.  
Mark hypothesis grilling done / `promoted_to_skills_yaml` as needed.  
Update `observed_scope` only when the story justifies it.

### 5. Repeat until pass is enough

Handle HIGH priorities for this pass, or consciously defer LOW.  
Do not boil the ocean.

### 6. Exit

- `progress."05-competency-grilling": COMPLETE`  
- `current_stage` → `06-skill-verification` IN_PROGRESS  

Handoff (PL):  
> Dzięki — część rzeczy nazwałyśmy wprost. Teraz szersza lista obszarów: tak / trochę / nie / nie wiem.

Load `workflow/06-skill-verification.md`.

---

## Read / Write

> **Token budget:** Obey `SKILL.md` → Token-efficient reads & Write budget. Below is stage-specific minimum.

**Read:** `profile.yaml`, `market-research.yaml` (`grilling_priorities` + active hypothesis only), `open-questions.yaml` (active thread), **one** probed `employment/<id>.yaml`, **one skill row** in `skills.yaml` (by id — not full file).

**Write (per turn):** PRIMARY `employment/<probed-id>.yaml` (`competency_evidence`, scope if earned). Update **only the active skill row** in `skills.yaml`. Resolve active `open-questions` entry. Defer `profile.yaml` until stage exit.

---

## Exit checklist

- [ ] ≤1 IN_PROGRESS question at any time  
- [ ] No CONFIRMED from market frequency alone  
- [ ] PARTIAL not re-zeroed  
- [ ] `05` COMPLETE → `06` IN_PROGRESS  

## Anti-patterns

- Cold tool quizzes when the story already implies the work  
- Many parallel grilling threads  
- Confirming from JD keyword frequency  
- Dumping entire market skill base in one message  
