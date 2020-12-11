;;; package --- Summary
;;; Commentary:
;;; Code:

(use-package magit
  :custom
  (transient-history-file (f-join user-emacs-directory "local/transient/history.el"))
  (transient-levels-file (f-join user-emacs-directory "local/transient/levels.el"))
  (transient-values-file (f-join user-emacs-directory "local/transient/values.el"))
  :config
  ;; Access Git forges from Magit
  (when (executable-find "cc")
    (use-package forge
      :demand
      :defer
      :init (setq forge-topic-list-columns
                  '(("#" 5 t (:right-align t) number nil)
                    ("Title" 60 t nil title  nil)
                    ("State" 6 t nil state nil)
                    ("Updated" 10 t nill updated nil)))
      :custom (forge-database-file (f-join user-emacs-directory "local/forge-database.sqlite"))))

  (use-package magit-todos
    :config
    (setq magit-todos-nice (if (executable-find "nice") t nil))
    (magit-todos-mode 1)))

(use-package diff-hl
  :defer
  :hook
  (after-init . global-diff-hl-mode)
  (dired-mode . diff-hl-dired-mode))

(use-package gitattributes-mode
  :defer)
(use-package gitconfig-mode
  :defer)
(use-package gitignore-mode
  :defer)

(provide 'init-magit)
;;; init-magit.el ends here
