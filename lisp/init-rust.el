;;; package --- Summary
;;; Commentary:
;;; Code:

;(defcustom rust-mode-hook nil
;  "Hook called by `rust-mode'."
;  :type 'hook
;  :group 'rust)

;(define-derived-mode rust-mode prog-mode "Rust"
;  )

;(add-to-list 'auto-mode-alist (cons "\\.rs\\'" 'rust-mode))

(add-to-list 'load-path "~/.emacs.d/modules/rust-mode")
(require 'rust-mode)


(provide 'init-rust)
;;; init-rust.el ends here
