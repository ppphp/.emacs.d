;;; package --- Summary
;;; Commentary:
;;; Code:

;(defcustom go-mode-hook nil
;  "Hook called by `go-mode'."
;  :type 'hook
;  :group 'go)

;(define-derived-mode go-mode prog-mode "Go"
;  )

(add-to-list 'load-path "~/.emacs.d/modules/go-mode.el")
(require 'go-mode)
;(add-to-list 'auto-mode-alist (cons "\\.go\\'" 'go-mode))

(provide 'init-go)
;;; init-go.el ends here
