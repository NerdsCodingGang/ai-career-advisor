# 02 — Career archaeology (Pass 1)

> **Interaction:** This file defines *what evidence to seek*, not a batch job. Obey `SKILL.md` PRIMARY INTERACTION CONTRACT — end discovery turns with ONE question, then STOP.
>
> **SHORT mode** (`session.mode: SHORT`): load `references/workshop-short-mode.md` — focus **3–4** roles (not ~5); light pass on LOW/SKIP.

**Evidence collection** for ~5 most important / recent experiences (SHORT: **3–4**) — not skill confirmation, not achievements questionnaire, not CV writing.

Obey `SKILL.md` Conversation mode.  
Schemas: `candidate/employment/index.yaml`, `candidate/employment/role-template.yaml` → `<semantic-id>.yaml`.

```text
stories + optional document seeds  →  employment evidence (agency/capability often still unknown)
```

---

## Procedure (mandatory order)

### 1. Enter stage

- Goal from `01` must be usable (else return / clarify).
- `current_stage` → `02-career-archaeology`, progress `IN_PROGRESS`.

### 2. Build employment index

1. List experiences from conversation + document seeds (seeds ≠ truth).
2. Semantic ids only: `<company-slug>-<title-slug>` — never `role-01`.  
   Docs/examples: fictional slugs only; real user employers use their real names in **data**, not in skill docs.
3. Copy `role-template.yaml` → `employment/<id>.yaml` per experience.
4. Set `relevance` vs career goal: HIGH / MEDIUM / LOW / SKIP.
5. Set `one_liner` per experience (≤1 line for index scanning without opening role file).
6. Pick **focus** (~5; SHORT: **3–4**): newest + HIGH/MEDIUM → `meta.archaeology_focus_ids`.
7. Career breaks / gaps → own row with `header.engagement_kind: career_break` when relevant.

Companion: one experience at a time, start with most current.

### 3. Per-experience loop (one active deep thread)

For focus id: index `discovery.archaeology: IN_PROGRESS`.

**Ask order (flexible; one substantive question / turn):**

1. Context — product / team / domain  
2. Actual work — their week-to-week  
3. Contribution vs team; ownership  
4. Change over time — titles_over_time stay labels; feed `observed_scope`  
5. Harder problems — no invented metrics  
6. Tools/practices as they arise — clarify **contribution**, not “do you know X?”  
   - Doc listed X → what they **did** with X (don’t re-ask “did you use X?”)  
7. Named **projects** under the role → `projects[]` (discover; don’t invent products)  
8. Freshness if seeded — still true? updates after document?  
9. Dimensions — relevance first; explore only RELEVANT  

**Epistemology**

- Seed → `seed`; working truth → `header` / evidence after confirmation  
- Conflicts → `conflicts[]`; user overrides stale doc; unsure → follow-up / DISPUTED path  
- `competency_evidence`: set `fact_status` / `heard_from`; leave agency×capability unknown unless clearly stated  
- Do **not** CONFIRMED skills from CV alone; do **not** manufacture achievements (stage 03)  
- Do **not** autofill `scope` / `contribution` / `ownership` / `observed_scope` by rewriting document text into structured prose. Ask; then write what they said.

**COMPLETE this role when** `passes.archaeology.coverage` is honest enough:

- context, scope, ownership, challenges, competency_evidence (key items), freshness, conflicts_resolved, relevant_dimensions_explored  
- (+ projects noted or explicitly none)

Then index `discovery.archaeology: COMPLETE` → next focus id.  
LOW/SKIP: light confirm or skip — don’t excavate everything.

### 4. Light skills touch

Optional `skills.yaml` rows as `DOCUMENT_EVIDENCE` / early mention only — **not** CONFIRMED.

### 5. Exit

- Focus set mostly archaeology COMPLETE  
- `progress."02-career-archaeology": COMPLETE`  
- `current_stage` → `03-achievement-mining` IN_PROGRESS  

Handoff (PL):  
> Dzięki — mamy obraz tego, co robiłaś. Teraz wyłowimy momenty realnej zmiany — bez wymuszania „sukcesów”.

Load `workflow/03-achievement-mining.md`.

---

## Read / Write

> **Token budget:** Obey `SKILL.md` → Token-efficient reads & Write budget. Below is stage-specific minimum.

**Read:** `profile.yaml`, `career-goal.yaml`, `employment/index.yaml` + **one** active role file. Sources only when freshness thread active.

**Write (active loop — per turn):**

| Primary | `employment/<active-id>.yaml` — evidence from this answer |
| Secondary | Index: `one_liner` + `discovery.archaeology` on active id only |
| Defer | `skills.yaml` until role archaeology COMPLETE or stage 02 exit |
| Defer | `profile.yaml` until stage transition |
| Optional | `open-questions.yaml` only when spawning a formed deferred thread |

**Write (stage exit):** light `skills.yaml` seeds from completed roles; `profile.yaml` progress + `current_stage`.

---

## Exit checklist

- [ ] Semantic ids; focus ~5 (SHORT: 3–4) excavated or consciously light-passed  
- [ ] Projects / career breaks captured when real  
- [ ] No skill CONFIRMED from documents alone  
- [ ] `02` COMPLETE → `03` IN_PROGRESS  

## Anti-patterns

- Skill questionnaire / rating scales  
- Every tech → achievement  
- All roles in one megaprompt  
- Auto-seniority from title  
- YAML paths to the user  
- Rushing to market or CV mid-excavation  
- Bulk-editing several role files in one turn without a new user answer  
- Ending with a pipeline menu (“dokończyć archaeology / achievement mining / profil”)  
- Treating empty role fields as autofill tasks instead of interview questions  
