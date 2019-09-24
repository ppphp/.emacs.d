;;; package --- Summary
;;; Commentary:
;;; Code:

(require 'hcl-mode)
(require 'terraform-mode)
(require 'company-terraform)
(company-terraform-init)
(terraform-format-on-save-mode t)

(provide 'init-hashicorp)
;;; init-hashicorp.el ends here
