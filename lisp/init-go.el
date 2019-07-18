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

(setq gofmt-command "goimports")
(add-hook 'before-save-hook 'gofmt-before-save)


(provide 'init-go)
;;; init-go.el ends here
