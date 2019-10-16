;;; package --- Summary
;;; Commentary:
;;; Code:

(require 'all-the-icons)
(require 'dashboard)

(dashboard-setup-startup-hook)
(if (display-graphic-p)
    (setq initial-buffer-choice (lambda () (get-buffer "*dashboard*")))
  )

;; banner
;; title
;; time
;; items
;; footer

(setq dashboard-startup-banner 'logo)

(setq dashboard-banner-logo-title "Hello!")

(setq dashboard-center-content t)

(setq dashboard-items '((projects . 5)
			(recents  . 5)))

(setq dashboard-set-heading-icons t)
(setq dashboard-set-file-icons t)

(setq dashboard-set-navigator t)

(provide 'init-dashboard)

;;; init-dashboard.el ends here
