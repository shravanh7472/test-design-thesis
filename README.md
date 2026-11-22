# test-design-thesis

This repo contains all files involved in the production of the paper "Optimal Test Design in the Presence of Gaming." This includes all `.tex` code, all `.bib` files, any figures, and versions of the paper or associated slide decks.

## Compiling the PDF

The main document can be compiled with `latexmk` on Terminal:

```sh
latexmk main.tex          # one-off build
latexmk -pvc main.tex     # continuous preview: rebuilds on save
latexmk -c                # clean auxiliary files
```

The output PDF is saved to `output/` (git-ignored).

## Structure

```
main.tex              Main document
preamble.tex          Packages, macros and theorem environments
.latexmkrc            Config

frontmatter/
  abstract.tex        Abstract

sections/
  introduction.tex        (currently inactive)
  prior-literature.tex    (currently inactive)
  preliminary-model.tex
  solving-the-model.tex
  model-extensions.tex

bib/
  references.bib     BibTeX bibliography

figures/             Any figures (including TiKz). Called by \graphicspath
tables/              .tex code for tables
slides/              Slide decks
output/              Generated PDF and aux files (git-ignored)
```

New sections are added by creating `sections/<name>.tex` and adding a matching
`\input{sections/<name>}` line in `main.tex`.
