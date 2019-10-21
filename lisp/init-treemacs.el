;;; package --- Summary
;;; Commentary:
;;; Code:
(require 'treemacs)
(require 'treemacs-projectile)

(treemacs-follow-mode nil)
(treemacs-git-mode 'deferred)

(setq treemacs-persist-file (f-join user-emacs-directory "local" "treemacs-persist"))

(provide 'init-treemacs)
;;; init-treemacs.el ends here
