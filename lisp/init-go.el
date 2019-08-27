;;; package --- Summary
;;; Commentary:
;;; Code:

;(add
; )

;(define-derived-mode go-mode prog-mode "Go"
;  (lsp)
  ;(lsp-document-highlight)
;  )
;(add-to-list 'auto-mode-alist (cons "\\.go\\'" 'go-mode))

(require 'go-mode)

(add-hook 'go-mode-hook #'lsp)

(setq gofmt-command  (f-join user-emacs-directory "bin" "goimports"))
(add-hook 'before-save-hook 'gofmt-before-save)
(setq lsp-clients-go-server (f-join user-emacs-directory "bin" "gopls"))

(provide 'init-go)
;;; init-go.el ends here
