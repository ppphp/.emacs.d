;;; package --- Summary
;;; Commentary:
;;; Code:

(dolist
    (n (directory-files "~/.emacs.d/modules/"))
  (unless
   (or (eq n "..") (eq n "."))
    (add-to-list 'load-path (concat "~/.emacs.d/modules/" n))
  )
)

(add-to-list 'load-path "~/.emacs.d/modules/transient/lisp")
(add-to-list 'load-path "~/.emacs.d/modules/magit/lisp")
(add-to-list 'load-path "~/.emacs.d/modules/org-mode/lisp")
(add-to-list 'load-path "~/.emacs.d/modules/org-mode/contrib/lisp")
(add-to-list 'load-path "~/.emacs.d/modules/treemacs/src/elisp")
(add-to-list 'load-path "~/.emacs.d/modules/treemacs/src/extra")


(provide 'init-deps)
;;; init-deps.el ends here