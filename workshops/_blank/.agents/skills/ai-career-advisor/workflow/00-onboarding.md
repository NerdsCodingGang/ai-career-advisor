# 00 — Onboarding / source validation

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

**PL:**  
> Widzę, że masz już rozpoczęty profil zawodowy.  
> Chcesz **kontynuować od miejsca, w którym skończyłyśmy**, czy raczej **zrobić nowe CV / nowy wariant** na bazie tego, co już jest?

**EN:**  
> You already have a career profile in progress.  
> Do you want to **continue where we left off**, or **create a new CV / variant** from what’s already there?

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

**PL:**  
> Cześć! Zbudujemy Twój profil zawodowy krok po kroku.  
> Najpierw możemy wykorzystać to, co już masz — to tylko punkt wyjścia, nie ostateczna prawda.  
>  
> Masz pod ręką **aktualne albo starsze CV** albo **PDF z LinkedIna**?  
> Możesz wrzucić plik albo napisać, że wolisz zacząć bez dokumentów.

**EN:**  
> Hi! We’ll build your career profile step by step.  
> We can start from what you already have — it’s a starting hint, not the final truth.  
>  
> Do you have a **current or older CV** or a **LinkedIn PDF** handy?  
> You can upload a file or say you’d rather start without documents.

Then **wait**. (Emoji optional — match user tone; default can omit.)

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
> Spoko — pójdziemy rozmową. Za chwilę ustalimy, gdzie jesteś zawodowo i dokąd zmierzasz.

Then → **Exit to 01**.

### Path — User provides one or more files

Under the hood:
- Register sources in `candidate/sources/` (`sources/index.yaml`).
- `starting_documents_received: true`
- `starting_documents_skipped: false`
- `source_intake_resolved: false` until freshness is done

Companion: acknowledge without file-system chatter  
> Dzięki — potraktuję to jako punkt wyjścia i zaraz sprawdzę, czy coś mogło się zdezaktualizować.

#### Freshness check (required when received)

Ask **one** focused freshness question (or two tightly linked clarifiers), e.g.:

**PL:**  
> Czy najnowsza rola z dokumentu nadal jest aktualna?  
> Czy od przygotowania CV / eksportu LinkedIn doszło coś ważnego — nowa praca, awans, duży projekt?

**EN:**  
> Is the latest role in the document still current?  
> Since that CV / LinkedIn export, has anything material happened — new job, promotion, major project?

Record outcomes in sources notes / employment seeds as **document facts**, not confirmed truth. Seed experiences only as `seed` / `DOCUMENT_EVIDENCE` — never mark skills `CONFIRMED` from the file alone.

When freshness conversation is done (enough to proceed):
- `source_intake_resolved: true`
- Mark onboarding complete → **Exit to 01**

If user is unsure → keep probing lightly or set open-questions; do not fake `CONFIRMED` facts.

### Invalid flag state

Never set `received: true` and `skipped: true` together.

---

## Read (this stage)

- `candidate/profile.yaml` (always)
- `candidate/sources/index.yaml` if present
- Any uploaded files the user pointed to

## Write (this stage)

- `candidate/profile.yaml` — session, progress `00`, source intake flags
- `candidate/sources/*` — registry + freshness notes when files exist
- Optional light seeds into employment **only** as unverified document seed (see role-template epistemology)

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
