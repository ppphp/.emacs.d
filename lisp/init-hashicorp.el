;;; package --- Summary
;;; Commentary:
;;; Code:

(use-package terraform-mode
  :mode ("\\.tf\\'")
  :config
  (use-package company-terraform
    :config
    (company-terraform-init)))

(require 'formatters)
(formatters-register-client
 (make-formatters-client :command "terraform" :args '("fmt" "${file}") :mode 'terraform-mode))

(add-hook 'terraform-mode-hook #'formatters)

(provide 'init-hashicorp)
;;; init-hashicorp.el ends here
