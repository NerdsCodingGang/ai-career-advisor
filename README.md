# AI Career Advisor

Rozmowa z AI, która najpierw buduje zweryfikowany profil zawodowy, a dopiero potem CV.

Nie wypełniasz formularza. Mówisz o swojej pracy — agent zapisuje fakty w bazie i na końcu generuje CV pod wybraną rolę.

---

## Co potrzebujesz

- **Cursor**, **Claude Code** albo **Codex**
- To repozytorium (sklonowane lokalnie)

---

## Start w 3 krokach

### 1. Sklonuj repo

```bash
git clone <REPO_URL>
cd ai-career-advisor
```

### 2. Skopiuj pusty starter i otwórz **ten** folder w edytorze

Każda rozmowa o CV ma swój własny folder z Twoimi danymi (`candidate/`, `outputs/`).  
`workshops/_blank` to pusty szablon — skopiuj go pod dowolną nazwą.

**Jak skopiować (Windows):** otwórz folder `workshops` → skopiuj `_blank` → wklej obok → nazwij kopię np. `moja-sesja`.

Następnie **otwórz skopiowany folder** w Cursorze / Claude / Codex (nie cały `ai-career-advisor`):

> **File → Open Folder** → `moja-sesja`

Dlaczego: agent szuka bazy w rootcie otwartego workspace. Jeśli otworzysz `ai-career-advisor` (główny katalog repo), nie znajdzie Twoich plików we właściwym miejscu.

### 3. Napisz w czacie

```text
uruchom AI Career Advisor
```

Gotowe. Agent powinien przywitać się i zapytać m.in. o CV / LinkedIn (opcjonalnie).

Inne przykłady:

```text
Pomóż mi zbudować CV
Continue my career profile
Zrób CV z tego, co już mamy
```

W Claude Code możesz też: `/ai-career-advisor`.  
W Cursorze: wybierz skill **ai-career-advisor** z pickera, jeśli go widzisz.

---

## Co się dzieje dalej?

Agent działa jak **career companion** — rozmowa, nie log „zaktualizowałem YAML”.

| Sytuacja | Co zobaczysz |
|----------|----------------|
| Pierwszy raz (pusta baza) | Welcome → opcjonalne CV/LinkedIn → pytania discovery |
| Wracasz do sesji | Jedno pytanie: **kontynuuj** vs **nowe CV** (albo od razu wznowienie, jeśli napiszesz „kontynuuj…”) |
| „Zrób CV z tego, co mamy” | Plan/CV, jeśli profil jest gotowy; inaczej jasne braki |

Kolejność etapów (skrót):

```text
onboarding → cel → historia pracy → osiągnięcia
  → rynek → grilling → weryfikacja
  → domknięcie profilu → plan CV → CV
```

---

## Gdzie są moje dane?

W **otwartym folderze sesji** (np. `workshops/moja-sesja`):

| Folder | Co to jest |
|--------|------------|
| `candidate/` | Twoja Career Database (prawda o Tobie) |
| `outputs/` | Profil kompetencji, plan CV, gotowe `cv.md` |

```text
candidate/  = fakty
outputs/    = raporty i CV pod konkretną rolę
```

Puste pliki YAML na start to tylko schematy. Wypełnione dane trzymaj lokalnie — nie commituj prawdziwego CV do publicznego gita.

---

## Typowe pomyłki

| Pomyłka | Lepiej |
|---------|--------|
| Otwarty root `ai-career-advisor` | Otwórz `workshops/moja-sesja` |
| Oczekiwanie od razu gotowego CV | Najpierw discovery i weryfikacja, potem CV |
| „Dopisz skill z oferty, choć go nie mam” | Skill tego nie robi — baza musi to potwierdzić |

Więcej nawyków rozmowy: [`workshops/ai-career-advisor-workshops/PARTICIPANT-CHEATSHEET.md`](workshops/ai-career-advisor-workshops/PARTICIPANT-CHEATSHEET.md).

---

## Co jest w repo (dla ciekawskich)

```text
.
├── SKILL-ai-career-advisor/   # instrukcje dla agenta (nie otwieraj tego jako workspace)
├── workshops/
│   ├── _blank/                # pusty starter sesji ← to otwierasz
│   └── ai-career-advisor-workshops/   # slajdy + cheatsheet (~3 h)
├── README.md
└── .gitignore
```

W folderze sesji są też skróty (symlinki), dzięki którym Cursor / Claude / Codex **same znajdują** skill:

```text
.agents/skills/…  → Cursor / Codex
.claude/skills/…  → Claude Code
oba wskazują na SKILL-ai-career-advisor/
```

Nowa sesja = kopia `_blank`:

```bash
cp -R workshops/_blank workshops/<nazwa>
```

Warsztat z prezentacją: [`workshops/ai-career-advisor-workshops/`](workshops/ai-career-advisor-workshops/).

---

## Go deeper

- Skill (dla agenta): [`SKILL-ai-career-advisor/SKILL.md`](SKILL-ai-career-advisor/SKILL.md)
- Start UX: [`SKILL-ai-career-advisor/workflow/00-onboarding.md`](SKILL-ai-career-advisor/workflow/00-onboarding.md)
- Workshops: [`workshops/README.md`](workshops/README.md)
