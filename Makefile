build	 = build
src		 = src
compiler = latexmk \
	-pdf \
	-latexoption="--shell-escape -halt-on-error -file-line-error" \
	-bibtex \
	-time \
	-outdir=$(build)

default : all
all :  
	$(compiler) $(src)/target.tex
init:
	mkdir build img src
evince :
	evince $(build)/target.pdf & 
push :
	./autocommit
clean :
	rm -rf *.aux *.log *.nav *.snm *.toc *.out *.blg *.bbl *.bcf *.dvi *.dvi *.pdf *.xml *.fdb_latexmk *.fls
