;;; package --- Summary
;;; Commentary:
;;; Code:

(use-package cmake-mode
  :ensure t
  :mode "CMakeLists.txt")

(add-hook 'cmake-mode-hook #'lsp)

(provide 'init-cmake)
;;; init-cmake.el ends here
