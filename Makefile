flags 	 = -shell-escape
build	 = .
compiler = latexmk \
	-pdf \
	-latexoption="--shell-escape -halt-on-error -file-line-error" \
	-bibtex \
	-time \
	-outdir=$(build)

default : all
all : 
	$(compiler) updates.tex

evince :
	evince updates.pdf & 
push :
	./autocommit
clean :
	rm -rf *.aux *.log *.nav *.snm *.toc *.out *.blg *.bbl *.bcf *.dvi *.dvi *.pdf *.xml *.fdb_latexmk *.fls
