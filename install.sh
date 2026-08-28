#!/usr/bin/env bash
# install.sh — copy (or symlink) the pack into your agent's skill dir.
#
# Usage:
#   ./install.sh                 # copy into ~/.hermes/skills
#   ./install.sh --claude DIR    # copy into DIR (Claude Code: ~/.claude/skills)
#   ./install.sh --link DIR      # symlink instead of copy (live edits propagate)
#   ./install.sh --dry-run       # list what would be installed
#
# Name collision: if DEST/frontend-design exists as a category folder
# (no SKILL.md), this pack's Anthropic skill is installed as
# anthropic-frontend-design instead.
set -euo pipefail

MODE=copy
DEST="$HOME/.hermes/skills"

while [[ $# -gt 0 ]]; do
  case "$1" in
    --claude)  MODE=copy; DEST="${2:?usage: --claude DIR}"; shift 2 ;;
    --link)    MODE=link; DEST="${2:?usage: --link DIR}"; shift 2 ;;
    --dry-run) DRY=1; shift ;;
    -h|--help) sed -n '2,13p' "$0"; exit 0 ;;
    *) echo "unknown flag: $1" >&2; exit 2 ;;
  esac
done

REPO="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SKILLS_DIR="$REPO/skills"

install_name() {
  local name="$1"
  if [[ "$name" == "frontend-design" && -e "$DEST/frontend-design" && ! -f "$DEST/frontend-design/SKILL.md" ]]; then
    echo "anthropic-frontend-design"
  else
    echo "$name"
  fi
}

if [[ "${DRY:-0}" == "1" ]]; then
  echo "Would $MODE skills from $SKILLS_DIR into $DEST:"
  for d in "$SKILLS_DIR"/*/; do
    name=$(basename "$d")
    [[ -f "$d/SKILL.md" ]] || continue
    dest_name=$(install_name "$name")
    if [[ "$dest_name" != "$name" ]]; then
      echo "  $name  (as $dest_name — DEST/frontend-design is a category)"
    else
      echo "  $name"
    fi
  done
  exit 0
fi

mkdir -p "$DEST"
count=0
for d in "$SKILLS_DIR"/*/; do
  name=$(basename "$d")
  [[ -f "$d/SKILL.md" ]] || continue   # skip non-skill dirs
  dest_name=$(install_name "$name")
  target="$DEST/$dest_name"
  if [[ -e "$target" ]]; then
    echo "skip  $dest_name (exists at $target)"
    continue
  fi
  if [[ "$MODE" == "link" ]]; then
    ln -s "$d" "$target"
    echo "link  $name -> $target"
  else
    cp -R "$d" "$target"
    echo "copy  $name -> $target"
  fi
  count=$((count+1))
done
echo "Done. Installed $count skills into $DEST"
echo "Note: shared/ material (research, CLI sources) stays in the repo —"
echo "      keep the repo cloned; skills reference it via repo-relative paths."
