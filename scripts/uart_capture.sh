#!/usr/bin/env bash
set -euo pipefail

# Example:
#   ./scripts/uart_capture.sh /dev/ttyACM0 115200 boot_smoke

DEV="${1:-/dev/ttyACM0}"
BAUD="${2:-115200}"
NAME="${3:-boot}"

OUT_DIR="docs/evidence/uart"
mkdir -p "${OUT_DIR}"
TS="$(date +%F_%H%M%S)"
OUT="${OUT_DIR}/${TS}_${NAME}.log"

echo "[*] Capturing UART from ${DEV} @ ${BAUD} -> ${OUT}"
echo "[*] Stop with Ctrl+C"

stty -F "${DEV}" "${BAUD}" raw -echo -echoe -echok -echoctl -echoke || true
cat "${DEV}" | tee "${OUT}"
