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


(provide 'init-configfile)
;;; init-configfile.el ends here
