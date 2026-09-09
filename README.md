# curriculum-vitae

CV as code. Content and layout live in `cv.html`; `./build.sh` renders `dist/cv.pdf`
with headless Chrome. No dependencies beyond a Chrome install.

    ./build.sh              # -> dist/cv.pdf
    ./build.sh cv-node.html # tailored variant -> dist/cv-node.pdf

To tailor for a role, copy `cv.html` and edit. Git history is the version log.
