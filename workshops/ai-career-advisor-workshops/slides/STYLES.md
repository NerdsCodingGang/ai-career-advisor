# Style slajdów — design system

Nie stylij każdego slajdu od zera. Składaj z klas `.aca-*` w `styles/index.css`.

## Frontmatter (slajdy koncepcyjne)

```md
---
layout: center
class: text-center
---
```

## Klocki

| Klasa | Po co |
|-------|--------|
| `aca-pair` + `aca-dim` / `aca-hit` | Dwa zdania: słabe vs mocne (bez szarości) |
| `aca-dim--strike` | Przekreślenie (chatbot / zła ścieżka) |
| `aca-punch` (+ `--sm`) | Punchline na dole |
| `aca-grid` (+ `--accent`, `--sm`) | Siatka 2×N z liniami, bez kart |
| `aca-panel` | Ciemny panel z przykładem |
| `aca-contrast` | Złe vs dobre (dwie kolumny) |
| `aca-table` | Porównanie chatbot / agent |
| `aca-list` | Zwykła lista |
| `aca-flow` | Kolejność ze strzałkami |
| `aca-lead` / `aca-note` | Lead pod tytułem |
| `aca-deliverables` | Lista produktów warsztatu |

## Zasady

1. **Bez szarego hero text** — przygaszaj przez `aca-dim` (opacity na ink), wyróżniaj `aca-hit`.
2. **Bez fioletowych pigułek / kart** na treści koncepcyjnej — linie + typografia.
3. **Wyśrodkowanie** = `layout: center` + `text-center` + bloki z `margin: auto` (wbudowane w `.aca-*`).
4. UI warsztatu (`your-turn`, `pro-tip`, `flow-timeline`, `pill`) zostaje osobno — to nie są slajdy ideowe.

## Nowy slajd

Skopiuj najbliższy wzorzec z intro (np. `aca-pair` + `aca-punch`) zamiast wymyślać nowe klasy.
