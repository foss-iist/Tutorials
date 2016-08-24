LATEX=pdflatex
DOC=BashTut_IISTFOSS
all: $(DOC).pdf
$(DOC).pdf: $(DOC).tex
	$(LATEX) $(DOC) && $(LATEX) $(DOC)
.PHONY: clean
clean:
	rm -f $(DOC).pdf
