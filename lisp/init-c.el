;;; package --- Summary
;;; Commentary:
;;; Code:

;(add
; )

;(define-derived-mode c-mode prog-mode "C"  
;  
;  )

;(require 'go-mode)
;(add-to-list 'auto-mode-alist (cons "\\.c\\'" 'c-mode))

(add-hook 'c-mode-hook #'lsp)

(provide 'init-c)
;;; init-c.el ends here
