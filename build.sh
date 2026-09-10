#!/usr/bin/env bash
# Renders cv.html to PDF. Chrome is the only dependency.
set -euo pipefail
cd "$(dirname "$0")"
src="${1:-cv.html}"
name="Lucas_Kaminski_CV"
# cv-howdy.html -> Lucas_Kaminski_CV_howdy.pdf
suffix="$(basename "${src%.html}" | sed "s/^cv-*//; s/-/_/g")"
[ -n "$suffix" ] && name="${name}_${suffix}"
out="dist/$name.pdf"
mkdir -p dist
render() {
  google-chrome --headless=new --disable-gpu --no-pdf-header-footer \
    --window-size=794,1123 --print-to-pdf="$out" "file://$PWD/$src$1" 2>/dev/null
}

# duas passadas: a primeira só para contar as páginas, a segunda para a página
# esticar o corpo e o rodapé do tfoot cair no pé da última folha também
render ""
render "?pages=$(pdfinfo "$out" | awk '/^Pages:/{print $2}')"

# copy into the vault so it is one click away from Obsidian
vault="$HOME/vault/archive/personal"
[ -d "$vault" ] && cp "$out" "$vault/"

echo "$out"
