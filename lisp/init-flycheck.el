;;; package --- Summary
;;; Commentary:
;;; Code:
(add-to-list 'load-path "~/.emacs.d/modules/flycheck")
(require 'flycheck)
(add-hook 'after-init-hook #'global-flycheck-mode)
(provide 'init-flycheck)
;;; init-flycheck.el ends here
