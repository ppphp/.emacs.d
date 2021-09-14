;;; package --- Summary
;;; Commentary:
;;; Code:

(require 'f)
(use-package yasnippet
  :config
  (yas-global-mode 1)
  (add-to-list 'load-path "~/.emacs.d/snippets")
  (yas-load-directory (f-join user-emacs-directory "snippets")))

(provide 'init-yasnippet)
;;; init-yasnippet.el ends here
