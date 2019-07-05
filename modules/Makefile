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
export EMACSLOADPATH :=/home/$(USER)/.emacs.d/modules/ansi.el:$(EMACSLOADPATH)
export EMACSLOADPATH :=/home/$(USER)/.emacs.d/modules/shut-up:$(EMACSLOADPATH)

#export PATH:="/home/ppphp/.cask/bin:$(PATH)"

.PHONY: all ace-window avy commander company-mode editorconfig-emacs emacs-async emacs-eim emacs-memoize ert-runner.el flycheck ghub helm hydra libegit2 magit org-mode projectile yasnippet

## compile module codes
all: ace-window avy company-mode editorconfig-emacs emacs-async emacs-eim emacs-memoize flycheck ghub helm hydra libegit2 magit org-mode projectile yasnippet

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

flycheck:
	make compile -C flycheck

ghub:
	make -C ghub

helm:
	make -C helm

hydra:
	make compile -C hydra

libegit2:
	make -C libegit2

magit:
	make -C magit

projectile:
	make -C projectile

org-mode: 
	make -C org-mode

yasnippet:
	cd  yasnippet; rake
