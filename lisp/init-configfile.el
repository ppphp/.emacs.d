;;; package --- Summary
;;; Commentary:
;;; Code:
(add-to-list  'load-path "~/.emacs.d/modules/yaml-mode")
(require 'yaml-mode)
(add-to-list 'auto-mode-alist '("\\.yml\\'" . yaml-mode))
(add-to-list 'auto-mode-alist '("\\.yaml\\'" . yaml-mode))
(add-hook 'yaml-mode-hook
          (lambda ()
            (define-key yaml-mode-map "\C-m" 'newline-and-indent)))
(provide 'init-configfile)
;;; init-configfile.el ends here
