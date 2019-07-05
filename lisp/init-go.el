;;; package --- Summary
;;; Commentary:
;;; Code:


;;; font lock copy from go-mode

(define-derived-mode go-mode prog-mode "Go"
  
  ;(lsp-document-highlight)
  )

;(require 'go-mode)
(add-to-list 'auto-mode-alist (cons "\\.go\\'" 'go-mode))

(add-hook 'go-mode-hook #'lsp)


(provide 'init-go)
;;; init-go.el ends here
