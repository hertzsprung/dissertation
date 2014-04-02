PDFLATEX := pdflatex --shell-escape --interaction=nonstopmode
BIBER := biber
TEXCOUNT := texcount
GREP := grep
GREP_WARN := $(GREP) --color -i -f latex-warnings -C3 -H

DOCUMENT := dissertation
COMPONENTS := title.tex

.PHONY: all wc draft clean

all: $(DOCUMENT).pdf

wc:
	$(TEXCOUNT) $(DOCUMENT).tex

draft:
	@$(PDFLATEX) "\def\classopts{,draft}\def\geometryopts{,showframe}\input{$(DOCUMENT)}"

$(DOCUMENT).pdf: $(DOCUMENT).tex $(COMPONENTS) dissertation.bib
	@$(PDFLATEX) -draftmode $(DOCUMENT) # > /dev/null 2>&1
	@$(BIBER) $(DOCUMENT) | tee $(DOCUMENT).biber.log | $(GREP_WARN) --label=biber
	@$(PDFLATEX) $(DOCUMENT) | tee $(DOCUMENT).pdflatex.log | $(GREP_WARN) --label=pdflatex

clean:
	rm -rf $(DOCUMENT).pdf *.bbl *.bcf *.blg *.toc *.run.xml *.pyg *.log *.aux
