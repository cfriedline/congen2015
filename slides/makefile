PANDOC = /usr/local/bin/pandoc
TYPE = revealjs
THEME = WARSAW
IN = slides.md
COMPRESSOR = java -jar ~/Downloads/yuicompressor-2.4.8.jar

slides: reveal.js/css/reveal.min.css reveal.js/css/reveal.min.css
	$(PANDOC) -t $(TYPE) -s $(IN) -o $(IN).html -V theme:$(THEME)

reveal.js/css/reveal.min.css:
	cd reveal.js/css && \
	$(COMPRESSOR) -o reveal.min.css reveal.css
	
reveal.js/js/reveal.min.js:
	cd reveal.js/js %% \
	$(COMPRESSOR) -o reveal.min.js reveal.js
	


        
