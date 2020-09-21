;;; package --- Summary
;;; Commentary:
;;; Code:

(add-hook 'c++-mode-hook #'lsp)

(add-hook 'c++-mode-hook #'lsp-format-buffer)

(provide 'init-cpp)
;;; init-cpp.el ends here
