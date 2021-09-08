;;; package --- Summary
;;; Commentary:
;;; Code:

(add-hook 'c++-mode-hook #'lsp)

(add-hook 'go-mode-hook (lambda () (add-hook 'before-save-hook #'lsp-format-buffer)))

(provide 'init-cpp)
;;; init-cpp.el ends here
