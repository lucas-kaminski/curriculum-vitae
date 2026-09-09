#!/usr/bin/env bash
# Renders cv.html to PDF. Chrome is the only dependency.
set -euo pipefail
cd "$(dirname "$0")"
src="${1:-cv.html}"
out="dist/$(basename "${src%.html}").pdf"
mkdir -p dist
google-chrome --headless=new --disable-gpu --no-pdf-header-footer \
  --print-to-pdf="$out" "file://$PWD/$src" 2>/dev/null
echo "$out"
