;;; package --- Summary
;;; Commentary:
;;; Code:

(define-key projectile-mode-map (kbd "s-t") 'projectile-find-file)
(define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)

(global-set-key [f8] 'treemacs)
(define-key treemacs-mode-map [mouse-1] #'treemacs-single-click-expand-action)

(define-key global-map "\C-cs" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)
(define-key lsp-mode-map "\C-cl" 'lsp-find-definition)
;(global-unset-key (kbd "<C-mouse-1>"))
;(global-set-key (kbd "<C-mouse-1>") 'lsp-find-definition)

(define-key global-map "\C-cg" 'magit-status)

(global-set-key [f12] 'multi-term-dedicated-toggle)
(define-key term-mode-map (kbd "C-c <left>") 'multi-term-left)
(define-key term-mode-map (kbd "C-c <right>") 'multi-term-right)

(provide 'init-keymap)
;;; init-keymap.el ends here
