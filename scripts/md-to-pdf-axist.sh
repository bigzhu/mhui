#!/usr/bin/env bash
set -euo pipefail

if [[ "${1:-}" == "" ]]; then
  echo "Usage: $0 <input.md> [output.pdf]" >&2
  exit 1
fi

SRC="$1"
OUT="${2:-$(basename "${SRC%.md}")-axist.pdf}"

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

ENGINE="${PDF_ENGINE:-tectonic}"

pandoc "$SRC" --defaults "$ROOT_DIR/pandoc-axist.yaml" --pdf-engine="$ENGINE" -o "$OUT"

echo "Generated PDF: $OUT"
