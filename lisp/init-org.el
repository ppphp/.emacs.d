;;; package --- Summary
;;; Commentary:
;;; Code:

;; global company init
(require 'org)

(setq org-agenda-files (list (f-join user-emacs-directory "local" "org" "work.org")))
(setq org-log-done t)

(provide 'init-org)
;;; init-org.el ends here
