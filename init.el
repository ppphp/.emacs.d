(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")
(load-theme 'atom-one-dark t)

(add-to-list 'load-path "~/.emacs.d/projectile")
(require 'projectile)
(projectile-mode +1)

(add-to-list 'load-path "~/.emacs.d/ghub")
(add-to-list 'load-path "~/.emacs.d/magit-popup")
(add-to-list 'load-path "~/.emacs.d/with-editor")
(add-to-list 'load-path "~/.emacs.d/dash")
(add-to-list 'load-path "~/.emacs.d/magit/lisp")
(require 'magit)

(add-to-list 'load-path "~/.emacs.d/popup-el")
(add-to-list 'load-path "~/.emacs.d/emacs-async")
(add-to-list 'load-path "~/.emacs.d/helm")
(require 'helm)
(require 'helm-config)
(helm-mode 1)

(add-to-list 'load-path "~/.emacs.d/company-mode")
(require 'company)
(add-hook 'after-init-hook 'global-company-mode)
(setq company-minimum-prefix-length 1)

(add-to-list 'load-path "~/.emacs.d/markdown-mode")
(add-to-list 'load-path "~/.emacs.d/spinner.el")
(add-to-list 'load-path "~/.emacs.d/ht.el")
(add-to-list 'load-path "~/.emacs.d/s")
(add-to-list 'load-path "~/.emacs.d/f.el")
(add-to-list 'load-path "~/.emacs.d/dash")
(add-to-list 'load-path "~/.emacs.d/lsp-mode")
(require 'lsp-mode)
(lsp-register-client
 (make-lsp-client :new-connection (lsp-stdio-connection "pyls")
		  :major-modes '(python-mode)
		  :server-id 'pyls
		  )
 )

(lsp-register-client
 (make-lsp-client :new-connection (lsp-stdio-connection "gopls")
		  :major-modes '(go-mode)
		  :server-id 'gopls
		  )
 )

(add-to-list 'load-path "~/.emacs.d/lsp-ui")
(require 'lsp-ui)

(add-to-list 'load-path "~/.emacs.d/company-lsp")
(require 'company-lsp)
(push 'company-lsp company-backends)
