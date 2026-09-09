# curriculum-vitae

CV as code. Content and layout live in `cv.html`; `./build.sh` renders `dist/Lucas_Kaminski_CV.pdf`
with headless Chrome. No dependencies beyond a Chrome install.

    ./build.sh              # -> dist/Lucas_Kaminski_CV.pdf
    ./build.sh cv-node.html # -> dist/Lucas_Kaminski_CV_node.pdf

To tailor for a role, copy `cv.html` and edit. Git history is the version log.
