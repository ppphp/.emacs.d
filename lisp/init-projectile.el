
;; global projectile init
(add-to-list 'load-path "~/.emacs.d/modules/projectile")
(require 'projectile)
(projectile-mode +1)
(define-key projectile-mode-map (kbd "s-t") 'projectile-find-file)
(define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)
(when (and (not (executable-find "fd"))
           (executable-find "rg"))
  (setq projectile-generic-command
        (let ((rg-cmd ""))
          (dolist (dir projectile-globally-ignored-directories)
            (setq rg-cmd (format "%s --glob '!%s'" rg-cmd dir)))
          (concat "rg -0 --files --color=never --hidden" rg-cmd))))

(provide 'init-projectile)
