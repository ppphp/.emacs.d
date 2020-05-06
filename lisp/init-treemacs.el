;;; package --- Summary
;;; Commentary:
;;; Code:
(require 'treemacs)
(require 'treemacs-projectile)
(require 'treemacs-magit)
(treemacs-follow-mode 1)
(treemacs-git-mode 'deferred)
(treemacs-fringe-indicator-mode nil)

(setq treemacs-persist-file (f-join user-emacs-directory "local" "treemacs-persist"))

(require 'all-the-icons)
;;(load "all-the-icons-dired.el")
;;(add-hook 'dired-mode-hook 'all-the-icons-dired-mode)

(require 'doom-themes-ext-treemacs)
(doom-themes-treemacs-config)

 (provide 'init-treemacs)
;;; init-treemacs.el ends here
