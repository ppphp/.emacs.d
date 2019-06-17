;;; package --- Summary
;;; Commentary:
;;; Code:

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
(setq lsp-auto-guess-root t)
(setq lsp-prefer-flymake nil)
(setq lsp-enable-completion-at-point t)
(setq lsp-enable-snippet t)
(setq lsp-eldoc-render-all t)


(require 'lsp-pyls)
(add-hook 'python-mode-hook #'lsp)

(require 'lsp-go)
(add-hook 'go-mode-hook #'lsp)

(require 'lsp-rust)
(add-hook 'rust-mode-hook #'lsp)

;(require 'lsp-ruby)
;(add-hook 'ruby-mode-hook #'lsp)


(add-to-list 'load-path "~/.emacs.d/modules/lsp-ui")
(require 'lsp-ui)
(require 'lsp-ui-imenu)
(setq lsp-ui-sideline-ignore-duplicate t)
(add-hook 'lsp-mode-hook 'lsp-ui-mode)


(add-to-list 'load-path "~/.emacs.d/modules/company-lsp")
(require 'company-lsp)
(push 'company-lsp company-backends)

(provide 'init-lsp)
;;; init-lsp.el ends here
