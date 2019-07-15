;;; package --- Summary
;;; Commentary:
;;; Code:

;(defcustom ruby-mode-hook nil
;  "Hook called by `ruby-mode'."
;  :type 'hook
;  :group 'ruby)

;(define-derived-mode ruby-mode prog-mode "Ruby"
;  (lsp)
;  )

;(add-to-list 'auto-mode-alist (cons "\\.rb\\'" 'ruby-mode))

(add-hook 'ruby-mode-hook #'lsp)

(provide 'init-ruby)
;;; init-ruby.el ends here
