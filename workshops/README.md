# workshops

Przykłady i przestrzenie robocze.

## Warsztaty

| Warsztat | Czas | Materiały |
|----------|------|-----------|
| [AI Career Advisor Workshops](ai-career-advisor-workshops/) | ~3 h | [Slajdy (Slidev)](ai-career-advisor-workshops/slides/) · [Cheatsheet](ai-career-advisor-workshops/PARTICIPANT-CHEATSHEET.md) · [Facylitator](ai-career-advisor-workshops/FACILITATOR.md) |

Slajdy lokalnie: `cd workshops/ai-career-advisor-workshops/slides && npm i && npm run dev`  
Po skonfigurowaniu GitHub Pages: URL z workflow `workshop-slides.yml`.

## Sesje uczestników

Każda sesja = osobny folder z Career Database:

```text
workshops/
  _blank/                 # pusty starter (schematy)
  <twoj-workshop>/        # kopia _blank + Twoje dane
    candidate/
    outputs/
    .agents/skills/…      # → SKILL-ai-career-advisor
    .claude/skills/…
```

```bash
cp -R workshops/_blank workshops/moja-sesja
```

Otwórz **folder sesji** w Cursor / Claude / Codex, potem: `uruchom AI Career Advisor`.

Nie trzymaj w publicznym gicie prawdziwych danych osobowych ani sekretów.
