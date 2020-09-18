;;; package --- Summary
;;; Commentary:
;;; Code:

;; global company init
(require 'company)

;; enable
(add-hook 'after-init-hook 'global-company-mode)

;; tweak backends

(setq company-backends
      '(company-files          ; files & directory
        company-keywords       ; keywords
        company-capf
        company-yasnippet
        (company-dabbrev-code company-gtags company-etags company-keywords)
        company-oddmuse company-dabbrev))
;(setq company-backends '(company-capf))
;; 1 char to complete
(setq company-minimum-prefix-length 1)

;; beautiful drop-down menu
(require 'company-prescient)
(company-prescient-mode 1)

;; company box update again
(require 'company-box)
(add-hook 'company-mode-hook 'company-box-mode)

(provide 'init-company)
;;; init-company.el ends here
