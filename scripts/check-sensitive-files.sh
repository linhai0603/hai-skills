#!/usr/bin/env bash
set -euo pipefail

ROOT="${1:-.}"

fail() {
  echo "FAIL: $1" >&2
  exit 1
}

pass() {
  echo "PASS: $1"
}

[ -d "$ROOT" ] || fail "directory does not exist: $ROOT"

if find "$ROOT" \( \
  -name ".env" -o \
  -name ".env.*" -o \
  -name "*.pem" -o \
  -name "*.key" -o \
  -name "*.p12" -o \
  -name "id_rsa" -o \
  -name "id_ed25519" \
\) -not -path "*/.git/*" | grep -q .; then
  fail "sensitive-looking credential file found"
fi

PATTERN='((api[_-]?key|secret|token|cookie|password)[[:space:]]*[:=][[:space:]]*["'"'"']?[A-Za-z0-9_./+=-]{12,}|authorization:[[:space:]]*[A-Za-z0-9._ -]{12,}|bearer[[:space:]]+[A-Za-z0-9._-]{20,}|AKIA[0-9A-Z]{16}|sk-[A-Za-z0-9_-]{20,}|github_pat_[A-Za-z0-9_]{20,}|ghp_[A-Za-z0-9]{20,}|-----BEGIN[[:space:]]+(RSA|EC|OPENSSH|PRIVATE)[[:space:]]+KEY-----)'

if grep -REni "$PATTERN" "$ROOT" \
  --exclude-dir=.git \
  --exclude='check-sensitive-files.sh' \
  --exclude='*.png' \
  --exclude='*.jpg' \
  --exclude='*.jpeg' \
  --exclude='*.gif' \
  --exclude='*.pdf' >/tmp/hai-skills-sensitive-hits.txt; then
  cat /tmp/hai-skills-sensitive-hits.txt >&2
  fail "sensitive-looking text found; review and redact before publishing"
fi

if grep -REni '(/Users/|/home/|C:\\Users\\|my\.feishu\.cn|internal-api-drive-stream|bytedance\.larkoffice\.com)' "$ROOT" \
  --exclude-dir=.git \
  --exclude='check-sensitive-files.sh' >/tmp/hai-skills-private-path-hits.txt; then
  cat /tmp/hai-skills-private-path-hits.txt >&2
  fail "local path or private source link found"
fi

pass "no obvious sensitive files, secret-like strings, local paths, or private source links found"
