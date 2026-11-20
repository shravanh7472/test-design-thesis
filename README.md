# test-design-thesis

This repo contains all files involved in the production of the paper "Optimal Test Design in the Presence of Gaming." This includes all `.tex` code, all `.bib` files, any figures, and versions of the paper or associated slide decks.

## Building

Compile the root document with `latexmk` (recommended — it handles the bibliography and re-run passes automatically):

```sh
latexmk main.tex          # one-off build
latexmk -pvc main.tex     # continuous preview: rebuilds on save
latexmk -c                # clean auxiliary files
```

The `.latexmkrc` routes all build artifacts and the output PDF to `output/` so the source tree stays clean. If you prefer to build by hand:

```sh
pdflatex main
bibtex   main
pdflatex main
pdflatex main
```

## Structure

```
main.tex              Root document — compile this
preamble.tex          Packages, macros, theorem environments
.latexmkrc            Build configuration (artifacts -> output/)

frontmatter/
  abstract.tex        Abstract

sections/             Body, one file per section (\input from main.tex)
  introduction.tex
  model.tex
  analysis.tex
  conclusion.tex
  appendix.tex

bib/
  references.bib      BibTeX bibliography

figures/              Figures (PDF/PNG); \graphicspath points here
tables/               Standalone table .tex fragments
slides/              Associated slide decks
output/              Generated PDF and aux files (git-ignored)
```

Add a new section by creating `sections/<name>.tex` and adding a matching
`\input{sections/<name>}` line in `main.tex`.
