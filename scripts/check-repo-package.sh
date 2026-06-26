#!/usr/bin/env bash
set -euo pipefail

ROOT="${1:-.}"
FAILED=0

check_file() {
  local file="$1"
  if [ -f "$ROOT/$file" ]; then
    echo "PASS: $file exists"
  else
    echo "FAIL: missing $file" >&2
    FAILED=1
  fi
}

check_readme_section() {
  local section="$1"
  if [ -f "$ROOT/README.md" ] && grep -Eiq "^##[[:space:]]+$section[[:space:]]*$" "$ROOT/README.md"; then
    echo "PASS: README has section: $section"
  else
    echo "FAIL: README missing section: $section" >&2
    FAILED=1
  fi
}

[ -d "$ROOT" ] || {
  echo "FAIL: directory does not exist: $ROOT" >&2
  exit 1
}

check_file "README.md"
check_file "LICENSE"
check_file "CHANGELOG.md"
check_file "CONTRIBUTING.md"
check_file "docs/github-metadata.md"

check_readme_section "Quick Start"
check_readme_section "Examples"
check_readme_section "Skills"
check_readme_section "What it does"
check_readme_section "Requirements"
check_readme_section "Limitations"
check_readme_section "Security & Privacy"
check_readme_section "Contributing"
check_readme_section "License"

if [ "$FAILED" -eq 0 ]; then
  echo "PASS: repository packaging looks publish-ready"
else
  exit 1
fi
