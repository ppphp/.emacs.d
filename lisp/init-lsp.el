;;; package --- Summary
;;; Commentary:
;;; Code:

;; lsp-mode init
(require 'lsp-mode)
(require 'lsp-clients)
(require 'lsp-go)
(setq lsp-auto-guess-root t)
(setq lsp-prefer-flymake nil)
(setq lsp-enable-completion-at-point t)
;(setq lsp-enable-snippet t)
;(setq lsp-eldoc-render-all t)
(setq flymake-fringe-indicator-position 'right-fringe)

;(add-hook 'prog-mode-hook 'lsp)
;(add-hook 'go-mode-hook #'lsp)
;(add-hook 'rust-mode-hook #'lsp)


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

(setq lsp-ui-sideline-ignore-duplicate t)
;(eldoc-mode nil)
;(global-eldoc-mode -1)
(setq lsp-ui-flycheck-enable t)
(add-hook 'lsp-mode-hook 'lsp-ui-mode)

(defadvice lsp-ui-imenu (after hide-lsp-ui-imenu-mode-line activate)
  (setq mode-line-format nil))

(require 'company-lsp)
(push 'company-lsp company-backends)

(provide 'init-lsp)
;;; init-lsp.el ends here
