;;; package --- Summary
;;; Commentary:
;;; Code:

;; lsp-mode init

(require 'f)
(use-package lsp-mode
  :custom
  (lsp-auto-guess-root t)
  (lsp-prefer-flymake nil)
  (lsp-enable-completion-at-point t)
  (lsp-enable-snippet t)
  (lsp-eldoc-render-all t)
  (flymake-fringe-indicator-position 'right-fringe)
  (lsp-session-file (f-join user-emacs-directory "local/.lsp-session-v1"))
  :config
  (use-package lsp-modeline)
  (require 'lsp-go)

  (use-package lsp-ui
    :custom
    (lsp-ui-doc-enable t)
    (lsp-ui-doc-use-webkit nil)
    (lsp-ui-doc-include-signature t)
    (lsp-ui-doc-position 'top)
    (lsp-ui-doc-border (face-foreground 'default))
    (lsp-ui-sideline-enable nil)
    (lsp-ui-sideline-ignore-duplicate t)
    (lsp-ui-flycheck-enable t)
    :hook (lsp-mode . lsp-ui-mode)
    :config
    (use-package lsp-ui-imenu)

(eldoc-mode nil)
(global-eldoc-mode -1)

(defadvice lsp-ui-imenu (after hide-lsp-ui-imenu-mode-line activate)
  "Doc."
  (setq mode-line-format nil))
)

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

(setq dap-breakpoints-file (f-join user-emacs-directory "local/.dap-breakpoints"))
)

(provide 'init-lsp)
;;; init-lsp.el ends here
