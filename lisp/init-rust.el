;;; package --- Summary
;;; Commentary:
;;; Code:

(define-derived-mode rust-mode prog-mode "Rust"
  
  ;(lsp-document-highlight)
  )

(add-to-list 'auto-mode-alist (cons "\\.rs\\'" 'rust-mode))

;(require 'rust-mode)


(provide 'init-rust)
;;; init-rust.el ends here
