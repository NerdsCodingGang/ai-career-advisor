# CV writing rules

Methodology only — does not advance pipeline stages or set `cv_generation_allowed`.  
**Quality bar:** output should feel like a strong specialist CV (person + role → short About → dense Skills table → evidence-rich Experience). See locked outline in `SKILL.md` / `cv-plan` v0.4. Respect **`max_pages: 4`**.

## Chain (required)

```text
Verified Career Database → competency-profile → cv-plan → cv.md
```

No final CV unless `cv_generation_allowed`.

```text
Career Database = truth
cv-plan         = positioning (ids, weights, groups — no CV prose)
cv.md           = rendering
```

**HARD RULE:** never invent skills, employers, projects, metrics, or titles for fit.

---

## Locked section order

```text
1. PERSON
2. TARGET ROLE
3. CONTACT / PUBLIC LINKS
4. ABOUT ME
5. SKILLS              ← first-page strength: markdown table, grouped, comma-separated
6. EXPERIENCE
7. EDUCATION
8. LANGUAGES
9. OPTIONAL OTHER      ← certs, courses, portfolio, interests… only if plan says so
   (+ optional PL RODO footer)
```

---

## 1–3. Header block

```text
{DISPLAY NAME}                         # placeholder OK if unknown
{TARGET ROLE}                          # from cv-plan.target_role exactly

Phone: … | Email: … | Location: {city} ({Remote}|{praca zdalna})   # only parts that exist
LinkedIn: … | GitHub: … | …            # from profile-extra.public_links
```

- Phone/email: ask at export if `contact_for_cv` wants them; **do not** force into Career Database.
- Remote paren only if `career-goal.work_preferences.remote` is set; wording follows `cv_language`.
- Target role examples: QA Specialist, Manual Tester, IT Support Specialist, C# Engineer — agreed label, not a rewritten employment title.

---

## 4. ABOUT ME

- **Short:** ~3–6 sentences (or 2 short paragraphs). Not an essay.
- Paragraph 1: who they are for **this** target + domains/products they actually touched (from DB).
- Paragraph 2 (optional): **AI approach** if `profile-extra.ai_approach` is filled — “uses AI as support, verifies against requirements/product, not source of truth.” Do not invent an AI story.
- Angle from `cv-plan.about_me.angle` only steers framing of real evidence.

---

## 5. SKILLS (must look “expensive” on page 1)

Render as a **two-column markdown table**:

| Group label | Skills (comma-separated) |
|-------------|--------------------------|
| Manual Testing & QA Methodologies | Requirements Analysis, Test Case Design, … |
| Test Management & Tools | Jira, Zephyr, … |

Rules:

- Groups and membership come from `cv-plan.skill_groups[]`; names from `skills.yaml`.
- Prefer **4–7 groups**, not one giant dump. Typical QA-shaped groups (adapt per target): methodologies · tools · API/data/automation · AI-assisted work · technical basics · soft skills (soft skills optional as a group; languages usually stay in §8).
- Only `CONFIRMED` / strong `PARTIAL` per plan eligibility.
- Order groups for the target (most relevant first).
- No skill name that is not in the plan/DB.

---

## 6. EXPERIENCE

### Layout

```text
{Title} | {Company}                    {Start – End}
- bullet
- bullet
Selected Project Highlights:           # only if plan lists project_highlight_ids for this role
- {Project}: one tight evidence line
```

Or for a career break:

```text
Career Break | {label}                 {Start – End}
One honest paragraph — no fake employment bullets.
```

### Bullets (detailed roles)

- 4–7 bullets for `detail: detailed`; 1–3 for `compact`; skip `omit`.
- Start with verb; concrete scope (web/API/mobile, stakeholders, tools) from DB.
- Weave **achievements** with `emphasis: primary` into bullets or as highlight lines — before→after when known; **no invented metrics**.
- Official `header.title` stays; do not “promote” the title in Experience.

### Project highlights

- Source: `employment/*/projects[]` and/or achievements linked to that experience — only ids selected in `cv-plan.experiences[].project_highlight_ids`.
- 2–4 highlights max under one detailed role; each = domain/product + what they verified/owned.

### Career break / non-job gaps

- Use experiences with `header.engagement_kind: career_break` (or equivalent in DB).
- One human paragraph; wit OK if user-owned tone; never pad with fake QA duties.

### Earlier band

- `band: earlier`: title + company + dates + one line, or 1 short bullet — still under EXPERIENCE, not a separate top-level section.

---

## 7–8. EDUCATION · LANGUAGES

- Education: institution — degree/program (years).
- Languages: Native / B2 / C1 etc. from profile-extra — dedicated section (do not bury only inside Skills unless plan explicitly puts a language note in a soft-skills group **and** still keeps §8).

---

## 9. OPTIONAL OTHER

Only blocks with `optional_other.*.include: true`:

- Certifications  
- Selected courses (name — platform/topics if in DB)  
- Portfolio / public projects (links)  
- Interests  

May render as subsections under one “Education & Courses” / “Additional” area if that reads cleaner — **order relative to Languages** stays: Education → Languages → Optional (or Education+courses together then Languages, if plan folds courses under education visually; do not invent course entries).

### RODO footer (PL)

If `cv-plan.footer.rodo_clause: true` and `cv_language: pl`, append a standard short consent line. Skip for `en` unless user asks.

---

## Voice & length

- Match `cv_language` (pl/en).
- Respect **`max_pages: 4`**: prefer fewer pages; use more `compact`/`omit` before dropping Skills strength or inventing content.
- Clear, specific, evidence-backed. Companion delivers the file warmly; **cv.md itself** stays professional CV prose (not “Cześć, oto Twoje CV” inside the file).

## Anti-patterns

- Skills as a flat comma blob with no groups  
- About Me longer than Experience on page 1  
- Dumping every DB skill / every micro-task  
- Inventing Cypress/SQL/ISTQB because the market wants them  
- Rewriting Junior→Senior in Experience headers  
- Putting phone/email permanently into `candidate/` without user asking to store them  
