#!/usr/bin/env bash
set -euo pipefail

IMAGE=lab01-submission
CONTAINER=lab01-check

cleanup() { docker rm -f "$CONTAINER" >/dev/null 2>&1 || true; }
trap cleanup EXIT

docker build -t "$IMAGE" ./submission

docker run -d --rm -p 8080:8080 --name "$CONTAINER" "$IMAGE"

# give it a moment to start, then require a response
for _ in $(seq 1 10); do
  if curl -sf localhost:8080 >/dev/null; then
    break
  fi
  sleep 1
done
curl -sf localhost:8080

# non-root check: the container's main process must not be UID 0
USER_ID=$(docker exec "$CONTAINER" id -u)
if [ "$USER_ID" = "0" ]; then
  echo "FAIL: container is running as root (uid 0)"
  exit 1
fi

echo "OK: container responded and is running as uid $USER_ID"
