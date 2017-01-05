gitbook:
	Rscript --quiet _render.R "bookdown::gitbook" "bookdown::pdf_book"

all:
	Rscript --quiet _render.R
