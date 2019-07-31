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

.PHONY: all modules cask deps

all: cask modules

modules:
	git submodule update --init --recursive
	make -C modules

cask:
ifeq (,$(shell command -v cask 2> /dev/null))
	curl -fsSL https://raw.githubusercontent.com/cask/cask/master/go | python
endif

deps:
	make -C deps

