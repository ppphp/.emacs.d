;;; package --- Summary
;;; Commentary:
;;; Code:

(require 'f)
(use-package yasnippet
  :config
  (yas-global-mode 1)
  (yas-load-directory (f-join user-emacs-directory "snippets" "yasnippet-snippets" "snippets")))

(provide 'init-yasnippet)
;;; init-yasnippet.el ends here
