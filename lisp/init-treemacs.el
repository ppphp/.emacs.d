;;; package --- Summary
;;; Commentary:
;;; Code:

(use-package treemacs
<<<<<<< HEAD
  :after (all-the-icons f)
=======
  :commands (treemacs)
;;  :after (all-the-icons f)
>>>>>>> 54911f309e77c1898597715460292cd9486657f5
  :custom
  (treemacs-persist-file (f-join user-emacs-directory "local" "treemacs-persist"))
  (treemacs-position 'right)
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
