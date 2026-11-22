# test-design-thesis

This repo contains all files involved in the production of the paper "Optimal Test Design in the Presence of Gaming." This includes all `.tex` code, all `.bib` files, any figures, and versions of the paper or associated slide decks.

## Compiling the PDF

The main document can be compiled with `latexmk` on Terminal:

```sh
latexmk main.tex          # one-off build
latexmk -pvc main.tex     # continuous preview: rebuilds on save
latexmk -c                # clean auxiliary files
```

The `.latexmkrc` routes all the build artifacts (`.aux`, `.log`, and `.fls`, for example) and the output PDF to `output/`.

## Structure

```
main.tex              Main document
preamble.tex          Packages, macros & theorem environments
.latexmkrc            Config (artifacts -> output/)

frontmatter/
  abstract.tex        Abstract

sections/             Disambiguation of the paper into sections (\input from main.tex)
  introduction.tex        (stub; \input commented out in main.tex)
  prior-literature.tex    (stub; \input commented out in main.tex)
  preliminary-model.tex
  solving-the-model.tex
  model-extensions.tex

bib/
  references.bib      BibTeX bibliography

figures/             Figures (PDF/PNG); \graphicspath points here
tables/              Standalone table .tex fragments
slides/              Associated slide decks
output/              Generated PDF and aux files (git-ignored)
```

Add a new section by creating `sections/<name>.tex` and adding a matching
`\input{sections/<name>}` line in `main.tex`.