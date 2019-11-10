;;; package --- Summary
;;; Commentary:
;;; Code:

(require 'go-mode)

(add-hook 'go-mode-hook #'lsp)

(require 'formatters-goimports)

(add-hook 'go-mode-hook #'formatters)

(require 'dap-go)

(provide 'init-go)
;;; init-go.el ends here
