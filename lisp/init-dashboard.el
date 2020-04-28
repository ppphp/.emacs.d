;;; package --- Summary
;;; Commentary:
;;; Code:

(require 'all-the-icons)
(require 'dashboard)

(defcustom centaur-icon (display-graphic-p)
  "Display icons or not."
  :group 'centaur
  :type 'boolean)

(defun icons-displayable-p ()
  "Return non-nil if `all-the-icons' is displayable."
  (and centaur-icon
       (display-graphic-p)
       (require 'all-the-icons nil t)))

    (defun restore-previous-session ()
      "Restore the previous session."
      (interactive)
      (when (bound-and-true-p persp-mode)
        (restore-session persp-auto-save-fname)))

    (defun restore-session (fname)
      "Restore the specified session."
      (interactive (list (read-file-name "Load perspectives from a file: "
                                         persp-save-dir)))
      (when (bound-and-true-p persp-mode)
        (message "Restoring session...")
        (quit-window t)
        (condition-case-unless-debug err
            (persp-load-state-from-file fname)
          (error "Error: Unable to restore session -- %s" err))
        (message "Done")))

    (defun dashboard-goto-recent-files ()
      "Go to recent files."
      (interactive)
      (let ((func (local-key-binding "r")))
        (and func (funcall func))))

    (defun dashboard-goto-projects ()
      "Go to projects."
      (interactive)
      (let ((func (local-key-binding "p")))
        (and func (funcall func))))

    (defun dashboard-goto-bookmarks ()
      "Go to bookmarks."
      (interactive)
      (let ((func (local-key-binding "m")))
        (and func (funcall func))))

    (defun open-dashboard ()
      "Open the *dashboard* buffer and jump to the first widget."
      (interactive)
      ;; Check if need to recover layout
      (if (> (length (window-list-1))
             ;; exclude `treemacs' window
             (if (and (fboundp 'treemacs-current-visibility)
                      (eq (treemacs-current-visibility) 'visible))
                 2
               1))
          (setq dashboard-recover-layout-p t))

      (delete-other-windows)

      ;; Refresh dashboard buffer
      (when (get-buffer dashboard-buffer-name)
        (kill-buffer dashboard-buffer-name))
      (dashboard-insert-startupify-lists)
      (switch-to-buffer dashboard-buffer-name)

      ;; Jump to the first section
      (dashboard-goto-recent-files))

;; banner
;; title
;; time
;; items
;; footer

(setq dashboard-startup-banner 'logo
      dashboard-banner-logo-title "Hello!"
      
      dashboard-set-navigator t
      ;; Format: "(icon title help action face prefix suffix)"
      dashboard-navigator-buttons
      `(;; line1
        ((,(all-the-icons-octicon "mark-github" :height 1.1 :v-adjust 0.0)
         "Github"
         "Github homepage"
         (lambda (&rest _) (browse-url "https://github.com/ppphp/.emacs.d")))

	 (,(when (icons-displayable-p)
             (all-the-icons-material "restore" :height 1.35 :v-adjust -0.24))
          "Restore" "Restore previous session"
          (lambda (&rest _) (restore-previous-session)))

	 (,(all-the-icons-faicon "linkedin" :height 1.1 :v-adjust 0.0)
          "Linkedin"
          ""
          (lambda (&rest _) (browse-url "https://www.linkedin.com/in/%E5%87%AF%E6%96%87-%E5%88%98-36909814a/")))
	 ))
      
      dashboard-center-content t
      dashboard-items '((projects . 20)
			(recents  . 5)
			(agenda . t))
      dashboard-set-heading-icons t
      dashboard-set-file-icons t
      show-week-agenda-p t
      dashboard-org-agenda-categories '("Tasks" "Appointments")
      
      dashboard-set-footer t
      dashboard-footer-messages '("随便啦")
      dashboard-footer-icon (cond ((icons-displayable-p)
                                   (all-the-icons-faicon "heart"
                                                         :height 1.1
                                                         :v-adjust -0.05
                                                         :face 'error))
                                  ((char-displayable-p ?🧡) "🧡 ")
                                  (t (propertize ">" 'face 'dashboard-footer)))
      )

(if (display-graphic-p)
    (setq initial-buffer-choice (lambda () (get-buffer "*dashboard*")))
  )

(dashboard-setup-startup-hook)

(provide 'init-dashboard)

;;; init-dashboard.el ends here
