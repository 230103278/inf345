#!/usr/bin/env bash
set -euo pipefail

if [ ! -f CONTRIBUTORS.md ]; then
  echo "FAIL: CONTRIBUTORS.md is missing"
  exit 1
fi

if [ ! -s CONTRIBUTORS.md ]; then
  echo "FAIL: CONTRIBUTORS.md exists but is empty"
  exit 1
fi

echo "OK: CONTRIBUTORS.md exists and has content"
cat CONTRIBUTORS.md
