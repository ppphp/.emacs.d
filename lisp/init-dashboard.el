;;; package --- Summary
;;; Commentary:
;;; Code:

(require 'all-the-icons)
(require 'dashboard)

(dashboard-setup-startup-hook)
;(setq initial-buffer-choice (lambda () (get-buffer "*dashboard*")))

;; Set the title
(setq dashboard-banner-logo-title "Hello!")
;; Set the banner
(setq dashboard-startup-banner 'logo)
;; Value can be
;; 'official which displays the official emacs logo
;; 'logo which displays an alternative emacs logo
;; 1, 2 or 3 which displays one of the text banners
;; "path/to/your/image.png" which displays whatever image you would prefer

;; Content is not centered by default. To center, set
(setq dashboard-center-content t)

;; To disable shortcut "jump" indicators for each section, set
(setq dashboard-show-shortcuts nil)

(setq dashboard-items '((recents  . 5)
                        (bookmarks . 5)
                        (projects . 5)
                        (agenda . 5)
                        (registers . 5)))


(provide 'init-dashboard)

;;; init-dashboard.el ends here
