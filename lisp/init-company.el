;;; package --- Summary
;;; Commentary:
;;; Code:

;; global company init
(require 'company)
(add-hook 'after-init-hook 'global-company-mode)
(setq company-minimum-prefix-length 1)

(provide 'init-company)
;;; init-company.el ends here
