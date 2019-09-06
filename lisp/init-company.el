;;; package --- Summary
;;; Commentary:
;;; Code:

;; global company init
(require 'company)
(add-hook 'after-init-hook 'global-company-mode)
(setq company-minimum-prefix-length 1)
(require 'company-prescient)
(company-prescient-mode 1)
;(require 'company-box)
;(add-hook 'company-mode-hook 'company-box-mode)
;(setq company-box-backends-colors nil
;      company-box-show-single-candidate t
;      company-box-max-candidates 50
;      company-box-doc-delay 0.5
;      company-box-icons-alist 'company-box-icons-all-the-icons)


(provide 'init-company)
;;; init-company.el ends here
