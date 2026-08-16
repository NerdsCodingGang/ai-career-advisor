# Seniority signals

Methodology only — does not decide *when* to run seniority assessment (that is workflow/SKILL).
How to recognize autonomy, ownership, complexity, responsibility, etc.

## Hard rule

Seniority ← **scope, autonomy, complexity, responsibility** — **not** job title or years alone.

## Four layers

| Layer | Where |
|-------|--------|
| official_title | `employment/*/header.title` |
| observed_scope | `employment/*/observed_scope` |
| estimated_level | `seniority.yaml` assessments[] **per track** |
| target_positioning | career-goal / cv-plan |

## observed_scope signals

Each: `UNKNOWN | LOW | MEDIUM | HIGH`

`autonomy | ownership | complexity | responsibility | stakeholder_scope | decision_scope | mentoring`

## Canonical levels

`JUNIOR | REGULAR | SENIOR | LEAD | STAFF | PRINCIPAL | UNKNOWN`  
Market Mid / Intermediate / Regular → **REGULAR** (no separate MID).

## Tone

OK: title looks junior, scope closer to Regular — **check the market**.  
NOT: silent auto-promote or rewriting official_title.

## Per track

Someone can be SENIOR on `backend_engineering` and REGULAR on `people_management`.  
No global_summary level in v0.1.
