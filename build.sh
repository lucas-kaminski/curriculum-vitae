#!/usr/bin/env bash
# Renders cv.html to PDF. Chrome is the only dependency.
set -euo pipefail
cd "$(dirname "$0")"
src="${1:-cv.html}"
name="Lucas Kaminski CV"
# cv-howdy.html -> "Lucas Kaminski CV howdy.pdf"
suffix="$(basename "${src%.html}" | sed 's/^cv-*//; s/-/ /g')"
[ -n "$suffix" ] && name="$name $suffix"
out="dist/$name.pdf"
mkdir -p dist
google-chrome --headless=new --disable-gpu --no-pdf-header-footer \
  --print-to-pdf="$out" "file://$PWD/$src" 2>/dev/null
echo "$out"
