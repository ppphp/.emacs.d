;;; package --- Summary
;;; Commentary:
;;; Code:
;(add-to-list 'load-path "~/.emacs.d/modules/go-mode.el")
;(autoload 'go-mode "go-mode" nil t)
(add-to-list 'auto-mode-alist '("\\.go\\'" . go-mode))
(provide 'init-go)
;;; init-go.el ends here
