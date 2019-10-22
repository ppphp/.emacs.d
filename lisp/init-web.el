;;; package --- Summary
;;; Commentary:
;;; Code:
(require 'typescript-mode)
(require 'web-mode)

(add-to-list 'auto-mode-alist '("\\.hbs\\'" . web-mode))


(add-hook 'js-mode-hook #'lsp)
(add-hook 'typescript-mode-hook #'lsp)

(require 'prettier-js)
(add-hook 'js-mode-hook 'prettier-js-mode)
(add-hook 'typescript-mode-hook 'prettier-js-mode)

(require 'dap-firefox)
(require 'dap-chrome)
(require 'dap-node)

(provide 'init-web)
;;; init-web.el ends here
