;;; package --- Summary
;;; Commentary:
;;; Code:
(add-to-list 'load-path "~/.emacs.d/modules/company-mode")
(add-to-list 'load-path "~/.emacs.d/modules/company-box")
(add-to-list 'load-path "~/.emacs.d/modules/prescient.el")
(add-to-list 'load-path "~/.emacs.d/modules/yaml-mode")
(add-to-list 'load-path "~/.emacs.d/modules/emacs-memoize")
(add-to-list 'load-path "~/.emacs.d/modules/all-the-icons.el")
(add-to-list 'load-path "~/.emacs.d/modules/pages-break-lines")
(add-to-list 'load-path "~/.emacs.d/modules/emacs-dashboard")
(add-to-list 'load-path "~/.emacs.d/modules/flycheck")
(add-to-list 'load-path "~/.emacs.d/modules/go-mode.el")
(add-to-list 'load-path "~/.emacs.d/modules/popup-el")
(add-to-list 'load-path "~/.emacs.d/modules/emacs-async")
(add-to-list 'load-path "~/.emacs.d/modules/helm")
(add-to-list 'load-path "~/.emacs.d/modules/markdown-mode")
(add-to-list 'load-path "~/.emacs.d/modules/spinner.el")
(add-to-list 'load-path "~/.emacs.d/modules/ht.el")
(add-to-list 'load-path "~/.emacs.d/modules/s.el")
(add-to-list 'load-path "~/.emacs.d/modules/f.el")
(add-to-list 'load-path "~/.emacs.d/modules/dash.el")
(add-to-list 'load-path "~/.emacs.d/modules/lsp-mode")
(add-to-list 'load-path "~/.emacs.d/modules/lsp-ui")
(add-to-list 'load-path "~/.emacs.d/modules/company-lsp")
(add-to-list 'load-path "~/.emacs.d/modules/dash")
(add-to-list 'load-path "~/.emacs.d/modules/lsp-mode")
(add-to-list 'load-path "~/.emacs.d/modules/ghub")
(add-to-list 'load-path "~/.emacs.d/modules/magit-popup")
(add-to-list 'load-path "~/.emacs.d/modules/with-editor")
(add-to-list 'load-path "~/.emacs.d/modules/dash")
(add-to-list 'load-path "~/.emacs.d/modules/transient/lisp")
(add-to-list 'load-path "~/.emacs.d/modules/magit/lisp")
(add-to-list 'load-path "~/.emacs.d/modules/org-mode/lisp")
(add-to-list 'load-path "~/.emacs.d/modules/projectile")
(add-to-list 'load-path "~/.emacs.d/modules/hydra")
(add-to-list 'load-path "~/.emacs.d/modules/pfuture")
(add-to-list 'load-path "~/.emacs.d/modules/avy")
(add-to-list 'load-path "~/.emacs.d/modules/ace-window")
(add-to-list 'load-path "~/.emacs.d/modules/treemacs/src/elisp")
(add-to-list 'load-path "~/.emacs.d/modules/treemacs/src/extra")
(add-to-list 'load-path "~/.emacs.d/modules/yasnippet")
(add-to-list 'load-path "~/.emacs.d/modules/rust-mode")
(add-to-list 'load-path "~/.emacs.d/modules/shrink-path")
(add-to-list 'load-path "~/.emacs.d/modules/doom-modeline")
(add-to-list 'load-path "~/.emacs.d/modules/nyan-mode")
(add-to-list 'load-path "~/.emacs.d/modules/rainbow-delimiters")
(add-to-list 'load-path "~/.emacs.d/modules/editorconfig-emacs")
(add-to-list 'load-path "~/.emacs.d/modules/multi-term")
(add-to-list 'load-path "~/.emacs.d/modules/tabbar")
(add-to-list 'load-path "~/.emacs.d/modules/treepy.el")


(prefer-coding-system 'utf-8)
(set-default-coding-systems 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(custom-set-variables
 '(inhibit-startup-screen t))
(custom-set-faces
 )
(setq debug-on-error t)
(scroll-bar-mode -1)
(tool-bar-mode -1)
(menu-bar-mode -1)

(require 'savehist)
 (setq enable-recursive-minibuffers t
              history-length 1000
              savehist-additional-variables '(mark-ring
                                              global-mark-ring
                                              search-ring
                                              regexp-search-ring
                                              extended-command-history)
              savehist-autosave-interval 300)
(setq frame-title-format '("Emacs - %b")
      icon-title-format frame-title-format)

(setq auto-save-default nil)
(prefer-coding-system 'utf-8)
(setq delete-by-moving-to-trash t)
(setq-default major-mode 'text-mode)
(setq sentence-end "\\([。！？]\\|……\\|[.?!][]\"')}]*\\($\\|[ \t]\\)\\)[ \t\n]*")
(setq sentence-end-double-space nil)
;(global-key-binding "<C-return>" rectangle-mark-mode)
;(require 'multiple-cursors)

(require 'hl-line)
(global-hl-line-mode t)
(require 'rainbow-delimiters)
(rainbow-delimiters-mode t)

(require 'editorconfig)
(editorconfig-mode 1)
(if (display-graphic-p)
    (progn
      (setq initial-frame-alist
            '(
              (width . 144) ; chars
              (height . 60) ; lines
	      ))
      (setq default-frame-alist
            '(
              (width . 144)
              (height . 60)))
  ))
(provide 'init-common)
;;; init-common.el ends here
