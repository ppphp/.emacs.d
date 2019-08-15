;;; package --- Summary
;;; Commentary:
;;; Code:
(require 'treemacs)
(require 'treemacs-projectile)
;(treemacs-add-and-display-current-project)
;(treemacs-add-project projectile-project-root)

(setq treemacs-persist-file (f-join user-emacs-directory "local" "treemacs-persist"))
(treemacs)

(provide 'init-treemacs)
;;; init-treemacs.el ends here
