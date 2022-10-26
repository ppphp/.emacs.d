;;; package --- Summary
;;; Commentary:
;;; Code:
(use-package typescript-mode
  :mode ("\\.tsx?\\'"))

(use-package handlebars-mode
  :mode "\\.hbs\\'")

(add-hook 'js-mode-hook #'lsp)
(add-hook 'typescript-mode-hook #'lsp)

(provide 'init-web)
;;; init-web.el ends here
