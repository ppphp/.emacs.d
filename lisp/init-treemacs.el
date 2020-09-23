;;; package --- Summary
;;; Commentary:
;;; Code:

(require 'all-the-icons)

(use-package treemacs
  :custom
  (treemacs-persist-file (f-join user-emacs-directory "local" "treemacs-persist"))
  :config
  (use-package treemacs-projectile)
  (use-package treemacs-magit)
  (treemacs-follow-mode 1)
  (treemacs-git-mode 'deferred)
  (treemacs-fringe-indicator-mode nil)
  (use-package doom-themes-ext-treemacs
    :config
    (doom-themes-treemacs-config)))

 (provide 'init-treemacs)
;;; init-treemacs.el ends here
