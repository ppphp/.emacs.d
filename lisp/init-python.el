;;; package --- Summary
;;; Commentary:
;;; Code:

(defcustom python-mode-hook nil
  "Hook called by `python-mode'."
  :type 'hook
  :group 'python)

(define-derived-mode python-mode prog-mode "Python"
  (lsp)
  )

(add-to-list 'auto-mode-alist (cons "\\.py\\'" 'python-mode))

(provide 'init-python)
;;; init-python.el ends here
