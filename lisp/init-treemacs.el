;;; package --- Summary
;;; Commentary:
;;; Code:
(require 'treemacs)
(require 'treemacs-projectile)
;(treemacs-add-and-display-current-project)
;(treemacs-add-project projectile-project-root)

(treemacs-follow-mode nil)

(setq treemacs-persist-file (f-join user-emacs-directory "local" "treemacs-persist"))

(provide 'init-treemacs)
;;; init-treemacs.el ends here
