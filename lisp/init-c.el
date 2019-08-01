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

(require 'ccls)

(setq ccls-executable (f-join user-emacs-directory "bin" "ccls"))

(provide 'init-c)
;;; init-c.el ends here
