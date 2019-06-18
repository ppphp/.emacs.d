;;; package --- Summary
;;; Commentary:
;;; Code:
(add-to-list 'load-path "~/.emacs.d/modules/company-mode")
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
(add-to-list 'load-path "~/.emacs.d/modules/s")
(add-to-list 'load-path "~/.emacs.d/modules/f.el")
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



(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(inhibit-startup-screen t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
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

(provide 'init-common)
;;; init-common.el ends here
