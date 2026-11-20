# latexmk configuration
# Build with: latexmk main.tex   (or `latexmk -pvc main.tex` for continuous)

$pdf_mode = 1;           # produce PDF via pdflatex
# -shell-escape is required by the minted package; -synctex=1 enables
# forward/inverse search between the editor and the PDF viewer.
$pdflatex = 'pdflatex -shell-escape -synctex=1 -interaction=nonstopmode %O %S';
$bibtex_use = 2;         # run bibtex as needed
$out_dir = 'output';     # keep aux files and PDF out of the source tree
$aux_dir = 'output';
$clean_ext = 'synctex.gz synctex.gz(busy) run.xml bbl bcf fdb_latexmk';
