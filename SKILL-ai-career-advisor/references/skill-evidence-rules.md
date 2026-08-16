# Skill evidence rules

Methodology only — does not advance pipeline stages.

## Three layers (never collapse)

```text
FACT FROM DOCUMENT  ≠  FACT CONFIRMED BY USER  ≠  SKILL IN skills.yaml
```

## knowledge_status (skills.yaml)

| Status | Meaning | Next move |
|--------|---------|-----------|
| UNKNOWN | Nothing useful yet | Explore or leave |
| DOCUMENT_EVIDENCE | On CV/LI only | Ask what they did — not “did you use it?” |
| INFERRED | Our hypothesis from story | Name it; ask if they claim it |
| PARTIAL | Real contact; thin depth | Deepen — don’t restart from zero |
| CONFIRMED | Enough evidence | Optional depth only |
| REJECTED | Explicit no | Do not re-ask |
| NOT_RELEVANT | Stop for this goal | Park |
| DISPUTED | Conflict | Resolve before CONFIRMED |

**Shortcuts:** strong clear user evidence may jump DOCUMENT/INFERRED/UNKNOWN → CONFIRMED.  
**Market:** MARKET_ONLY → propose UNKNOWN; MARKET+signal → INFERRED; never PARTIAL/CONFIRMED from market alone.

## Capability (independent of status)

`unknown | none | awareness | basic | practical | deep`  
Document alone must not push above **awareness**.

## Agency (per experience evidence only)

`unknown | ambient | assisted | used | owned | deepened`  
**Do not derive** capability from agency or vice versa  
(e.g. owned + practical OK; used + deep OK).

## competency_evidence kinds

`TECHNOLOGY | TOOL | PRACTICE | PROCESS | DOMAIN | RESPONSIBILITY | CAPABILITY`  
Same model for Redis, Jira, incident response, stakeholder communication, etc.
