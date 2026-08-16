# 08 — CV generation

> **Interaction:** Obey `SKILL.md` — companion voice; **CV CANNOT IMPROVE THE TRUTH**. No stage menus; no inventing evidence for ATS fit.

Exact procedure: **gate → load cv-plan → fetch only confirmed data → write final CV → nothing outside Career Database.**

```text
Career Database = truth
cv-plan         = positioning
cv.md           = rendering
```

References: `outputs/cv/_template/cv-plan.yaml` (v0.4) · `outputs/cv/_template/cv.md` · `references/cv-writing-rules.md`  
Conversation mode: companion voice; do not expose YAML paths unless the user asks.

---

## Procedure (mandatory order)

### 1. Check gate

Read `candidate/profile.yaml` → `session_flags`.

| Check | Required |
|-------|----------|
| `cv_generation_allowed` | **true** |
| Implies | `core_discovery_complete` ∧ `career_profile_complete` |

**If gate fails**

- Do **not** write `cv.md`.
- Explain in plain language what is still missing (stages / flags).
- Offer to continue discovery or profile completion — never “quick CV anyway.”

**If gate passes** → set `progress["08-cv-generation"]` to `IN_PROGRESS` if needed → continue.

---

### 2. Load cv-plan

Path: `outputs/cv/<target-slug>/cv-plan.yaml`  
Schema: `outputs/cv/_template/cv-plan.yaml`.

**If no plan / `status` ≠ `READY`**

1. Agree with user: `header.target_role`, `target_slug`, `cv_language`.
2. Fill plan only (ids + weights — **no CV prose**):
   - `sections[]` order
   - `skills[]` + `skill_groups[]`
   - `experiences[]` with `detail: detailed | compact | omit`
   - `achievements[]`
   - `max_pages: 4`
3. Set `status: READY` only when coherent.
4. Then re-enter step 2.

**If plan is `READY`**

Load it fully. Treat it as the only positioning authority for this render.  
Do **not** invent extra skills/roles/achievements “because the offer wants them.”  
If the plan points at an id missing or ineligible in the DB → drop that id (or fix the plan with the user); do not fabricate content.

Optional: ask phone/email once if `header.contact_public_links.include_phone/email` — values go into `cv.md` only, not into `candidate/`.

---

### 3. Fetch only confirmed (eligible) data

Using **ids from the plan**, read from Career Database — nothing else for body content.

| Plan points at | Read from | Allow on CV only if |
|----------------|-----------|---------------------|
| `skills[]` / `skill_groups` | `candidate/skills.yaml` | `knowledge_status ∈ {CONFIRMED, PARTIAL}` |
| `experiences[]` | `candidate/employment/<id>.yaml` (+ index) | id exists; use role facts only |
| `project_highlight_ids` | that role’s `projects[]` | id exists on that role |
| `achievements[]` | `candidate/achievements.yaml` | `confirmation ∈ {CONFIRMED, PARTIAL}` ∧ `forced == false` ∧ `contribution_clear == true` |
| education / certs / courses / languages / links / AI | `candidate/profile-extra.yaml` | present + enabled on plan |
| location + remote paren | profile-extra + `career-goal.work_preferences.remote` | preference set before remote paren |
| seniority signal | `candidate/seniority.yaml` for `header.track_id` | echo hypothesis only — never rewrite employment titles |

**Do not fetch for invention**

- Market postings, wishlists, or “typical stack” tools not in DB  
- `UNKNOWN` / `DOCUMENT_EVIDENCE` / `INFERRED` / `REJECTED` / `DISPUTED` skills as exposed skills  
- `UNCONFIRMED` or forced achievements  
- Whole Career Database dump — only what the plan selected  

Optional read for framing: `outputs/competency-profile.md` (must not add facts absent from DB + plan).

---

### 4. Generate final CV

Write `outputs/cv/<target-slug>/cv.md` following:

1. **Section order** = `sections[]` (include:true only)  
2. **Language** = `cv_language`  
3. **Layout / voice** = `references/cv-writing-rules.md` + `_template/cv.md`  
4. **Budget** = `max_pages: 4` (tighten `compact`/`omit` via plan update if needed — do not invent filler)

Locked spine when included:

```text
PERSON → TARGET ROLE → CONTACT / PUBLIC LINKS → ABOUT ME → SKILLS
→ EXPERIENCE → EDUCATION → LANGUAGES → OPTIONAL OTHER
(+ RODO footer if plan.footer.rodo_clause)
```

- **SKILLS:** table from `skill_groups`; names from DB; comma-separated within rows  
- **EXPERIENCE:** `detailed` vs `compact` per plan; bullets/highlights only from fetched evidence  
- **ABOUT ME:** short; AI blurb only if `ai_approach` in DB  

Then:

- Register variant in `profile.yaml` → `outputs.cv_variants[]`  
- Deliver in companion tone (“Oto wariant pod …”) without file-plumbing talk  

---

### 5. Do not add anything outside the Career Database

**Hard stop rules**

- No skill, tool, employer, project, metric, course, or cert that is not in `candidate/*` (and selected by the plan).  
- No “improving” official titles in Experience.  
- No mutating `candidate/*` to fit one posting.  
- Gap in DB → leave gap or ask user / return to discovery — **never pad the CV**.

If tempted to add something for ATS/fit → **refuse**, explain, offer to update the **plan** only with eligible ids or to gather evidence first.

---

## Checklist (done)

- [ ] Gate `cv_generation_allowed` was true  
- [ ] Plan loaded and `READY`  
- [ ] Every skill/achievement/role/project on the CV resolves to eligible DB data  
- [ ] Nothing added outside Career Database  
- [ ] `max_pages: 4` respected  
- [ ] `cv.md` written; variant registered  

## Exit

`08` → `COMPLETE` when at least one plan+`cv.md` exist for the target, or stay `IN_PROGRESS` for more variants (new slug/plan → repeat from step 2).

## Anti-patterns

- Skipping the gate  
- Rendering without a READY cv-plan  
- Pulling unconfirmed skills “to look stronger”  
- Inventing metrics or stack items  
- Dumping the entire database into one CV  
- Editing employment/skills YAML for a single offer  
