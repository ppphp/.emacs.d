;;; package --- Summary
;;; Commentary:
;;; Code:

(require 'ccls)

(setq ccls-executable (f-join user-emacs-directory "bin" "ccls"))

(add-hook 'c-mode-hook #'lsp)

(require 'formatters)

(formatters-register-client
 (make-formatters-client :command "clang-format" :args '("-i" "${file}") :mode 'c-mode)
 )

(add-hook 'c-mode-hook #'formatters)

(provide 'init-c)
;;; init-c.el ends here
