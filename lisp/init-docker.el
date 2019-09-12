;;; package --- Summary
;;; Commentary:
;;; Code:
(require 'dockerfile-mode)

(add-to-list 'auto-mode-alist '("Dockerfile\\'" . dockerfile-mode))
(add-to-list 'auto-mode-alist '("\\.Dockerfile" . dockerfile-mode))

(require 'lsp-dockerfile)
(add-hook 'dockerfile-mode-hook #'lsp)


(provide 'init-docker)
;;; init-docker.el ends here

