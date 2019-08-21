;;; package --- Summary
;;; Commentary:
;;; Code:
(require 'typescript-mode)
(require 'web-mode)

(add-to-list 'auto-mode-alist '("\\.hbs\\'" . web-mode))
(add-hook 'typescript-mode-hook #'lsp)

(setq lsp-clients-typescript-server (f-join user-emacs-directory "bin" "typescript-language-server"))

(provide 'init-web)
;;; init-web.el ends here
