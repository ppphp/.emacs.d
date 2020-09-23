;;; package --- Summary
;;; Commentary:
;;; Code:

;(define-derived-mode rust-mode prog-mode "Rust"
;  (lsp)
  ;(lsp-document-highlight)
;  )

;(add-to-list 'auto-mode-alist (cons "\\.rs\\'" 'rust-mode))

(use-package rust-mode)

(add-hook 'rust-mode-hook #'lsp)

(provide 'init-rust)
;;; init-rust.el ends here
