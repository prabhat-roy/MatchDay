#!/usr/bin/env bash
set -euo pipefail
NS="${1:-matchday}"
TS=$(date -u +%Y%m%dT%H%M%S)
velero backup create "matchday-$TS" --include-namespaces "$NS" --wait
