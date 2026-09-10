# curriculum-vitae

CV as code. Content and layout live in `cv.html`; `./build.sh` renders `dist/Lucas_Kaminski_CV.pdf`
with headless Chrome, in two passes so the footer lands at the foot of every page.
Needs Chrome and `pdfinfo` (poppler-utils).

    ./build.sh              # -> dist/Lucas_Kaminski_CV.pdf
    ./build.sh cv-node.html # -> dist/Lucas_Kaminski_CV_node.pdf

The build also copies the PDF into `~/vault/archive/personal/`, next to the older one.

To tailor for a role, copy `cv.html` and edit. Git history is the version log.
