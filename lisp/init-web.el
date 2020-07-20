;;; package --- Summary
;;; Commentary:
;;; Code:
(require 'typescript-mode)
(require 'handlebars-mode)

(add-to-list 'auto-mode-alist '("\\.hbs\\'" . handlebars-mode))


(add-hook 'js-mode-hook #'lsp)
(add-hook 'typescript-mode-hook #'lsp)

(require 'formatters-prettier)

(add-hook 'js-mode-hook #'lsp-format-buffer)
(add-hook 'typescript-mode-hook #'lsp-format-buffer)

(require 'dap-firefox)
(require 'dap-chrome)
(require 'dap-node)

(provide 'init-web)
;;; init-web.el ends here
