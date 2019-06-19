;;; package --- Summary
;;; Commentary:
;;; Code:

;; lsp-mode init
(require 'lsp-mode)
;(require 'lsp)
(require 'lsp-clients)
(setq lsp-auto-guess-root t)
(setq lsp-prefer-flymake nil)
;(setq lsp-enable-completion-at-point t)
;(setq lsp-enable-snippet t)
;(setq lsp-eldoc-render-all t)
(setq flymake-fringe-indicator-position 'right-fringe)

(add-hook 'prog-mode-hook #'lsp)
;(require 'lsp-pyls)
(add-hook 'python-mode-hook #'lsp)

;(require 'lsp-go)
(add-hook 'go-mode-hook #'lsp)

;(require 'lsp-rust)
;(add-hook 'rust-mode-hook #'lsp)

;(require 'lsp-ruby)
;(add-hook 'ruby-mode-hook #'lsp)


(add-to-list 'load-path "~/.emacs.d/modules/lsp-ui")
(require 'lsp-ui)
(require 'lsp-ui-imenu)
;(lsp-ui-doc-background ((t (:background nil))))
(setq lsp-ui-doc-enable t
                 lsp-ui-doc-use-webkit nil
                 lsp-ui-doc-include-signature t
                 lsp-ui-doc-position 'top
                 lsp-ui-doc-border (face-foreground 'default)

                 lsp-ui-sideline-enable nil
                 lsp-ui-sideline-ignore-duplicate t)

;(setq lsp-ui-sideline-ignore-duplicate t)
;(eldoc-mode nil)
;(global-eldoc-mode -1)
(setq lsp-ui-flycheck-enable t)
(add-hook 'lsp-mode-hook 'lsp-ui-mode)

(defadvice lsp-ui-imenu (after hide-lsp-ui-imenu-mode-line activate)
  (setq mode-line-format nil))

(add-to-list 'load-path "~/.emacs.d/modules/company-lsp")
(require 'company-lsp)
(push 'company-lsp company-backends)

(provide 'init-lsp)
;;; init-lsp.el ends here
