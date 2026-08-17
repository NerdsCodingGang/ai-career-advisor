# 00 — Onboarding / source validation

> **Interaction:** This file defines *what evidence to seek*, not a batch job. Obey `SKILL.md` PRIMARY INTERACTION CONTRACT — end discovery turns with ONE question, then STOP.

Exact **session entry** + optional documents. Orchestrator rules in `SKILL.md` (Activation, Conversation mode) always apply.

**Production procedure** for start UX:

```text
1. NEW PROFILE     — empty Career Database → this file (docs) → 01
2. CONTINUE        — resume incomplete stage (may still finish intake here)
3. NEW CV VARIANT  — existing DB → 08 if gates allow (no wipe)
```

---

## Goal

1. Switch into career-companion conversation (not coding-agent voice).
2. Route one of the three start paths (detect + intent; menu only if ambiguous).
3. On Path 1 (and Path 2 still on intake): optionally collect CV / LinkedIn PDF (never required).
4. Set source-intake flags; run freshness when documents exist.
5. Exit to `01-career-goal` when intake is resolved (Paths 1 / mid-00 continue).

---

## Before you speak (silent)

1. Read `candidate/profile.yaml`.
2. Decide **NEW** vs **EXISTING**:

**NEW (Path 1)** if roughly all of:
- `progress."00-onboarding"` is `NOT_STARTED` or fresh `IN_PROGRESS` with no real intake yet, **and**
- employment index has no real experiences, skills list empty / template-only, no meaningful filled career data.

**EXISTING (Path 2 or 3)** if any of:
- stages beyond 00 show `IN_PROGRESS` / `COMPLETE`, **or**
- `candidate/employment/` has real role files / non-empty index, **or**
- `skills.yaml` / achievements / etc. hold real entries, **or**
- user clearly refers to a prior session.

When unsure → **EXISTING** (ask continue vs CV — safer than wiping).

3. Apply **intent routing** from `SKILL.md` (skip menu when clear).
4. Do **not** tell the user you read YAML.

---

## Conversation mode (reminders)

- User-facing text only: warmth, clarity, one beat at a time.
- **Never** show paths, “updated profile.yaml”, schema names, or git talk unless they ask.
- Persist state under the hood after each answer.
- Match the user’s language (PL/EN/…).

---

## Path 2 & 3 — EXISTING database

### Ambiguous intent → one choice, then wait

Scripts below are **tone samples** — paraphrase, do not recite. One question, then wait.

**PL:**  
> Widzę, że już tu coś było. Wracamy do rozmowy, czy robimy nowe CV na bazie tego, co jest?

**EN:**  
> Looks like we already started. Pick up where we left off, or make a new CV from what’s here?

(Do **not** offer “wipe everything / new profile from scratch” in the default menu — that destroys truth. If they insist on a full reset, confirm explicitly twice and only then clear `candidate/` fills; prefer a new repo/copy for workshops.)

### Path 2 — Continue

- Set `session.current_stage` to the first incomplete stage in order 00→08 (or keep current if mid-stage).
- Set that stage `IN_PROGRESS`.
- Brief companion line in plain language (“Wracamy do odkrywania doświadczeń…” / “Back to mapping your experience…”).
- Load that stage’s workflow on the **next** turn (or immediately if no extra question needed).
- If still on 00 with unresolved intake → document beat below (same as Path 1 intake).

### Path 3 — New CV / variant from existing profile

- Do **not** wipe the Career Database.
- If `cv_generation_allowed` is true → `current_stage` → `08-cv-generation` IN_PROGRESS; load `workflow/08-cv-generation.md` (confirm target / language / cv-plan, then render).
- If gates are false → say honestly what’s missing in plain language (which part of the profile isn’t ready), then offer Path 2 at the right stage — no YAML lecture.

### Clear intent shortcuts

- User said “kontynuuj…” → Path 2 immediately (no menu).
- User said “zrób CV z tego co mamy…” → Path 3 immediately (no menu).

