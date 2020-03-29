;;; package --- Summary
;;; Commentary:
;;; Code:

(dolist
    (n (directory-files "~/.emacs.d/themes/"))
  (unless
      (or (equal n "..") (equal n "."))
    (add-to-list 'custom-theme-load-path (concat "~/.emacs.d/themes/" n))
    )
  )

(load-theme 'atom-one-dark t)

(provide 'init-theme)
;;; init-theme.el ends here
