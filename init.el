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
;(require 'init-socks)
;(require 'init-i18n)

(require 'init-my-commands)

;; layout stuff
(require 'init-layout)
;(require 'init-term)
(require 'init-dashboard)
(require 'init-modeline)
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
<<<<<<< HEAD
(require 'init-ccpp)
(require 'init-protobuf)
=======
(require 'init-c)
(require 'init-cpp)
(require 'init-cmake)
>>>>>>> ddb0a41abf92a7930b17798af19838f946d585fc
(require 'init-ruby)
(require 'init-dart)
(require 'init-jvm)
(require 'init-tex)

;; after all
(require 'init-keymap)

(provide 'init)
;;; init.el ends here
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(inhibit-startup-screen t)
 '(lsp-completion-enable t nil nil "Customized with use-package lsp-mode")
 '(warning-suppress-types '((comp))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
