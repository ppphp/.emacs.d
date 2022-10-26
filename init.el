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
(require 'init-protobuf)
(require 'init-c)
(require 'init-cpp)
(require 'init-cs)
(require 'init-cmake)
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
 '(package-selected-packages
   '(lsp-go go-playground go-impl go-tag go-gen-test go-fill-struct flycheck-golangci-lint hover flutter-l10n-flycheck flutter lsp-dart dart-server helpful which-key benchmark-init-modes yasnippet yaml-mode use-package undo-tree typescript-mode treemacs-projectile treemacs-magit terraform-mode rustic rainbow-delimiters protobuf-mode parrot page-break-lines ox-gfm org-super-agenda org-roam-ui org-pomodoro org-journal org-bullets ob-swift ob-rust ob-mermaid ob-go ob-elixir ob-async nyan-mode major-mode-hydra magit-todos lsp-ui lsp-origami jenkinsfile-mode ivy-xref ivy-rich ivy-posframe imenu-list handlebars-mode go-mode git-modes fountain-mode forge flycheck-posframe flycheck-popup-tip doom-themes doom-modeline dockerfile-mode diff-hl dashboard dart-mode dap-mode csharp-mode counsel company-prescient company-box cmake-mode benchmark-init auctex all-the-icons))
 '(warning-suppress-log-types '((lsp-mode) (comp)))
 '(warning-suppress-types '((comp))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
