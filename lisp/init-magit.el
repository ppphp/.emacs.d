;;; package --- Summary
;;; Commentary:
;;; Code:

(use-package magit
  :custom
  (transient-history-file (f-join user-emacs-directory "local/transient/history.el"))
  (transient-levels-file (f-join user-emacs-directory "local/transient/levels.el"))
  (transient-values-file (f-join user-emacs-directory "local/transient/values.el")))

(use-package diff-hl
  :hook
  (after-init . global-diff-hl-mode)
  (dired-mode . diff-hl-dired-mode))

(use-package gitattributes-mode)
(use-package gitconfig-mode)
(use-package gitignore-mode)

(provide 'init-magit)
;;; init-magit.el ends here
