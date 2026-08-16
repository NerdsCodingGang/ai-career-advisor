#!/usr/bin/env bash
# Create a new workshop session from _blank (self-contained skill copy included).
set -euo pipefail

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
NAME="${1:-}"

if [[ -z "$NAME" ]]; then
  echo "Usage: $0 <session-name>" >&2
  echo "Example: $0 ania" >&2
  exit 1
fi

if [[ "$NAME" == *"/"* || "$NAME" == "." || "$NAME" == ".." || "$NAME" == "_blank" ]]; then
  echo "Invalid session name: $NAME" >&2
  exit 1
fi

SRC="$ROOT/workshops/_blank"
DST="$ROOT/workshops/$NAME"

if [[ ! -d "$SRC/.agents/skills/ai-career-advisor" ]]; then
  echo "Starter missing vendored skill — run: $ROOT/scripts/sync-skill-to-starter.sh" >&2
  exit 1
fi

if [[ -e "$DST" ]]; then
  echo "Already exists: $DST" >&2
  exit 1
fi

cp -R "$SRC" "$DST"
echo "Created $DST"
echo "Open this folder in Cursor / Claude / Codex, then: uruchom AI Career Advisor"
echo "Codex check: /skills  or  \$ai-career-advisor"
