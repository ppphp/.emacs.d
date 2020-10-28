;;; package --- Summary
;;; Commentary:
;;; Code:
(use-package dockerfile-mode
  :mode ("\\Dockerfile\\'")
  :config
  (use-package lsp-dockerfile
    :hook
    (dockerfile-mode . lsp)))

(provide 'init-docker)
;;; init-docker.el ends here

