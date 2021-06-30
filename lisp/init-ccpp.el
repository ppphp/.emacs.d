;;; package --- Summary
;;; Commentary:
;;; Code:

(add-hook 'c++-mode-hook #'lsp)
(add-hook 'c-mode-hook #'lsp)

(add-hook 'c++-mode-hook (lambda () (add-hook 'before-save-hook #'lsp-format-buffer)) nil t)
(add-hook 'c-mode-hook (lambda () (add-hook 'before-save-hook #'lsp-format-buffer)) nil t)

(use-package cmake-mode)
(add-hook 'cmake-mode-hook #'lsp)
(add-hook 'cmake-mode-hook #'lsp-format-buffer)

(provide 'init-ccpp)
;;; init-ccpp.el ends here
