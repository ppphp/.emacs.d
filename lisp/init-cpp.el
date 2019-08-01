;;; package --- Summary
;;; Commentary:
;;; Code:

;(add
; )

;(define-derived-mode go-mode prog-mode "Go"  
;  (lsp-document-highlight)
;  )

;(require 'go-mode)
;(add-to-list 'auto-mode-alist (cons "\\.go\\'" 'go-mode))

;(add-hook 'go-mode-hook #'lsp)

(require 'ccls)

(setq ccls-executable (f-join user-emacs-directory "bin" "ccls"))

(provide 'init-cpp)
;;; init-cpp.el ends here
