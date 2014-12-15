SRCS = pgfplots-ex1.tex pgfplots-ex2.tex pgfplots-ex3.tex mountain.tex \
			 filtro.tex filtro-fh.tex
PDFS = $(patsubst %.tex,%.pdf,$(SRCS))

all: $(PDFS)

%.pdf: %.tex
	latexmk -pdf $<
