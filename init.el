;;; package --- Summary
;;; Commentary:
;;; Code:
(add-to-list 'load-path "~/.emacs.d/lisp")

;; basic stuff
(require 'init-deps)
(require 'init-theme)
(require 'init-common)
(require 'init-swiper)
(require 'init-projectile)
(require 'init-socks)
(require 'init-i18n)

;; layout stuff
(require 'init-layout)
(require 'init-term)
(require 'init-dashboard)
(require 'init-modeline)
(require 'init-window)
;(require 'init-tabbar)
(require 'init-treemacs)

;; repl stuff
(require 'init-configfile)
(require 'init-magit)

;; editor stuff
(require 'init-company)
(require 'init-yasnippet)
(require 'init-org)
(require 'init-lsp)
;(require 'init-evil)
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

;; after all
(require 'init-keymap)

(provide 'init)
;;; init.el ends here
