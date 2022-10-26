;;; package --- Summary
;;; Commentary:
;;; Code:

;; lsp-mode init

(use-package lsp-mode
;;  :commands (lsp)
  :custom
  (lsp-auto-guess-root nil)
  (lsp-prefer-flymake nil)
  (lsp-enable-completion-at-point t)
  (lsp-enable-snippet t)
  (lsp-eldoc-render-all t)
  (flymake-fringe-indicator-position 'right-fringe)
  (lsp-session-file (f-join user-emacs-directory "local/.lsp-session-v1"))
  (lsp-log-io nil)
  (lsp-clients-go-server (f-join user-emacs-directory "bin" "gopls"))
  :config

  (use-package lsp-ui
    :custom
    (lsp-ui-doc-enable t)
    (lsp-ui-doc-use-webkit nil)
    (lsp-ui-doc-include-signature t)
    (lsp-ui-doc-position 'top)
    (lsp-ui-doc-border (face-foreground 'default))
    (lsp-ui-sideline-enable nil)
    (lsp-ui-sideline-ignore-duplicate t)
    (lsp-ui-flycheck t)
    (lsp-ui-peek--show t)
    (lsp-ui-sideline-show-diagnostics t)
    (lsp-ui-sideline-show-hover t)
    (lsp-ui-sideline-show-code-actions t)
    :hook (lsp-mode . lsp-ui-mode)
    :bind (:map lsp-ui-mode-map (([remap xref-find-definitions] . lsp-ui-peek-find-definitions)
           ([remap xref-find-references] . lsp-ui-peek-find-references)))
    :config
    (eldoc-mode nil)
    (global-eldoc-mode -1))
  (use-package lsp-origami
    :hook
    (origami-mode . lsp-origami-mode))

  (use-package dap-mode
    :custom
    (dap-breakpoints-file (f-join user-emacs-directory "local/.dap-breakpoints"))
    (dap-print-io t)
    :config
    (dap-mode 1)
    (dap-ui-mode 1)
    ;; enables mouse hover support
    (dap-tooltip-mode 1))

  ;; use tooltips for mouse hover
  ;; if it is not enabled `dap-mode' will use the minibuffer.
  (tooltip-mode 1))

(provide 'init-lsp)
;;; init-lsp.el ends here
