;;; package --- Summary
;;; Commentary:
;;; Code:

;; global projectile init

(use-package project
  :disabled)

(require 'f)
(use-package projectile
  :custom
  (projectile-known-projects-file (f-join user-emacs-directory "local/projectile-bookmarks.eld"))
  (projectile-completion-system 'ivy)
  :config
  (projectile-mode +1)
  (when (and (not (executable-find "fd"))
	     (executable-find "rg"))
    (setq projectile-generic-command
	  (let ((rg-cmd ""))
	    (dolist (dir projectile-globally-ignored-directories)
	      (setq rg-cmd (format "%s --glob '!%s'" rg-cmd dir)))
	    (concat "rg -0 --files --color=never --hidden" rg-cmd)))))

(provide 'init-projectile)
;;; init-projectile.el ends here
