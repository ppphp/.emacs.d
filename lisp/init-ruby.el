;;; package --- Summary
;;; Commentary:
;;; Code:

(add-hook 'ruby-mode-hook #'lsp)
(use-package rubocop
  :hook
  (ruby-mode . rubocop-mode))

(provide 'init-ruby)
;;; init-ruby.el ends here
