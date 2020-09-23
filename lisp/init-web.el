;;; package --- Summary
;;; Commentary:
;;; Code:
(use-package typescript-mode)
(use-package handlebars-mode
  :mode "\\.hbs\\'")

(add-hook 'js-mode-hook #'lsp)
(add-hook 'typescript-mode-hook #'lsp)

(require 'formatters-prettier)

(add-hook 'js-mode-hook #'lsp-format-buffer)
(add-hook 'typescript-mode-hook #'lsp-format-buffer)

(use-package dap-firefox)
(use-package dap-chrome)
(use-package dap-node)

(provide 'init-web)
;;; init-web.el ends here
