;;; package --- Summary
;;; Commentary:
;;; Code:

;(define-derived-mode rust-mode prog-mode "Rust"
;  (lsp)
  ;(lsp-document-highlight)
;  )

;(add-to-list 'auto-mode-alist (cons "\\.rs\\'" 'rust-mode))

(use-package rustic
  :mode ("\\.rs\\'" . rustic-mode)
  :hook (rustic-mode . lsp))

(provide 'init-rust)
;;; init-rust.el ends here
