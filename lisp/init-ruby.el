;;; package --- Summary
;;; Commentary:
;;; Code:

(add-hook 'ruby-mode-hook #'lsp)
(require 'rubocop)
(add-hook 'ruby-mode-hook #'rubocop-mode)

(provide 'init-ruby)
;;; init-ruby.el ends here
