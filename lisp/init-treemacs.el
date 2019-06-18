;;; package --- Summary
;;; Commentary:
;;; Code:
(add-to-list 'load-path "~/.emacs.d/modules/hydra")
(add-to-list 'load-path "~/.emacs.d/modules/pfuture")
(add-to-list 'load-path "~/.emacs.d/modules/avy")
(add-to-list 'load-path "~/.emacs.d/modules/ace-window")
(add-to-list 'load-path "~/.emacs.d/modules/treemacs/src/elisp")
(add-to-list 'load-path "~/.emacs.d/modules/treemacs/src/extra")
(require 'treemacs)
(require 'treemacs-projectile)
(treemacs-add-and-display-current-project)
;(treemacs-add-project projectile-project-root)

(provide 'init-treemacs)
;;; init-treemacs.el ends here
