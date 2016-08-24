LATEX=pdflatex
DOC=CTut_IISTFOSS
all: $(DOC).pdf
$(DOC).pdf: $(DOC).tex
	$(LATEX) $^ && $(LATEX) $^
.PHONY: clean
clean:
	rm -f $(DOC).pdf
