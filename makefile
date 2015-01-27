setup:
	latexmk -pdf setup.tex
	open setup.pdf

all: setup slides

slides:
	cd slides && make

.PHONY: setup all slides