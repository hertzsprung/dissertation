PDFLATEX := pdflatex --shell-escape --interaction=nonstopmode
BIBER := biber
TEXCOUNT := texcount

DOCUMENT := dissertation

.PHONY: all wc draft clean

all: $(DOCUMENT).pdf

wc:
	$(TEXCOUNT) $(DOCUMENT).tex

draft:
	@$(PDFLATEX) $(DOCUMENT)

$(DOCUMENT).pdf: $(DOCUMENT).tex dissertation.bib
	@$(PDFLATEX) -draftmode $(DOCUMENT) > /dev/null 2>&1
	@$(BIBER) $(DOCUMENT)
	@$(PDFLATEX) $(DOCUMENT)

clean:
	rm -rf $(DOCUMENT).pdf *.bbl *.bcf *.blg *.toc *.run.xml *.pyg *.log *.aux
