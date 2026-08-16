#!/usr/bin/env bash
# Sync canonical skill into workshop starter (real files, not out-of-tree symlinks).
# Codex/Cursor sandboxes that open a session folder cannot follow symlinks to the monorepo root.
set -euo pipefail

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
SRC="$ROOT/SKILL-ai-career-advisor"
BLANK="$ROOT/workshops/_blank"
AGENTS_DST="$BLANK/.agents/skills/ai-career-advisor"
CLAUDE_LINK="$BLANK/.claude/skills/ai-career-advisor"

if [[ ! -d "$SRC" ]]; then
  echo "Missing canonical skill: $SRC" >&2
  exit 1
fi

mkdir -p "$(dirname "$AGENTS_DST")" "$(dirname "$CLAUDE_LINK")"

# Drop old symlink or stale copy
rm -rf "$AGENTS_DST"
mkdir -p "$AGENTS_DST"
rsync -a --delete \
  --exclude '.DS_Store' \
  "$SRC/" "$AGENTS_DST/"

# Claude path: in-workspace symlink to the agents copy (same session folder)
rm -rf "$CLAUDE_LINK"
ln -s ../../.agents/skills/ai-career-advisor "$CLAUDE_LINK"

echo "Synced skill → $AGENTS_DST"
echo "Claude link  → $CLAUDE_LINK -> ../../.agents/skills/ai-career-advisor"
