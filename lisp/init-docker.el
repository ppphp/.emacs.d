;;; package --- Summary
;;; Commentary:
;;; Code:
(use-package dockerfile-mode
  :config
  (add-to-list 'auto-mode-alist '("Dockerfile\\'" . dockerfile-mode))
  (add-to-list 'auto-mode-alist '("\\.Dockerfile" . dockerfile-mode))
  (use-package lsp-dockerfile
    :hook
    (dockerfile-mode . lsp)))


(provide 'init-docker)
;;; init-docker.el ends here

