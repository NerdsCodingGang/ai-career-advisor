# 03 — Achievement mining

> **Interaction:** This file defines *what evidence to seek*, not a batch job. Obey `SKILL.md` PRIMARY INTERACTION CONTRACT — end discovery turns with ONE question, then STOP.
>
> **SHORT mode:** light pass only — clear wins from focus roles; skip forced mining per `references/workshop-short-mode.md`.

Mine **impact / delivery / growth** from stories already told — never lead with “What are your achievements?”

Obey `SKILL.md` Conversation mode. Schema: `candidate/achievements.yaml`.

```text
archaeology stories  →  clear contribution?  →  one before/after probe  →  achievement or stop
```

**Hard rule:** Achievements are **discovered**, not manufactured.  
Competency can be valid with **zero** achievements.

---

## Procedure (mandatory order)

### 1. Enter stage

- `02` focus archaeology done enough to mine.
- `current_stage` → `03-achievement-mining`, progress `IN_PROGRESS`.
- `achievements.meta.status: IN_PROGRESS`.

### 2. Scan for change signals

From focus employment files, note moments like: fixed, shipped, simplified, first solo ownership, mentoring growth, process change — **not** bare tool names.

### 3. Mine loop (one thread at a time)

For each promising mention:

| Step | Action |
|------|--------|
| A | Personal contribution clear? **No** → keep as competency evidence only; stop |
| B | **Yes** → one before / after (or delivery/growth) probe |
| C | Real IMPACT / DELIVERY / GROWTH? **Yes** → write achievement (`forced: false`, `contribution_clear: true`) |
| D | Still no after one sensible follow-up → `declined_or_no_impact[]`; move on |

**Statuses:** `confirmation: UNCONFIRMED | PARTIAL | CONFIRMED` — never invent metrics (`metrics.invented` must stay false).  
Link `experience_ids` / optional `skill_ids`. Prefer `how_found: STORY_MINING`; DOCUMENT_SEED claims need the same contribution test.

Example rhythm (PL):  
> Wspomniałaś o poprawie procesu. Co było nie tak wcześniej?  
> …  
> A co zmieniło się po Twojej zmianie?

### 4. Exit

Enough focus stories probed for change (not “every tech has a win”).

- `achievements.meta.status: COMPLETE` (COMPLETE ≠ every skill has an achievement)  
- `progress."03-achievement-mining": COMPLETE`  
- `current_stage` → `04-market-research` IN_PROGRESS  

Handoff (PL):  
> Mamy kilka konkretnych zmian z Twojej pracy. Teraz oferty jako lustro — żeby nazwać rzeczy, które mogłaś robić, a nie nazwałaś.

Load `workflow/04-market-research.md`.

---

## Read / Write

> **Token budget:** Obey `SKILL.md` → Token-efficient reads & Write budget. Below is stage-specific minimum.

**Read:** `profile.yaml`, `employment/index.yaml` (focus ids + `one_liner`), **one** focus role file at a time, `achievements.yaml` meta only (not full history rescan).

**Write (per turn):** PRIMARY `achievements.yaml` (one item or `declined_or_no_impact` entry). Optional `links.achievement_ids` on active role. Defer `profile.yaml` until stage exit.

---

## Exit checklist

- [ ] No manufactured stories / fake KPIs  
- [ ] Each saved achievement has clear contribution  
- [ ] Stops recorded when probe yielded nothing  
- [ ] `03` COMPLETE → `04` IN_PROGRESS  

## Anti-patterns

- “Jakie masz największe osiągnięcia?”  
- Tool/vendor mention → forced success story  
- Invented numbers  
- Dumping achievements into a CV (that is stage 08 + cv-plan)  
