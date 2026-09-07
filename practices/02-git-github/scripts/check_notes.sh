#!/usr/bin/env bash
set -euo pipefail

if [ ! -f NOTES.md ]; then
  echo "FAIL: NOTES.md is missing"
  exit 1
fi

if grep -q "replace this line" NOTES.md; then
  echo "FAIL: NOTES.md still has an unreplaced placeholder line"
  exit 1
fi

echo "OK: both placeholders in NOTES.md were replaced"
