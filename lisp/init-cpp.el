;;; package --- Summary
;;; Commentary:
;;; Code:

(add-hook 'c++-mode-hook #'lsp)

(add-hook 'c++-mode-hook (lambda () (add-hook 'before-save-hook #'lsp-format-buffer 0 t)))

(use-package ccls
  :custom
  (ccls-executable (f-join user-emacs-directory "bin" "ccls")))

(provide 'init-cpp)
;;; init-cpp.el ends here
