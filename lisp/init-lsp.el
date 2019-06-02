
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

(provide 'init-lsp)
