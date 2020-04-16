;;; package --- Summary
;;; Commentary:
;;; Code:

(require 'window-purpose)

(purpose-mode t)

(setq ppphp-prog-frames t)
(setq ppphp-repl-frames t)
(setq ppphp-meta-frames t)
(setq ppphp-logs-frames t)

(add-to-list 'purpose-user-mode-purposes '(js-mode . ppphp-prog-frames))
(add-to-list 'purpose-user-mode-purposes '(go-mode . ppphp-prog-frames))
(add-to-list 'purpose-user-mode-purposes '(c-mode . ppphp-prog-frames))
(add-to-list 'purpose-user-mode-purposes '(c++-mode . ppphp-prog-frames))

(add-to-list 'purpose-user-mode-purposes '(term-mode . ppphp-repl-frames))
(add-to-list 'purpose-user-mode-purposes '(shell-mode . ppphp-repl-frames))
(add-to-list 'purpose-user-mode-purposes '(eshell-mode . ppphp-repl-frames))

(purpose-compile-user-configuration)

(require 'window-purpose-x)

(defvar purpose-x-code2--window-layout
  '(nil
    (0 0 152 35)
    (t
     (0 0 29 35)
     (:purpose dired :purpose-dedicated t :width 0.16 :height 0.5 :edges
               (0.0 0.0 0.19333333333333333 0.5))
     (:purpose buffers :purpose-dedicated t :width 0.16 :height 0.4722222222222222 :edges
               (0.0 0.5 0.19333333333333333 0.9722222222222222)))
    (:purpose edit :purpose-dedicated t :width 0.6 :height 0.9722222222222222 :edges
              (0.19333333333333333 0.0 0.8266666666666667 0.9722222222222222))
    (:purpose ilist :purpose-dedicated t :width 0.15333333333333332 :height 0.9722222222222222 :edges
              (0.8266666666666667 0.0 1.0133333333333334 0.9722222222222222)))
  "Window layout for purpose-x-code2-dired-ibuffer.
Has a main edit window, repl and project message and message.
All windows are purpose-dedicated.")

;; the name arg ("purpose-x-code1") is necessary for Emacs 24.5 and older
;; (omitting it produces an "Invalid slot name" error)
(defvar purpose-x-code2-purpose-config
  (purpose-conf "purpose-x-code2"
                :mode-purposes
                '((ibuffer-mode . buffers)
                  (dired-mode . dired)
                  (imenu-list-major-mode . ilist))))

(defvar purpose-x-code2-buffers-changed nil
  "Internal variable for use with `frame-or-buffer-changed-p'.")

(define-ibuffer-filter purpose-x-code2-ibuffer-files-only
    "Display only buffers that are bound to files."
  ()
  (buffer-file-name buf))

(defun purpose-x-code2--setup-ibuffer ()
  "Set up ibuffer settings."
  (add-hook 'ibuffer-mode-hook
            #'(lambda ()
                (ibuffer-filter-by-purpose-x-code2-ibuffer-files-only nil)))
  (add-hook 'ibuffer-mode-hook #'ibuffer-auto-mode)
  (setq ibuffer-formats '((mark " " name)))
  (setq ibuffer-display-summary nil)
  (setq ibuffer-use-header-line nil)
  ;; not sure if we want this...
  ;; (setq ibuffer-default-shrink-to-minimum-size t)
  (when (get-buffer "*Ibuffer*")
    (kill-buffer "*Ibuffer*"))
  (save-selected-window
    (ibuffer-list-buffers)))

(defun purpose-x-code2--unset-ibuffer ()
  "Unset ibuffer settings."
  (remove-hook 'ibuffer-mode-hook
               #'(lambda ()
                   (ibuffer-filter-by-purpose-x-code2-ibuffer-files-only nil)))
  (remove-hook 'ibuffer-mode-hook #'ibuffer-auto-mode)
  (setq ibuffer-formats '((mark modified read-only " "
                                (name 18 18 :left :elide)
                                " "
                                (size 9 -1 :right)
                                " "
                                (mode 16 16 :left :elide)
                                " " filename-and-process)
                          (mark " "
                                (name 16 -1)
                                " " filename)))
  (setq ibuffer-display-summary t)
  (setq ibuffer-use-header-line t))

(defun purpose-x-code2-update-dired ()
  "Update free dired window with current buffer's directory.
If a non-buffer-dedicated window with purpose 'dired exists, display
the directory of the current buffer in that window, using `dired'.
If there is no window available, do nothing.
If current buffer doesn't have a filename, do nothing."
  (when (and (buffer-file-name)
             (cl-delete-if #'window-dedicated-p
                           (purpose-windows-with-purpose 'dired)))
    (save-selected-window
      (let ((buffer (dired-noselect (file-name-directory (buffer-file-name)))))
        (with-current-buffer buffer
          (when (fboundp 'dired-hide-details-mode)
            (dired-hide-details-mode)))
        (display-buffer buffer))
      (bury-buffer (current-buffer)))))

(defun purpose-x-code2-update-changed ()
  "Update auxiliary buffers if frame/buffer had changed.
Uses `frame-or-buffer-changed-p' to determine whether the frame or
buffer had changed."
  (when (frame-or-buffer-changed-p 'purpose-x-code2-buffers-changed)
    (purpose-x-code1-update-dired)
    (imenu-list-update-safe)))

;;;###autoload
(defun purpose-x-code2-setup ()
  "Setup purpose-x-code1.
This setup includes 4 windows:
1. dedicated 'edit window
2. dedicated 'dired window.  This window shows the current buffer's
directory in a special window, using `dired' and
`dired-hide-details-mode' (if available).
3. dedicated 'buffers window.  This window shows the currently open
files, using `ibuffer'.
4. dedicated 'ilist window.  This window shows the current buffer's
imenu."
  (interactive)
  (purpose-set-extension-configuration :purpose-x-code2 purpose-x-code2-purpose-config)
  (purpose-x-code2--setup-ibuffer)
  (purpose-x-code2-update-dired)
  (imenu-list-minor-mode)
  (frame-or-buffer-changed-p 'purpose-x-code2-buffers-changed)
  (add-hook 'post-command-hook #'purpose-x-code2-update-changed)
  (purpose-set-window-layout purpose-x-code2--window-layout))

(defun purpose-x-code2-unset ()
  "Unset purpose-x-code1."
  (interactive)
  (purpose-del-extension-configuration :purpose-x-code2)
  (purpose-x-code1--unset-ibuffer)
  (imenu-list-minor-mode -1)
  (remove-hook 'post-command-hook #'purpose-x-code2-update-changed))

(purpose-x-code2-setup)

(purpose-x-magit-single-on)




(require 'perspective)

(persp-mode)

(require 'persp-projectile)

(defmacro projectile-persp-bridge (func-name)
  "Create advice to create a perspective before invoking function FUNC-NAME.
The advice provides bridge between perspective and projectile
functions when switch between projects.  After switching to a new
project, this advice creates a new perspective for that project."
  `(defadvice ,func-name (after projectile-create-perspective-after-switching-projects activate)
     "Create a dedicated perspective for current project's window after switching projects."
     (let ((project-name (projectile-project-name)))
       (when (and persp-mode (projectile-project-p))
         (persp-switch project-name)))))
(projectile-persp-bridge find-file)

(provide 'init-layout)
;;; init-layout.el ends here
