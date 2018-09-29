PANDOCARGS=--listings -t latex


all: docs.pdf

docs.pdf: docs.tex section-setup.tex section-cpp-from-python.tex section-boilerplate.tex section-howto.tex section-m3pi-api.tex
	pdflatex docs.tex
	pdflatex docs.tex

section-%.tex: content/%.md
	pandoc $(PANDOCARGS) $< -o $@

.PHONY: clean
clean:
	rm -f *.pdf *.log *.aux *.out section-*.tex
