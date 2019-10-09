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

;;(setq gofmt-command  (f-join user-emacs-directory "bin" "goimports"))
;;(add-hook 'before-save-hook 'gofmt-before-save)

(require 'formatters)

(formatters-register-client
 (make-formatters-client :command "goimports" :args nil :mode 'go-mode)
 )

(provide 'init-go)
;;; init-go.el ends here