---

## Path 1 — NEW profile (or EXISTING still needing intake)

### Opening beat (after activation)

Scripts below are **tone samples** — paraphrase, do not recite. One question, then wait.  
Do **not** explain epistemology (“punkt wyjścia, nie prawda”) before they have a document.

**PL:**  
> Cześć. Zanim wejdziemy w historię — masz CV albo eksport z LinkedIna?  
> Jak nie, to po prostu zaczynamy rozmową.

**EN:**  
> Hi. Before we go into your history — do you have a CV or a LinkedIn export?  
> If not, we’ll just talk.

Then **wait**. (Emoji optional — match user tone; default omit.)

Set under the hood:
- `session.status: ACTIVE`
- `session.current_stage.id: "00-onboarding"`
- `progress."00-onboarding": IN_PROGRESS`

---

## Document paths (Path 1 / unfinished intake)

### Path — User skips / has nothing

Under the hood (mutual exclusivity):
- `starting_documents_received: false`
- `starting_documents_skipped: true`
- `source_intake_resolved: true`

Companion reply (example PL):  
> Spoko — idziemy rozmową. Czym się teraz zajmujesz?

Then → **Exit to 01**.

### Path — User provides one or more files

Under the hood:
- Register sources in `candidate/sources/` (`sources/index.yaml`).
- `starting_documents_received: true`
- `starting_documents_skipped: false`
- `source_intake_resolved: false` until freshness is done

Companion: acknowledge without file-system chatter  
> Dzięki. Zanim wejdziemy w szczegóły — to CV jest jeszcze aktualne, czy coś się od tamtej pory zmieniło?

#### Freshness check (required when received)

Ask **one** focused freshness question, e.g.:

**PL:**  
> Najnowsza rola z dokumentu nadal jest aktualna?

**EN:**  
> Is the latest role in the document still current?

If they say yes / no / “something changed” → one follow-up on what changed (new job, promotion, project) — still one question per turn.

Record outcomes in sources notes / employment seeds as **document facts**, not confirmed truth. Seed experiences only as `seed` / `DOCUMENT_EVIDENCE` — never mark skills `CONFIRMED` from the file alone.

When freshness conversation is done (enough to proceed):
- `source_intake_resolved: true`
- Mark onboarding complete → **Exit to 01**

If user is unsure → keep probing lightly or set open-questions; do not fake `CONFIRMED` facts.

### Invalid flag state

Never set `received: true` and `skipped: true` together.

---

## Read / Write

> **Token budget:** Obey `SKILL.md` → Token-efficient reads & Write budget. Below is stage-specific minimum.

**Read:** `profile.yaml`, `career-goal.yaml`; `sources/index.yaml` only if intake active; pointed source files only once at intake.

**Write:** `profile.yaml` (session, flags, progress), `sources/*` when files exist. Optional unverified employment seeds at intake only. No multi-file fan-out per turn.

## Exit when (Path 1 / intake complete)

- `source_intake_resolved: true`, **and**
- `progress."00-onboarding": COMPLETE`, **and**
- `session.current_stage` → `01-career-goal` with `progress."01-career-goal": IN_PROGRESS`

Companion handoff (example PL):  
> Super. Teraz krótko ustalimy, co robisz dziś i czego szukasz — bez pełnej listy skilli jeszcze.

Then load `workflow/01-career-goal.md`.

(Path 3 exits this file by loading `08`; Path 2 exits by loading the resumed stage workflow.)

---

## Anti-patterns

- Jumping straight to “Here’s a CV” on an empty DB.
- Interrogating the whole career in onboarding.
- Treating CV/LinkedIn as the profile.
- Showing YAML / paths / “I updated candidate/…”.
- Multiple unrelated questions in one turn.
- Wiping an EXISTING database because the user said “build a CV”.
- Asking continue vs CV when the user already named the path.
- Offering casual “start over” that deletes the Career Database.
