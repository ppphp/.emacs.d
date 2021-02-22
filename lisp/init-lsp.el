;;; package --- Summary
;;; Commentary:
;;; Code:

;; lsp-mode init

(require 'f)
(use-package lsp-mode
  :commands (lsp)
  :defer
  :custom
  (lsp-auto-guess-root t)
  (lsp-prefer-flymake nil)
  (lsp-enable-completion-at-point t)
  (lsp-enable-snippet t)
  (lsp-eldoc-render-all t)
  (flymake-fringe-indicator-position 'right-fringe)
  (lsp-session-file (f-join user-emacs-directory "local/.lsp-session-v1"))
  (lsp-log-io t)
  :config
  (use-package lsp-modeline)
  (use-package lsp-headerline)

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
    (global-eldoc-mode -1))
  (use-package lsp-origami
    :hook
    (origami-mode . lsp-origami-mode))

  (use-package dap-mode
    :custom
    (dap-breakpoints-file (f-join user-emacs-directory "local/.dap-breakpoints"))
    (dap-print-io t)
    :defer
    :config
    (dap-mode 1)
    (use-package dap-ui
      :config
      (dap-ui-mode 1))
    (use-package dap-mouse)
    ;; enables mouse hover support
    (dap-tooltip-mode 1))

  ;; use tooltips for mouse hover
  ;; if it is not enabled `dap-mode' will use the minibuffer.
  (tooltip-mode 1))

(provide 'init-lsp)
;;; init-lsp.el ends here
