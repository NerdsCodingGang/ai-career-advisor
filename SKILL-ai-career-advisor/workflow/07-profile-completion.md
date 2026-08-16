# 07 — Profile completion

Close the **Verified Career Profile** (database ready for CV planning) — still **not** the final CV.

Obey `SKILL.md` Conversation mode.  
Schemas: `profile-extra.yaml`, `seniority.yaml`, `open-questions.yaml`.  
Output template: `outputs/competency-profile.md`.  
Seniority method: `references/seniority-signals.md` (methodology only).

```text
lean extras + per-track seniority + competency-profile report  →  gates for stage 08
```

---

## Procedure (mandatory order)

### 1. Enter stage

- Prefer `core_discovery_complete: true` (01–06 done).
- `current_stage` → `07-profile-completion`, progress `IN_PROGRESS`.
- Companion: packaging the profile — **not** writing the CV yet.

### 2. Lean profile-extra

Ask only what’s missing; skip empty optionals. **Never** store private phone/email here.

| Area | Fields |
|------|--------|
| Identity (optional) | `display_name`, `city_country`, `cv_language` |
| Public links | linkedin, github, … |
| Education / certifications / **courses** | confirmed or clearly stated |
| Languages | level |
| AI approach | if relevant (feeds About Me later) |
| Interests | optional |

Set `profile-extra.meta.status` appropriately.

### 3. Per-track seniority hypotheses

For each relevant track (`career-goal` targets / evidence):

1. Roll up `observed_scope` from focus roles → `seniority.yaml` `assessments[]`  
2. Set `estimated_level` (JUNIOR\|REGULAR\|SENIOR\|LEAD\|STAFF\|PRINCIPAL\|UNKNOWN) + `confidence` + rationale  
3. Note `title_mismatch` gently when official title ≠ scope  
4. Seek `user_acknowledged` when discussing  

**Never** auto-promote or rewrite `employment/*/header.title`.  
No single global seniority for the whole person.

### 4. Open questions

- Resolve or consciously defer remaining **HIGH** items  
- Don’t leave critical DISPUTED hanging without a plan  

### 5. Write competency-profile.md

Fill `outputs/competency-profile.md` from template — human report, not CV:

1. Main tracks  
2. CONFIRMED / PARTIAL skills  
3. Seniority hypotheses  
4. Strongest evidence  
5. Potential career directions  

Only DB-grounded facts. Omit empty sections.

### 6. Set gates

| Flag | When |
|------|------|
| `career_profile_complete` | this stage’s profile work is done (extras + seniority + competency-profile written) |
| `cv_generation_allowed` | `core_discovery_complete` ∧ `career_profile_complete` |

### 7. Exit

- `progress."07-profile-completion": COMPLETE`  
- `current_stage` → `08-cv-generation` IN_PROGRESS (generation still gated by flags inside 08)  

Handoff (PL):  
> Masz już zweryfikowany profil. Teraz ułożymy **cv-plan** pod konkretną rolę — co wyeksponować, a co skrócić — i dopiero potem tekst CV.

Load `workflow/08-cv-generation.md`.

---

## Read / Write

**Read:** `profile.yaml`, `profile-extra`, `seniority`, employment scope, skills summary, achievements, career-goal, open-questions.  
**Write:** `profile-extra.yaml`, `seniority.yaml`, `outputs/competency-profile.md`, session flags, `profile.yaml` progress.

---

## Exit checklist

- [ ] No private phone/email in profile-extra  
- [ ] Seniority per track; titles untouched  
- [ ] Competency-profile has the five pillars (omit empty)  
- [ ] `career_profile_complete` true  
- [ ] `cv_generation_allowed` true iff core discovery also complete  
- [ ] `07` COMPLETE → `08` IN_PROGRESS  

## Anti-patterns

- Jumping to final `cv.md` without cv-plan / skipping 08 procedure  
- One global seniority level  
- Inventing directions or skills in the competency-profile  
- Storing secrets in the Career Database “for convenience”  
