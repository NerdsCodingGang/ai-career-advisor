# workshops

Przykłady i przestrzenie robocze.

## Warsztaty

| Warsztat | Czas | Materiały |
|----------|------|-----------|
| [AI Career Advisor Workshops](ai-career-advisor-workshops/) | ~3 h | [Slajdy (Slidev)](ai-career-advisor-workshops/slides/) · [Cheatsheet](ai-career-advisor-workshops/PARTICIPANT-CHEATSHEET.md) · [Facylitator](ai-career-advisor-workshops/FACILITATOR.md) |

Slajdy lokalnie: `cd workshops/ai-career-advisor-workshops/slides && npm i && npm run dev`  
Slajdy online: [GitHub Pages](https://nerdscodinggang.github.io/ai-career-advisor/).

## Sesje uczestników

Każda sesja = osobny folder z Career Database:

```text
workshops/
  _blank/                 # pusty starter (schematy + skill w .agents/)
  <twoj-workshop>/        # kopia _blank + Twoje dane
    candidate/
    outputs/
    .agents/skills/ai-career-advisor/   # real files (Codex-safe)
    .claude/skills/ai-career-advisor/   # in-session link → .agents/...
```

```bash
./scripts/new-session.sh moja-sesja
# albo: cp -R workshops/_blank workshops/moja-sesja
```

Otwórz **folder sesji** w Cursor / Claude / Codex, potem: `uruchom AI Career Advisor`.  
Codex: `/skills` albo `$ai-career-advisor`.

Nie trzymaj w publicznym gicie prawdziwych danych osobowych ani sekretów.
