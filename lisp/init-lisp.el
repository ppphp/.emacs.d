;;; package --- Summary
;;; Commentary:
;;; Code:

;(require 'formatters)
;(formatters-register-client
; (make-formatters-client :command "goimports" :args nil :mode 'elisp-mode)
; )
;(add-hook 'elisp-mode-hook #'formatters)

(require 'rainbow-delimiters)
(add-hook 'elisp-mode-hook #'rainbow-delimiters-mode)

(provide 'init-lisp)
;;; init-lisp.el ends here
