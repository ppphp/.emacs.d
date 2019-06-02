
;; global company init
(add-to-list 'load-path "~/.emacs.d/modules/company-mode")
(require 'company)
(add-hook 'after-init-hook 'global-company-mode)
(setq company-minimum-prefix-length 1)

(provide 'init-company)
