#!/usr/bin/make -f
# SPDX-License-Identifier: LPPL-1.3c

pdflatex = pdflatex -halt-on-error $(1)
previewer = xdg-open $(1)

all: sty doc

sty: zube.sty
doc: zube.pdf
index: zube.gls

zube.sty: zube.ins zube.dtx
	latex zube.ins

zube.gls: zube.dtx zube.sty
	$(call pdflatex,zube.dtx)
	makeindex -s gglo.ist -t zube.glg -o zube.gls zube.glo

zube.pdf: zube.dtx zube.sty zube.gls fm*.pdf
	$(call pdflatex,zube.dtx)
	$(call pdflatex,zube.dtx)

zubexmpl.pdf: zubexmpl.tex zube.sty fm*.pdf
	$(call pdflatex,zubexmpl.tex)

preview: zubexmpl.pdf
	$(call previewer,zubexmpl.pdf) &
	ls -1 Makefile zube.ins zube.dtx zubexmpl.tex \
		| entr sh -c 'make sty && make zubexmpl.pdf '

doc-preview: zube.pdf
	$(call previewer,zube.pdf) &
	ls -1 Makefile zube.ins zube.dtx | entr sh -c 'make doc'

clean:
	rm -f *.aux *.glg *.glo *.gls *.idx *.log *.out
	rm -f zube.pdf zubexmpl.pdf
	rm -f zube.sty

dist: zube.tar.gz
zube.tar.gz: zube.pdf zubexmpl.pdf zube.sty zube.ins README.md LICENSE Makefile fm*.pdf
	tar cvf $@ $^

.PHONY: all sty doc index preview doc-preview clean dist
