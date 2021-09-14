;;; package --- Summary
;;; Commentary:
;;; Code:

(add-hook 'c++-mode-hook #'lsp)

(add-hook 'c++-mode-hook (lambda () (add-hook 'before-save-hook #'lsp-format-buffer 0 t)))

(provide 'init-cpp)
;;; init-cpp.el ends here
