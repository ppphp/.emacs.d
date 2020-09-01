;;; package --- Summary
;;; Commentary:
;;; Code:

;; lsp-mode init
(require 'lsp)
(require 'lsp-modeline)
(require 'lsp-go)
(setq lsp-auto-guess-root t)
(setq lsp-prefer-flymake nil)
(setq lsp-enable-completion-at-point t)
(setq lsp-enable-snippet t)
(setq lsp-eldoc-render-all t)
(setq flymake-fringe-indicator-position 'right-fringe)


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
(eldoc-mode nil)
(global-eldoc-mode -1)
(setq lsp-ui-flycheck-enable t)
(add-hook 'lsp-mode-hook 'lsp-ui-mode)

(defadvice lsp-ui-imenu (after hide-lsp-ui-imenu-mode-line activate)
  "Doc."
  (setq mode-line-format nil))

(require 'company-capf)
(push 'company-capf company-backends)

;; there is only one go language server, and it is in submodule, tweak it to be simpler
(setq lsp-clients-go-server (f-join user-emacs-directory "bin" "gopls"))
(lsp-register-client
 (make-lsp-client :new-connection (lsp-stdio-connection
                                   (lambda () lsp-clients-go-server))
                  :major-modes '(go-mode)
                  :priority 1
                  :server-id 'gopls))

(require 'lsp-origami)
(add-hook 'origami-mode-hook #'lsp-origami-mode)

(require 'dap-mode)
(require 'dap-ui)
(require 'dap-mouse)


(dap-mode 1)
(dap-ui-mode 1)
;; enables mouse hover support
(dap-tooltip-mode 1)
;; use tooltips for mouse hover
;; if it is not enabled `dap-mode' will use the minibuffer.
(tooltip-mode 1)

(provide 'init-lsp)
;;; init-lsp.el ends here
