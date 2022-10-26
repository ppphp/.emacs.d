;;; package --- Summary
;;; Commentary:
;;; Code:

(use-package terraform-mode
  :mode ("\\.tf\\'")
  :config
  (use-package company-terraform
    :config
    (company-terraform-init)))

(provide 'init-hashicorp)
;;; init-hashicorp.el ends here
