;;; package --- Summary
;;; Commentary:
;;; Code:

;; global company init
(add-to-list 'load-path "~/.emacs.d/modules/org-mode/lisp")
(require 'org)

(setq org-agenda-files (list "~/.emacs.d/org/work.org"))
(setq org-log-done t)

(provide 'init-org)
;;; init-org.el ends here
