# Lucas Kaminski — CV

Senior backend / full-stack engineer. TypeScript, Python, GCP.
[lucas-kaminski.dev](https://lucas-kaminski.dev) · [LinkedIn](https://linkedin.com/in/lucas-kaminski)

**[Download the latest PDF](https://github.com/lucas-kaminski/curriculum-vitae/releases/latest/download/Lucas_Kaminski_CV.pdf)**

<p>
  <img src="docs/preview-1.png" width="49%" alt="CV page 1">
  <img src="docs/preview-2.png" width="49%" alt="CV page 2">
</p>

## How it's built

The CV is a single HTML file, `cv.html`, printed to PDF by headless Chrome.
`build.sh` renders twice: the first pass counts pages, the second stretches the
body so the footer sits at the foot of the last page.

    ./build.sh              # -> dist/Lucas_Kaminski_CV.pdf
    ./build.sh cv-node.html # -> dist/Lucas_Kaminski_CV_node.pdf

Needs Google Chrome and `pdfinfo` (poppler-utils). To tailor it for a role, copy
`cv.html` and edit. Git history is the version log.
