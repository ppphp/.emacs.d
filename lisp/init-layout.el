;;; package --- Summary
;;; Commentary:
;;; Code:

(require 'window-purpose)

(purpose-mode t)

(require 'window-purpose-x)

(purpose-x-magit-single-on)

(require 'perspective)

(persp-mode)

(require 'persp-projectile)

(define-key projectile-mode-map (kbd "s-s") 'projectile-persp-switch-project)

(provide 'init-layout)
;;; init-layout.el ends here
