;;; package --- Summary
;;; Commentary:
;;; Code:

;;(use-package ccls
;;  :custom
;;  (ccls-executable (f-join user-emacs-directory "bin" "ccls")))

(use-package csharp-mode
  :mode "\\.cs\\'"
  :config
  (use-package lsp-csharp))

(provide 'init-cs)
;;; init-cs.el ends here
