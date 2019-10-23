;;; package --- Summary
;;; Commentary:
;;; Code:

(require 'formatters)


(formatters-register-client
 (make-formatters-client :command "goimports" :args nil :mode 'elisp-mode)
 )

(add-hook 'elisp-mode-hook #'formatters)

(provide 'init-lisp)
;;; init-lisp.el ends here
