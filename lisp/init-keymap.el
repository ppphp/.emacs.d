;;; package --- Summary
;;; Commentary:
;;; Code:

(define-key projectile-mode-map (kbd "s-t") 'projectile-find-file)
(define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)
(global-set-key [f8] 'treemacs-projectile)

(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)

(provide 'init-keymap)
;;; init-keymap.el ends here
