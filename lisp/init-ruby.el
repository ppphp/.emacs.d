;;; package --- Summary
;;; Commentary:
;;; Code:

(use-package ruby-mode
  :mode ("\\.rb\\'" "\\Rakefile\\'" "\\Gemfile\\.")
  :config
  (use-package rubocop
    :hook
    (ruby-mode . rubocop-mode))

  (use-package lsp-solargraph
    :hook (ruby-mode . lsp)))

(provide 'init-ruby)
;;; init-ruby.el ends here
