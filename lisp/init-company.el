;;; package --- Summary
;;; Commentary:
;;; Code:

;; global company init
(require 'company)

;; enable
(add-hook 'after-init-hook 'global-company-mode)

;; tweak backends
(setq company-backends
      '(company-elisp
        ;; company-semantic
        company-capf
        (company-dabbrev-code company-gtags company-etags
         company-keywords)
        company-files
        company-dabbrev))

;; 1 char to complete
(setq company-minimum-prefix-length 1)

;; beautiful drop-down menu
(require 'company-prescient)
(company-prescient-mode 1)

(provide 'init-company)
;;; init-company.el ends here
