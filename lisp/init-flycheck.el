;;; package --- Summary
;;; Commentary:
;;; Code:
(require 'flycheck)
(add-hook 'after-init-hook #'global-flycheck-mode)

(require 'flycheck-posframe)
(add-hook 'flycheck-mode-hook #'flycheck-posframe-mode)

(provide 'init-flycheck)
;;; init-flycheck.el ends here
