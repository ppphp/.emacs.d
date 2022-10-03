
export EMACSLOADPATH := $(shell printf "%s\n" $(HOME)/.emacs.d/modules/*/ | tr "\n" ":")
export EMACSLOADPATH :=$(HOME)/.emacs.d/modules/magit/lisp:$(EMACSLOADPATH)
export EMACSLOADPATH :=$(HOME)/.emacs.d/modules/treemacs/src/elisp:$(EMACSLOADPATH)
export EMACSLOADPATH :=$(HOME)/.emacs.d/modules/lsp-mode/clients:$(EMACSLOADPATH)

.PHONY: all ace-window alert all-the-icons-dired all-the-icons.el all-the-icons-ivy-rich ansi auctex avy benchmark-init-el bui.el cider closql commander company-box company-mode dap-mode dart-mode dart-server dash doom-modeline editorconfig-emacs emacs-async emacs-ccls emacs-dashboard emacs-eim emacs-memoize emacs-purpose f flycheck ghub go-mode hydra imenu-list libegit2 lsp-dart lsp-mode lsp-ui magit markdown-mode multi-term nyan-mode org-journal org-mode perspective posframe projectile rustic s swiper transient yasnippet undo-tree


## compile module codes
all: build

build: ace-window alert all-the-icons-dired all-the-icons.el all-the-icons-ivy-rich ansi avy benchmark-init-el bui.el closql company-box company-mode dap-mode dart-mode dart-server dash doom-modeline editorconfig-emacs emacs-async emacs-ccls emacs-dashboard emacs-eim emacs-memoize emacs-purpose f flycheck ghub go-mode hydra imenu-list libegit2 lsp-dart lsp-mode lsp-ui magit markdown-mode multi-term nyan-mode org-journal org-mode perspective posframe projectile rustic s swiper transient yasnippet undo-tree

clean:
	-find . -name *.elc|xargs rm

ace-window:
	make compile -C ace-window

alert:
	cd alert && emacs -Q -batch -f batch-byte-compile *.el

all-the-icons-dired:
	cd all-the-icons-dired && emacs -Q -batch -f batch-byte-compile *.el

all-the-iconsi.el:
	cd all-the-icons.el && emacs -Q -batch -f batch-byte-compile *.el

all-the-icons-ivy-rich:
	cd all-the-icons-ivy-rich && emacs -Q -batch -f batch-byte-compile *.el

ansi:
	cd ansi.el && emacs -Q -batch -f batch-byte-compile *.el

auctex:
	cd auctex && ./autogen.sh && ./configure --with-emacs --without-texmf-dir && make

avy:
	make compile -C avy

benchmark-init-el:
	make -C benchmark-init-el

bui.el:
	cd bui.el && emacs -Q -batch -f batch-byte-compile *.el

cider:
	cd cider && emacs -Q -batch -f batch-byte-compile *.el

closql:
	make -C closql

commander:
	cd commander && emacs -Q -batch -f batch-byte-compile commander.el

company-box:
	cd company-box && emacs -Q -batch -f batch-byte-compile *.el

company-mode:
	make compile -C company-mode

dap-mode:
	cd dap-mode && emacs -Q -batch -f batch-byte-compile *.el

dash:
	cd dash.el && emacs -Q -batch -f batch-byte-compile *.el

dart-mode:
	cd dart-mode && emacs -Q -batch -f batch-byte-compile *.el

dart-server:
	cd dart-server && emacs -Q -batch -f batch-byte-compile *.el

doom-modeline:
	cd doom-modeline && emacs -Q -batch -f batch-byte-compile *.el

editorconfig-emacs:
	make -C editorconfig-emacs compile

emacs-async:
	make -C emacs-async

emacs-ccls:
	cd emacs-ccls && emacs -Q -batch -f batch-byte-compile *.el

emacs-dashboard:
	cd emacs-dashboard && emacs -Q -batch -f batch-byte-compile *.el

emacs-eim:
	make -C emacs-eim

emacs-memoize:
	make -C emacs-memoize

emacs-purpose: 
	cd emacs-purpose && emacs -Q --batch -f batch-byte-compile *.el

ert-runner.el:
	make compile -C ert-runner.el

f:
	cd f.el && emacs -Q --batch -f batch-byte-compile *.el

flycheck:
	cd flycheck && emacs -Q -batch -f batch-byte-compile *.el

ghub:
	make -C ghub lisp

go-mode:
	cd go-mode.el && emacs -Q -batch -f batch-byte-compile *.el

imenu-list:
	cd imenu-list && emacs -Q -batch -f batch-byte-compile *.el

hydra:
	make compile -C hydra

libegit2:
	make -C libegit2

lsp-dart:
	cd lsp-dart && emacs -Q -batch -f batch-byte-compile *.el

lsp-mode:
	cd lsp-mode && emacs -Q -batch -f batch-byte-compile *.el

lsp-ui:
	cd lsp-ui && emacs -Q -batch -f batch-byte-compile *.el

magit:
	BUILD_MAGIT_LIBGIT=false make -C magit lisp # LIBGIT_DIR=libegit2/build/libgit2 make -C magit

markdown-mode:
	make -C markdown-mode

multi-term:
	cd multi-term && emacs -Q --batch -f batch-byte-compile *.el

nyan-mode:
	cd nyan-mode && emacs -Q --batch -f batch-byte-compile *.el

posframe:
	cd posframe && emacs -Q --batch -f batch-byte-compile *.el

projectile:
	cd projectile && emacs -Q --batch -f batch-byte-compile *.el

s:
	cd s.el && emacs -Q --batch -f batch-byte-compile *.el

swiper:
	cd swiper && emacs -Q --batch -f batch-byte-compile *.el

org-journal:
	cd org-journal && emacs -Q --batch -f batch-byte-compile *.el

org-mode: 
	make -C org-mode

org-super-agenda:
	cd org-super-agenda && emacs -Q --batch -f batch-byte-compile *.el

perspective: 
	cd perspective-el && emacs -Q --batch -f batch-byte-compile *.el

rustic:
	cd rustic && emacs -Q -batch -f batch-byte-compile *.el

transient:
	make lisp -C transient

yasnippet:
	cd  yasnippet; rake compile_all

undo-tree:
	cd undo-tree && emacs -Q -batch -f batch-byte-compile *.el
