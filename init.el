;;; package --- Summary
;;; Commentary:
;;; Code:
(add-to-list 'load-path "~/.emacs.d/lisp")

(require 'init-deps)
(require 'init-common)
(require 'init-configfile)
(require 'init-theme)
(require 'init-dashboard)
(require 'init-modeline)
(require 'init-projectile)
(require 'init-magit)
(require 'init-swiper)
(require 'init-company)
(require 'init-yasnippet)
(require 'init-tabbar)
(require 'init-term)
(require 'init-org)
(require 'init-lsp)
(require 'init-evil)
(require 'init-flycheck)
(require 'init-lisp)
(require 'init-makefile)
(require 'init-docker)
(require 'init-hashicorp)
(require 'init-web)
(require 'init-go)
(require 'init-rust)
(require 'init-python)
(require 'init-c)
(require 'init-cpp)
(require 'init-ruby)
(require 'init-dart)
(require 'init-treemacs)
(require 'init-keymap)
(require 'init-socks)


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
(put 'erase-buffer 'disabled nil)
