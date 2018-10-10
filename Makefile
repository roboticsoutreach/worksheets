PANDOCARGS=--listings -t latex
all: m3pi-python.pdf m3pi-none.pdf

m3pi-python.pdf: m3pi-python.tex section-setup.tex section-cpp-from-python.tex section-boilerplate.tex section-howto.tex section-m3pi-api.tex
	pdflatex $<
	pdflatex $<

m3pi-none.pdf: m3pi-none.tex section-setup.tex section-cpp-from-scratch.tex section-boilerplate.tex section-howto.tex section-m3pi-api.tex
	pdflatex $<
	pdflatex $<

section-%.tex: content/%.md
	pandoc $(PANDOCARGS) $< -o $@

.PHONY: clean
clean:
	rm -f $$(cat .gitignore)
