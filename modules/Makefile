export EMACSLOADPATH :=/home/$(USER)/.emacs.d/modules/ace-window:$(EMACSLOADPATH)
export EMACSLOADPATH :=/home/$(USER)/.emacs.d/modules/emacs-async:$(EMACSLOADPATH)
export EMACSLOADPATH :=/home/$(USER)/.emacs.d/modules/all-the-icons.el:$(EMACSLOADPATH)
export EMACSLOADPATH :=/home/$(USER)/.emacs.d/modules/avy:$(EMACSLOADPATH)
export EMACSLOADPATH :=/home/$(USER)/.emacs.d/modules/company-mode:$(EMACSLOADPATH)
export EMACSLOADPATH :=/home/$(USER)/.emacs.d/modules/company-box:$(EMACSLOADPATH)
export EMACSLOADPATH :=/home/$(USER)/.emacs.d/modules/dash.el:$(EMACSLOADPATH)
export EMACSLOADPATH :=/home/$(USER)/.emacs.d/modules/doom-modeline:$(EMACSLOADPATH)
export EMACSLOADPATH :=/home/$(USER)/.emacs.d/modules/emacs-ccls:$(EMACSLOADPATH)
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

.PHONY: all ace-window all-the-icons ansi avy commander company-box company-lsp company-mode doom-modeline editorconfig-emacs emacs-async emacs-ccls emacs-eim emacs-memoize ert-runner.el flycheck ghub helm hydra lsp-mode lsp-ui libegit2 magit org-mode projectile transient yasnippet

## compile module codes
all: avy all-the-icons ansi ace-window company-box company-lsp company-mode doom-modeline editorconfig-emacs emacs-async emacs-ccls flycheck helm lsp-mode lsp-ui magit org-mode projectile transient # emacs-eim emacs-memoize ghub helm hydra libegit2 yasnippet

ace-window:
	make compile -C ace-window

all-the-icons:
	cd all-the-icons.el && emacs -Q -batch -f batch-byte-compile *.el

ansi:
	cd ansi.el && emacs -Q -batch -f batch-byte-compile *.el

avy:
	make compile -C avy

commander:
	cd commander && emacs -Q -batch -f batch-byte-compile commander.el

company-box:
	cd company-box && emacs -Q -batch -f batch-byte-compile *.el

company-lsp:
	cd company-lsp && emacs -Q -batch -f batch-byte-compile *.el

company-mode:
	make compile -C company-mode

doom-modeline:
	cd doom-modeline && emacs -Q -batch -f batch-byte-compile *.el

editorconfig-emacs:
	make -C editorconfig-emacs

emacs-async:
	make -C emacs-async

emacs-ccls:
	cd emacs-ccls && emacs -Q -batch -f batch-byte-compile *.el

emacs-eim:
	make -C emacs-eim

emacs-memoize:
	make -C emacs-memoize

ert-runner.el:
	make compile -C ert-runner.el

flycheck:
	cd flycheck && emacs -Q -batch -f batch-byte-compile *.el

ghub:
	make -C ghub

helm:
	make -C helm

hydra:
	make compile -C hydra

libegit2:
	make -C libegit2

lsp-mode:
	cd lsp-mode && emacs -Q -batch -f batch-byte-compile *.el

lsp-ui:
	cd lsp-ui && emacs -Q -batch -f batch-byte-compile *.el

magit:
	LIBGIT_DIR=libegit2/build/libgit2 make -C magit

projectile:
	cd projectile && emacs -Q --batch -f batch-byte-compile *.el

org-mode: 
	make -C org-mode

transient:
	make -C transient

yasnippet:
	cd  yasnippet; rake
