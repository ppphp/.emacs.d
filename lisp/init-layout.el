;;; package --- Summary
;;; Commentary:
;;; Code:

(require 'window-purpose)

(purpose-mode t)

(require 'window-purpose-x)

(defvar code2-purpose-config
  (purpose-conf "code2"
                :mode-purposes
                '((dired-mode . meta)
                  (term-mode . repl)
                  (message-mode . message)
                  (magit-status-mode . repl)
                  (magit-diff-mode . repl)
		  (imenu-list-major-mode . meta)
		  )))

(defun code2--window-layout()
  "."
  (setq purpose-x-code2--window-layout
	'(t
	  (0 0 146 55)
	  (nil
	   (0 0 146 40)
	   (:purpose meta
		     :purpose-dedicated t
		     :width 0.16666666666666666
		     :height 0.7142857142857143
		     :edges (0.0 0.0 0.16666666666666666 0.7142857142857143))
	   (:purpose edit
		     :purpose-dedicated t
		     :width 0.8472222222222222
		     :height 0.7142857142857143
		     :edges (0.16666666666666666 0.0 1.0138888888888888 0.7142857142857143)))
	  (nil
	   (0 40 146 55)
	   (:purpose repl
		     :purpose-dedicated t
		     :width 0.4930555555555556
		     :height 0.26785714285714285
		     :edges (0.0 0.7142857142857143 0.4930555555555556 0.9821428571428571))
	   (:purpose message
		     :purpose-dedicated t
		     :width 0.5208333333333334
		     :height 0.26785714285714285
		     :edges (0.4930555555555556 0.7142857142857143 1.0138888888888888 0.9821428571428571))))
	)
  )

(defvar code2-has-message
  t)

(defun code2-toggle-message ()
  "."
  (interactive)
  (if code2-has-message (setq code2-has-message nil) (setq code2-has-message t))
  (code2-update-layout)
  )

(defvar code2-has-term
  t)

(defun code2-toggle-term ()
  "."
  (interactive)
  (code2-update-layout)
  )

(defvar code2-has-meta
  t)

(defun code2-toggle-meta ()
  "."
  (interactive)
  (code2-update-layout)
  )

(defvar code2-buffers-changed nil
  "Internal variable for use with `frame-or-buffer-changed-p'.")

(defun code2-update-layout()
  "."
  (purpose-set-window-layout (code2--window-layout))
  )

(defun code2-update-dired ()
  "."
  (when (and (buffer-file-name)
             (cl-delete-if #'window-dedicated-p
                           (purpose-windows-with-purpose 'meta)))
    (save-selected-window
      (let ((buffer (dired-noselect (file-name-directory (buffer-file-name)))))
        (with-current-buffer buffer
          (when (fboundp 'dired-hide-details-mode)
            (dired-hide-details-mode)))
        (display-buffer buffer))
      (bury-buffer (current-buffer)))))

(defun code2-update-changed ()
  "."
  (when (frame-or-buffer-changed-p 'code2-buffers-changed)
    (code2-update-dired)
    (imenu-list-update-safe)))

;;;###autoload
(defun code2-setup ()
  "."
  (interactive)
  (purpose-set-extension-configuration :purpose-x-code2 code2-purpose-config)
  (multi-term)
  (code2-update-dired)
  (imenu-list-minor-mode)
  (frame-or-buffer-changed-p 'code2-buffers-changed)
  (add-hook 'post-command-hook #'code2-update-changed)
  (code2-update-layout)
  )

(defadvice find-file (after code2-layout-setup activate)
  "Create a dedicated perspective for current project's window after switching projects."
  (code2-setup))

(require 'perspective)

(persp-mode)

(require 'persp-projectile)

(defadvice find-file (after projectile-create-perspective-after-switching-projects activate)
  "Create a dedicated perspective for current project's window after switching projects."
  (let ((project-name (projectile-project-name)))
    (when (and persp-mode (projectile-project-p))
      (persp-switch project-name))))

(provide 'init-layout)
;;; init-layout.el ends here