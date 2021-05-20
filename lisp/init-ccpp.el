;;; package --- Summary
;;; Commentary:
;;; Code:

(add-hook 'c++-mode-hook #'lsp)
(add-hook 'c-mode-hook #'lsp)

(add-hook 'c++-mode-hook #'lsp-format-buffer)
(add-hook 'c-mode-hook #'lsp-format-buffer)

(use-package cmake-mode)
(add-hook 'cmake-mode-hook #'lsp)
(add-hook 'cmake-mode-hook #'lsp-format-buffer)

(provide 'init-ccpp)
;;; init-ccpp.el ends here
