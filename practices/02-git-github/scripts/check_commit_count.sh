#!/usr/bin/env bash
set -euo pipefail

count=$(git rev-list --count HEAD)
echo "Total commits: $count"

# 1 starting template commit + at least 3 student commits
if [ "$count" -lt 4 ]; then
  echo "FAIL: expected at least 4 commits total (1 template + 3 of yours), found $count"
  exit 1
fi

echo "OK: $count commits"
