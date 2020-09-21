;;; package --- Summary
;;; Commentary:
;;; Code:

(use-package hcl-mode
  :config
  (use-package terraform-mode)
  (use-package company-terraform
    :after (company)
    :config
    (company-terraform-init)))

(require 'formatters)
(formatters-register-client
 (make-formatters-client :command "terraform" :args '("fmt" "${file}") :mode 'terraform-mode))
(add-hook 'terraform-mode-hook #'formatters)

(provide 'init-hashicorp)
;;; init-hashicorp.el ends here
