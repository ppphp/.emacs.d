;;; package --- Summary
;;; Commentary:
;;; Code:
(require 'yaml-mode)
(add-to-list 'auto-mode-alist '("\\.yml\\'" . yaml-mode))
(add-to-list 'auto-mode-alist '("\\.yaml\\'" . yaml-mode))
(add-hook 'yaml-mode-hook
          (lambda ()
            (define-key yaml-mode-map "\C-m" 'newline-and-indent)))

(add-to-list 'auto-mode-alist '("\\.editorconfig\\'" . conf-toml-mode))


(provide 'init-configfile)
;;; init-configfile.el ends here
