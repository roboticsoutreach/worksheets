PANDOCARGS=-t latex


all: docs.pdf


docs.pdf: docs.tex section-setup.tex section-simple.tex section-m3pi-api.tex
	pdflatex docs.tex

section-%.tex: %.md
	pandoc $(PANDOCARGS) $< -o $@

.PHONY: clean
clean:
	rm -f *.pdf *.log *.aux *.out section-*.tex
