slides:
	rm slides.pdf
	latexmk -xelatex slides.tex
	open slides.pdf

texpad:
	rm slides.pdf
	latexmk -xelatex slides.tex

scp_notebooks:
	scp congen:/gdc_home5/groups/congenomics/day5/cfried/*.ipynb .

.PHONY: slides texpad scp_notebooks

        
