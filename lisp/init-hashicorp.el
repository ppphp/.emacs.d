;;; package --- Summary
;;; Commentary:
;;; Code:

(require 'hcl-mode)
(require 'terraform-mode)
(require 'company-terraform)
(company-terraform-init)

(require 'formatters)
(formatters-register-client
 (make-formatters-client :command "terraform" :args '("fmt" "${file}") :mode 'terraform-mode))
(add-hook 'terraform-mode-hook #'formatters)

(provide 'init-hashicorp)
;;; init-hashicorp.el ends here
