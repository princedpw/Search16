all:	proposal.pdf

TEXFILES = $(wildcard *.tex)
BIBFILES = $(wildcard *.bib)
STYFILES = $(wildcard *.sty)

proposal.pdf: ${TEXFILES} ${BIBFILES} ${STYFILES}
	pdflatex proposal
	-bibtex proposal
	pdflatex proposal
	pdflatex proposal

data: data.tex
	pdflatex data.tex

dpw:
	pdflatex dpw-bio

clean:
	rm *.aux *.bbl *.blg *.log *.dvi *.bak *~ proposal.ps proposal.pdf 
