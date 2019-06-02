(add-to-list 'custom-theme-load-path "~/.emacs.d/modules/themes")
(load-theme 'atom-one-dark t)

;; global projectile init
(add-to-list 'load-path "~/.emacs.d/modules/projectile")
(require 'projectile)
(projectile-mode +1)

;; global magit init
(add-to-list 'load-path "~/.emacs.d/modules/ghub")
(add-to-list 'load-path "~/.emacs.d/modules/magit-popup")
(add-to-list 'load-path "~/.emacs.d/modules/with-editor")
(add-to-list 'load-path "~/.emacs.d/modules/dash")
(add-to-list 'load-path "~/.emacs.d/modules/magit/lisp")
(require 'magit)

;; global helm init
(add-to-list 'load-path "~/.emacs.d/modules/popup-el")
(add-to-list 'load-path "~/.emacs.d/modules/emacs-async")
(add-to-list 'load-path "~/.emacs.d/modules/helm")
(require 'helm)
(require 'helm-config)
(helm-mode 1)

;; global company init
(add-to-list 'load-path "~/.emacs.d/modules/company-mode")
(require 'company)
(add-hook 'after-init-hook 'global-company-mode)
(setq company-minimum-prefix-length 1)

;; lsp-mode init
(add-to-list 'load-path "~/.emacs.d/modules/markdown-mode")
(add-to-list 'load-path "~/.emacs.d/modules/spinner.el")
(add-to-list 'load-path "~/.emacs.d/modules/ht.el")
(add-to-list 'load-path "~/.emacs.d/modules/s")
(add-to-list 'load-path "~/.emacs.d/modules/f.el")
(add-to-list 'load-path "~/.emacs.d/modules/dash")
(add-to-list 'load-path "~/.emacs.d/modules/lsp-mode")
(require 'lsp-mode)
(require 'lsp)
(require 'lsp-rust)
(require 'lsp-pyls)
(require 'lsp-go)
(add-hook 'python-mode-hook #'lsp-python-enable)
(add-hook 'go-mode-hook #'lsp-go-enable)

(add-to-list 'load-path "~/.emacs.d/modules/lsp-ui")
(require 'lsp-ui)
(require 'lsp-ui-imenu)
(setq lsp-ui-sideline-ignore-duplicate t)
(add-hook 'lsp-mode-hook 'lsp-ui-mode)


(add-to-list 'load-path "~/.emacs.d/modules/company-lsp")
(require 'company-lsp)
(push 'company-lsp company-backends)
