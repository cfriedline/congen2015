slides:
	rm slides.pdf
	latexmk -xelatex slides.tex
	open slides.pdf

texpad:
	rm slides.pdf
	latexmk -xelatex slides.tex

scp_notebooks:
	scp congen:~/ipython/*.ipynb .

.PHONY: slides

        
