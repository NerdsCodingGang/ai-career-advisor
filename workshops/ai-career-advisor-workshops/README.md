# AI Career Advisor Workshops

Warsztat **~3 h**: od pustego profilu do roboczego CV ze skillem AI Career Advisor.

Na sali: agent wyszukuje **10–15 ofert** blisko roli + dopytuje o kompetencje; dom tylko przy niedosycie.

## Materiały

| Plik | Dla kogo |
|------|----------|
| [slides/](slides/) | Prezentacja (Slidev → GitHub Pages) |
| [FACILITATOR.md](FACILITATOR.md) | Prowadząca — timing, skip, 1:1 |
| [PARTICIPANT-CHEATSHEET.md](PARTICIPANT-CHEATSHEET.md) | Uczestnicy — komendy + pro tipy |

## Slajdy lokalnie (podgląd)

`package.json` jest w **`slides/`**, nie w folderze warsztatu.

**Jeśli jesteś już w** `workshops/ai-career-advisor-workshops`:

```bash
cd slides
npm install
npm run dev
```

**Jeśli jesteś w rootcie repo** (`ai-career-advisor`):

```bash
cd workshops/ai-career-advisor-workshops/slides
npm install
npm run dev
```

Potem otwórz URL z terminala (zwykle `http://localhost:3030`).  
Strzałki / spacja = następny slajd.

Kolory: **białe tło**, akcenty **jasny fiolet** + **ciemny fiolet**.

### Build produkcyjny (opcjonalnie)

```bash
cd workshops/ai-career-advisor-workshops/slides
npm install
npm run build
```

## Slajdy na GitHub Pages

Po pushu na `main` (workflow w repo) deck będzie pod:

```text
https://<org-or-user>.github.io/<repo>/ai-career-advisor-workshops/
```

(dokładny URL zależy od nazwy repo — wpisz tu po pierwszym deployu).

## Sesja uczestnika

Otwórz folder `workshops` → skopiuj `_blank` → nazwij kopię np. `moja-sesja`.

W Cursor / Claude / Codex **otwórz** folder `moja-sesja`, potem:

```text
uruchom AI Career Advisor
```

Szczegóły setupu: [README główny](../../README.md).
