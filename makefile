pdf:
	latexmk -pdf setup.tex
	open setup.pdf

all: pdf
	cd slides && make
