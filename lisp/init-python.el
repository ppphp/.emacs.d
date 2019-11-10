;;; package --- Summary
;;; Commentary:
;;; Code:

(add-hook 'python-mode-hook #'lsp)

(require 'formatters-yapf)

(add-hook 'python-mode-hook #'formatters)

(provide 'init-python)
;;; init-python.el ends here
