;;; package --- Summary
;;; Commentary:
;;; Code:

(require 'f)
(use-package ccls
  :defer
  :custom
  (ccls-executable (f-join user-emacs-directory "bin" "ccls")))

(add-hook 'c-mode-hook #'lsp)

(provide 'init-c)
;;; init-c.el ends here
