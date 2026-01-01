#!/usr/bin/env bash
set -euo pipefail

# Export a clean patch series from a git repo (example).
# Usage:
#   ./scripts/patch_export_example.sh ~/src/linux mybranch patches/linux/6.6

SRC="${1:?path to git repo}"
BR="${2:?branch name}"
OUT="${3:?output dir}"

mkdir -p "${OUT}"
pushd "${SRC}" >/dev/null
git checkout "${BR}"
git format-patch origin/main -o "$(pwd -P)/${OUT}" || true
popd >/dev/null

echo "[*] Patches exported to ${OUT}"
