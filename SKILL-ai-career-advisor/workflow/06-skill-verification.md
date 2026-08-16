# 06 — Skill verification (tables + coverage)

Wide **coverage check** after grilling — not a second archaeology pass.

Obey `SKILL.md` Conversation mode. Schema: `candidate/skills.yaml`.  
Taxonomies (optional aid): `references/skill-taxonomies.md` — do not dump the internet.

```text
grouped skill table  →  TAK / TROCHĘ / NIE / NIE WIEM  →  status + careful capability
```

---

## Procedure (mandatory order)

### 1. Enter stage

- `current_stage` → `06-skill-verification`, progress `IN_PROGRESS`.
- Ensure `core_discovery` path is the goal: close silent gaps on **target-critical** skills.

### 2. Build groups

Compose small groups from:

- Market-critical leftovers still UNKNOWN / DOCUMENT_EVIDENCE / INFERRED  
- Document-listed items not yet verified  
- Related clusters (e.g. test design · tools · API/data)  

One **group per turn** preferred. Skip already CONFIRMED / REJECTED / NOT_RELEVANT.

### 3. Present table / list; wait

Language match user (PL example): **TAK / TROCHĘ / NIE / NIE WIEM**  
(EN: Yes / Somewhat / No / Don’t know)

### 4. Map answers → DB

| Answer | knowledge_status (typical) | Capability |
|--------|----------------------------|------------|
| TAK | toward `CONFIRMED` | ask depth only if needed; never jump above awareness from document alone |
| TROCHĘ | `PARTIAL` | optional **one** deepen on high-value items |
| NIE | `REJECTED` | keep so we don’t re-ask |
| NIE WIEM | stay `UNKNOWN` or light clarify | — |

Link evidence to experiences when they cite a role.  
If a cell spawns a deep thread → open-question (still max one IN_PROGRESS); don’t turn 06 into endless 05.

### 5. Coverage stop rule

Stop when target-critical skills are no longer mostly untouched UNKNOWN/DOCUMENT_EVIDENCE — **not** when every possible skill on earth is tagged.

### 6. Exit + discovery gate

- `progress."06-skill-verification": COMPLETE`  
- If stages **01–06** all COMPLETE → set `session_flags.core_discovery_complete: true`  
- `current_stage` → `07-profile-completion` IN_PROGRESS  

Handoff (PL):  
> Baza kompetencji jest dużo pełniejsza. Domkniemy profil i seniority — potem dopiero plan CV.

Load `workflow/07-profile-completion.md`.

---

## Read / Write

**Read:** `skills.yaml`, `career-goal.yaml`, `market-research.yaml` (critical set), `open-questions.yaml`.  
**Write:** `skills.yaml` statuses/capability/evidence; open-question outcomes if spawned; `profile.yaml` progress + `core_discovery_complete` when earned.

---

## Exit checklist

- [ ] Groups were small; one group per turn default  
- [ ] No “Yes” ⇒ deep expert without evidence  
- [ ] REJECTED retained  
- [ ] `core_discovery_complete` set if 01–06 COMPLETE  
- [ ] `06` COMPLETE → `07` IN_PROGRESS  

## Anti-patterns

- Re-verifying every CONFIRMED skill  
- Entire taxonomy in one message  
- Document-only capability above awareness  
- Treating this stage as CV writing  
