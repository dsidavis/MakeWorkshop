RSCRIPT=/Users/duncan/Projects/R/R-tmp/build2/bin/Rscript

paper.pdf:

%.pdf: %.tex
	pdflatex $*

paper.pdf: paper.tex fig1.png fig2.png

fig%.png: fig%.R setup.R data.rds
	$(RSCRIPT) $<


#fig1.R fig2.R:   setup.R

data.rds: mkData.R
	$(RSCRIPT) $<


distclean:
	rm data.rds fig1.png fig2.png paper.pdf paper.aux paper.log
