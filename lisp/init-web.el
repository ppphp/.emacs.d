;;; package --- Summary
;;; Commentary:
;;; Code:
(require 'typescript-mode)
(require 'web-mode)

(add-to-list 'auto-mode-alist '("\\.hbs\\'" . web-mode))
(setq lsp-clients-javascript-typescript-server ("~" ".yarn" "bin" "typescript-language-server"))
(add-hook 'js-mode-hook #'lsp)
(add-hook 'typescript-mode-hook #'lsp)


(provide 'init-web)
;;; init-web.el ends here
