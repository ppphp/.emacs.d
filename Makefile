export EMACSLOADPATH=/home/$(USER)/.emacs.d/modules/ace-window:$(EMACSLOADPATH)
export EMACSLOADPATH=/home/$(USER)/.emacs.d/modules/emacs-async:$(EMACSLOADPATH）


all:
	cd modules/org-mode;make
	#cd modules/treemacs;make
	cd modules/helm;make

cask:
	  export PATH="/home/ppphp/.cask/bin:$(PATH)"

modules:
	make


