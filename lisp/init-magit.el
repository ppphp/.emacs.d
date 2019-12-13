;;; package --- Summary
;;; Commentary:
;;; Code:

 ;; global magit init
(require 'magit)
(require 'diff-hl)
(global-diff-hl-mode)
(require 'diff-hl-dired)
(diff-hl-dired-mode)
(require 'diff-hl-margin)
(diff-hl-margin-mode)

(provide 'init-magit)
;;; init-magit.el ends here
