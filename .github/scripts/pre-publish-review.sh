#!/usr/bin/env bash
set -euo pipefail

ROOT="${1:-.}"
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "== Git state =="
git -C "$ROOT" status --short
git -C "$ROOT" branch --show-current
git -C "$ROOT" remote -v || true

echo
echo "== Sensitive files =="
"$SCRIPT_DIR/check-sensitive-files.sh" "$ROOT"

echo
echo "== Skill structure =="
"$SCRIPT_DIR/check-skill-structure.sh" "$ROOT"

echo
echo "== Repository package =="
"$SCRIPT_DIR/check-repo-package.sh" "$ROOT"

echo
echo "== README links =="
"$SCRIPT_DIR/verify-readme-links.sh" "$ROOT"

echo
echo "PASS: pre-publish review completed"
