;;; package --- Summary
;;; Commentary:
;;; Code:

(require 'ccls)

(setq ccls-executable (f-join user-emacs-directory "bin" "ccls"))

(add-hook 'c++-mode-hook #'lsp)

(add-hook 'c++-mode-hook #'lsp-format-buffer)

(provide 'init-cpp)
;;; init-cpp.el ends here
