
all:
	cd modules/org-mode;make
	cd modules/helm;EMACSLOADPATH="`pwd`/../emacs-async" make


