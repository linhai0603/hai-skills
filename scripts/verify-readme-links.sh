#!/usr/bin/env bash
set -euo pipefail

ROOT="${1:-.}"
README="$ROOT/README.md"

[ -f "$README" ] || {
  echo "FAIL: README.md not found" >&2
  exit 1
}

FAILED=0
while IFS= read -r link; do
  case "$link" in
    http://*|https://*|mailto:*|"#"*) continue ;;
  esac
  target="${link%%#*}"
  [ -z "$target" ] && continue
  if [ ! -e "$ROOT/$target" ]; then
    echo "FAIL: README link target missing: $link" >&2
    FAILED=1
  fi
done < <(grep -Eo '\[[^]]+\]\([^)]+\)' "$README" | sed -E 's/^.*\(([^)]+)\)$/\1/')

if [ "$FAILED" -eq 0 ]; then
  echo "PASS: README local links look valid"
else
  exit 1
fi
