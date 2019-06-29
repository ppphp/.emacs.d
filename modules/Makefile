export EMACSLOADPATH :=/home/$(USER)/.emacs.d/modules/ace-window:$(EMACSLOADPATH)
export EMACSLOADPATH :=/home/$(USER)/.emacs.d/modules/emacs-async:$(EMACSLOADPATH)
export EMACSLOADPATH :=/home/$(USER)/.emacs.d/modules/all-the-icons.el:$(EMACSLOADPATH)
export EMACSLOADPATH :=/home/$(USER)/.emacs.d/modules/avy:$(EMACSLOADPATH)
export EMACSLOADPATH :=/home/$(USER)/.emacs.d/modules/dash.el:$(EMACSLOADPATH)
export EMACSLOADPATH :=/home/$(USER)/.emacs.d/modules/emacs-dashboard:$(EMACSLOADPATH)
export EMACSLOADPATH :=/home/$(USER)/.emacs.d/modules/emacs-eim:$(EMACSLOADPATH)
export EMACSLOADPATH :=/home/$(USER)/.emacs.d/modules/emacs-memoize:$(EMACSLOADPATH)
export EMACSLOADPATH :=/home/$(USER)/.emacs.d/modules/f.el:$(EMACSLOADPATH)
export EMACSLOADPATH :=/home/$(USER)/.emacs.d/modules/flycheck:$(EMACSLOADPATH)
export EMACSLOADPATH :=/home/$(USER)/.emacs.d/modules/ghub:$(EMACSLOADPATH)
export EMACSLOADPATH :=/home/$(USER)/.emacs.d/modules/helm:$(EMACSLOADPATH)
export EMACSLOADPATH :=/home/$(USER)/.emacs.d/modules/ht.el:$(EMACSLOADPATH)
export EMACSLOADPATH :=/home/$(USER)/.emacs.d/modules/hydra:$(EMACSLOADPATH)
export EMACSLOADPATH :=/home/$(USER)/.emacs.d/modules/lsp-mode:$(EMACSLOADPATH)
export EMACSLOADPATH :=/home/$(USER)/.emacs.d/modules/lsp-ui:$(EMACSLOADPATH)
export EMACSLOADPATH :=/home/$(USER)/.emacs.d/modules/magit/lisp:$(EMACSLOADPATH)
export EMACSLOADPATH :=/home/$(USER)/.emacs.d/modules/pages-break-lines:$(EMACSLOADPATH)
export EMACSLOADPATH :=/home/$(USER)/.emacs.d/modules/pfuture:$(EMACSLOADPATH)
export EMACSLOADPATH :=/home/$(USER)/.emacs.d/modules/popup-el:$(EMACSLOADPATH)
export EMACSLOADPATH :=/home/$(USER)/.emacs.d/modules/prescient.el:$(EMACSLOADPATH)
export EMACSLOADPATH :=/home/$(USER)/.emacs.d/modules/s.el:$(EMACSLOADPATH)
export EMACSLOADPATH :=/home/$(USER)/.emacs.d/modules/shrink-path:$(EMACSLOADPATH)
export EMACSLOADPATH :=/home/$(USER)/.emacs.d/modules/spinner.el:$(EMACSLOADPATH)
export EMACSLOADPATH :=/home/$(USER)/.emacs.d/modules/transient:$(EMACSLOADPATH)
export EMACSLOADPATH :=/home/$(USER)/.emacs.d/modules/treemacs:$(EMACSLOADPATH)
export EMACSLOADPATH :=/home/$(USER)/.emacs.d/modules/treepy.el:$(EMACSLOADPATH)
export EMACSLOADPATH :=/home/$(USER)/.emacs.d/modules/with-editor:$(EMACSLOADPATH)
export EMACSLOADPATH :=/home/$(USER)/.emacs.d/modules/yasnippet:$(EMACSLOADPATH)
export EMACSLOADPATH :=/home/$(USER)/.emacs.d/modules/emacs-htmlize:$(EMACSLOADPATH)
export EMACSLOADPATH :=/home/$(USER)/.emacs.d/modules/ert-runner.el:$(EMACSLOADPATH)
export EMACSLOADPATH :=/home/$(USER)/.emacs.d/modules/commander:$(EMACSLOADPATH)
export EMACSLOADPATH :=/home/$(USER)/.emacs.d/modules/markdown-mode:$(EMACSLOADPATH)
export EMACSLOADPATH :=/home/$(USER)/.emacs.d/modules/libegit2:$(EMACSLOADPATH)

#export PATH:="/home/ppphp/.cask/bin:$(PATH)"

.PHONY: all org-mode helm ace-window avy commander company-mode editorconfig-emacs emacs-async emacs-eim emacs-memoize ert-runner.el f.el flycheck ghub ht.el hydra libegit2 lsp-mode lsp-ui magit yasnippet

## compile module codes
all: org-mode helm ace-window avy company-mode editorconfig-emacs emacs-async emacs-eim emacs-memoize f.el

ace-window:
	make compile -C ace-window

avy:
	make -C avy

commander:
	make compile -C commander

company-mode:
	make compile -C company-mode

editorconfig-emacs:
	make -C editorconfig-emacs

emacs-async:
	make -C emacs-async

emacs-eim:
	make -C emacs-eim

emacs-memoize:
	make -C emacs-memoize

ert-runner.el:
	make compile -C ert-runner.el

f.el:
	make compile -C f.el

flycheck:
	make compile -C flycheck

ghub:
	make -C ghub

helm:
	make -C helm

ht.el:
	make -C ht.el

hydra:
	make compile -C hydra

libegit2:
	make -C libegit2

lsp-mode:
	make -C lsp-mode

lsp-ui:
	make -C lsp-ui

magit:
	make -C magit

org-mode: 
	make -C org-mode

yasnippet:
	cd  yasnippet; rake
