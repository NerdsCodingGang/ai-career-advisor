# Question design

Methodology only — does not advance pipeline stages.

## Defaults

- **One** question per turn; optional **two** short linked clarifiers for the same thread.
- Open enough to get story; closed enough to be answerable.
- Prefer concrete time/place (“w tamtej roli w Example Corp…”) over abstract (“jaka jest Twoja największa siła?”).

## Good patterns

| Aim | Ask like… |
|-----|-----------|
| Context | “Czym był ten produkt / dla kogo?” |
| Contribution | “Co robiłaś Ty, a co zespół?” |
| Ownership | “Za co ktoś mógł Cię rozliczyć?” |
| Change | “Jak było wcześniej? Co było potem?” |
| Doc hint | “W CV jest X — co konkretnie z tym robiłaś?” (not “czy używałaś X?”) |
| Market mirror | “Opisałaś Y potocznie; w ofertach wołają to Z — pasuje?” |
| Skip force | After one solid follow-up with no impact → stop; keep competency only |

## Bad patterns

- “Jakie masz achievements / największy sukces?”
- Skill rating quizzes (“AWS 1–5?”) as Pass 1.
- Multiple unrelated threads in one message.
- Leading the user into fake metrics.

## Open-questions discipline

- Prefer creating items when **askable** (`OPEN`).
- `BLOCKED` only for a **formed** deferred thread (`ask_angle` / links + `blocked_by`).
- Max one `IN_PROGRESS` globally.
- On resolve: `outcome.summary` + `outcome.updated[]` file paths.
