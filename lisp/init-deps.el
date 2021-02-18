;;; package --- Summary
;;; Commentary:
;;; Code:

(dolist
    (n (directory-files "~/.emacs.d/modules/"))
  (unless
   (or (equal n "..") (equal n "."))
    (add-to-list 'load-path (concat "~/.emacs.d/modules/" n))
  )
)

(add-to-list 'load-path "~/.emacs.d/modules/transient/lisp")
(add-to-list 'load-path "~/.emacs.d/modules/magit/lisp")
(add-to-list 'load-path "~/.emacs.d/modules/forge/lisp")
(add-to-list 'load-path "~/.emacs.d/modules/org-mode/lisp")
(add-to-list 'load-path "~/.emacs.d/modules/org-mode/contrib/lisp")
(add-to-list 'load-path "~/.emacs.d/modules/treemacs/src/elisp")
(add-to-list 'load-path "~/.emacs.d/modules/treemacs/src/extra")
(add-to-list 'load-path "~/.emacs.d/modules/lsp-mode/clients")

(require 'use-package)
;(require 'straight)

;(straight-use-package 'use-package)

(dolist
    (n (directory-files user-emacs-directory "subpackage"))
  (unless
      (or (equal n "..") (equal n "."))
    (add-to-list 'load-path (concat user-emacs-directory "subpackage" n))))

;; require some basic lib
(require 's)
(require 'f)
(require 'page-break-lines)

(provide 'init-deps)
;;; init-deps.el ends here
