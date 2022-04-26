ALL_FIGURE_NAMES=$(shell cat talk.figlist)
ALL_FIGURES=$(ALL_FIGURE_NAMES:%=%.pdf)

allimages: $(ALL_FIGURES)
	@echo All images exist now. Use make -B to re-generate them.

FORCEREMAKE:

include $(ALL_FIGURE_NAMES:%=%.dep)

%.dep:
	mkdir -p "$(dir $@)"
	touch "$@" # will be filled later.

figures/external/talk-figure0.pdf: 
	pdflatex -halt-on-error -interaction=batchmode -jobname "figures/external/talk-figure0" "\def\tikzexternalrealjob{talk}\input{talk}"

figures/external/talk-figure0.pdf: figures/external/talk-figure0.md5
figures/external/talk-figure1.pdf: 
	pdflatex -halt-on-error -interaction=batchmode -jobname "figures/external/talk-figure1" "\def\tikzexternalrealjob{talk}\input{talk}"

figures/external/talk-figure1.pdf: figures/external/talk-figure1.md5
figures/external/talk-figure2.pdf: 
	pdflatex -halt-on-error -interaction=batchmode -jobname "figures/external/talk-figure2" "\def\tikzexternalrealjob{talk}\input{talk}"

figures/external/talk-figure2.pdf: figures/external/talk-figure2.md5
figures/external/talk-figure3.pdf: 
	pdflatex -halt-on-error -interaction=batchmode -jobname "figures/external/talk-figure3" "\def\tikzexternalrealjob{talk}\input{talk}"

figures/external/talk-figure3.pdf: figures/external/talk-figure3.md5
