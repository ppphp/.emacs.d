;;; package --- Summary
;;; Commentary:
;;; Code:

(use-package yaml-mode
  :mode ("\\.yml\\'" "\\.yaml\\'" "\\.clang-format\\'")
  :config
  (add-hook 'yaml-mode-hook
	    (lambda ()
	      (define-key yaml-mode-map "\C-m" 'newline-and-indent))))

(add-to-list 'auto-mode-alist '("\\.editorconfig\\'" . conf-toml-mode))

(use-package json-mode
  :mode ("\\.json\\'")
  :config
  (use-package json-reformat)
  (use-package json-snatcher))

(use-package jenkinsfile-mode
  :mode "Jenkinsfile")

(use-package terraform-mode
  :mode ("\\.tf\\'")
  :config
  (use-package company-terraform
    :config
    (company-terraform-init)))

(use-package nginx-mode)

(use-package protobuf-mode
  :mode "\\.proto\\'")

(use-package make-mode
  :mode "Makefile")

(use-package cmake-mode
  :mode "CMakeLists.txt"
  :hook (cmake-mode-hook . lsp))

(provide 'init-configfile)
;;; init-configfile.el ends here
