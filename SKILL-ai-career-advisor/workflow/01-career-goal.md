# 01 — Career goal

> **Interaction:** This file defines *what evidence to seek*, not a batch job. Obey `SKILL.md` PRIMARY INTERACTION CONTRACT — end discovery turns with ONE question, then STOP.

Establish **where they are** and **what they’re aiming for** — without skill discovery, achievements, market research, or CV drafting.

Obey `SKILL.md` Conversation mode. Schema: `candidate/career-goal.yaml`.

```text
current situation + seeking direction  →  enough to choose which experiences to excavate
```

---

## Procedure (mandatory order)

### 1. Enter stage

- Confirm `00` complete / `source_intake_resolved` (or EXISTING session continuing here).
- Set `session.current_stage` → `01-career-goal`, `progress."01-career-goal": IN_PROGRESS`.
- Read `career-goal.yaml` (may be empty).

### 2. Establish current situation

Ask (one topic per turn) until clear:

| Field | Capture |
|-------|---------|
| `current.role_title` | What they do / last role title (their words) |
| `current.status` | employed \| freelancing \| between_roles \| studying \| other |
| `current.summary` | Short plain-language “what I do now” |

Document seeds = hints only (“W CV jest X — czy to nadal aktualne?”).

### 3. Establish seeking

| Field | Capture |
|-------|---------|
| `seeking.summary` | What they want next (messy OK) |
| `seeking.target_roles[]` | At least one `{title, notes}` they endorse — **do not invent** |
| `seeking.target_tracks[]` | Optional slugs aligning with later seniority tracks |
| `seeking.specialization_change` | true \| false \| unclear |
| `seeking.industry_change` | true \| false \| unclear |

### 4. Related roles (optional, disciplined)

Only if useful for archaeology / market mirror later:

- `seeking.related_roles[]` with **required** `reason` (evidence-based) and `confidence`
- No sprawl list of titles “that might fit”

### 5. Work preferences (optional, non-blocking)

- `work_preferences.remote` → true \| false \| null  
- Do not block exit on this; needed later for CV location line.

### 6. Persist & exit

Write `career-goal.yaml`:

- `meta.status: COMPLETE` when `current` + usable `seeking` exist  
- Prefer COMPLETE before archaeology (IN_PROGRESS only if user explicitly wants to refine later)

Update `profile.yaml`:

- `progress."01-career-goal": COMPLETE`
- `current_stage` → `02-career-archaeology`, that progress `IN_PROGRESS`

Handoff (PL example):  
> Jasne — celujemy w [ich słowa]. Teraz przejdziemy przez doświadczenia, żeby wydobyć, co naprawdę robiłaś.

Then immediately ask the **first archaeology question** about the most current / relevant role (load `workflow/02-career-archaeology.md`) — do **not** pause to invent positioning products.

Load `workflow/02-career-archaeology.md`.

---

## Read / Write

> **Token budget:** Obey `SKILL.md` → Token-efficient reads & Write budget. Below is stage-specific minimum.

**Read:** `profile.yaml`, `career-goal.yaml`; `employment/index.yaml` labels if document-seeded.

**Write (per turn):** PRIMARY `career-goal.yaml`. Defer `profile.yaml` until stage exit (or first field that must persist mid-stage).

---

## Exit checklist

- [ ] Usable `current` + `seeking` (summary and/or ≥1 endorsed target role)  
- [ ] No invented target roles  
- [ ] Related roles have reasons (or list empty)  
- [ ] `01` COMPLETE → `02` IN_PROGRESS  

## Anti-patterns

- Skill inventory / “rate yourself”  
- Inventing targets they didn’t endorse  
- Related roles without reasons  
- Jumping to market, achievements, or CV  
- Exposing YAML paths  
- Positioning axes / “why me” / “czego nie podkreślać” after they pick a target — that is **not** stage 01  
- Offering a menu of coaching deliverables instead of moving to archaeology with one handoff line + first experience question  
