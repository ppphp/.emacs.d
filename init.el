;;; package --- Summary
;;; Commentary:
;;; Code:
(add-to-list 'load-path "~/.emacs.d/lisp")

(require 'init-common)
(require 'init-configfile)
(require 'init-theme)
(require 'init-dashboard)
(require 'init-modeline)
(require 'init-projectile)
(require 'init-magit)
(require 'init-helm)
(require 'init-company)
(require 'init-yasnippet)
(require 'init-tabbar)
(require 'init-term)
(require 'init-org)
(require 'init-lsp)
(require 'init-flycheck)
(require 'init-makefile)
(require 'init-go)
(require 'init-rust)
(require 'init-python)
;(require 'init-ruby)
(require 'init-treemacs)
(require 'init-keymap)


;;; init.el ends here
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(inhibit-startup-screen t)
 '(org-agenda-files nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
