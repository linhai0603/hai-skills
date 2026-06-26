#!/usr/bin/env bash
set -euo pipefail

ROOT="${1:-.}"
FAILED=0

fail_item() {
  echo "FAIL: $1" >&2
  FAILED=1
}

pass_item() {
  echo "PASS: $1"
}

[ -d "$ROOT" ] || {
  echo "FAIL: directory does not exist: $ROOT" >&2
  exit 1
}

found=0
for skill_file in "$ROOT"/*/SKILL.md; do
  [ -f "$skill_file" ] || continue
  found=1
  skill_dir="$(dirname "$skill_file")"
  skill_name="$(basename "$skill_dir")"

  if grep -Eq '^name:[[:space:]]+'"$skill_name"'[[:space:]]*$' "$skill_file" && grep -Eq '^description:[[:space:]]+.{40,}' "$skill_file"; then
    pass_item "$skill_name has valid SKILL.md frontmatter"
  else
    fail_item "$skill_name frontmatter is missing name or useful description"
  fi

  if [ -f "$skill_dir/agents/openai.yaml" ]; then
    pass_item "$skill_name has agents/openai.yaml"
  else
    fail_item "$skill_name is missing agents/openai.yaml"
  fi
done

if [ "$found" -eq 0 ]; then
  fail_item "no skill directories found"
fi

if [ "$FAILED" -eq 0 ]; then
  echo "PASS: skill structure looks valid"
else
  exit 1
fi
