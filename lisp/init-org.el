;;; package --- Summary
;;; Commentary:
;;; Code:

(use-package org
  :config
  ;; beautify
  (use-package org-bullets
    :hook (org-mode . org-bullets-mode))

  ;; shortcut
  (use-package org-tempo)

  ;; journal
  (use-package org-journal
    :custom
    (org-journal-dir "~/.emacs.d/notes/journal")
    (org-journal-date-format "%d %B %Y"))

  ;; babel
  (use-package ob
    :config
    (defvar load-language-list '((emacs-lisp . t)
				 (perl . t)
				 (python . t)
				 (ruby . t)
				 (js . t)
				 (css . t)
				 (sass . t)
				 (C . t)
				 (java . t)
				 (plantuml . t)))
    (use-package ob-go
      :init (cl-pushnew '(go . t) load-language-list))
    (use-package ob-rust
      :init (cl-pushnew '(rust . t) load-language-list))
    ;(use-package ob-ipython
    ;  :if (executable-find "jupyter")     ; DO NOT remove
    ;  :init (cl-pushnew '(ipython . t) load-language-list))
    ;; Use mermadi-cli: npm install -g @mermaid-js/mermaid-cli
    (use-package ob-mermaid
      :init (cl-pushnew '(mermaid . t) load-language-list))
    (use-package ob-elixir
      :init (cl-pushnew '(rust . t) load-language-list))
    (use-package ob-lilypond
      :init (cl-pushnew '(rust . t) load-language-list))
    (use-package ob-swift
      :init (cl-pushnew '(rust . t) load-language-list))
    (org-babel-do-load-languages 'org-babel-load-languages
				 load-language-list)
    (use-package ob-async))

  
(setq calendar-longitude 121.4737)
(setq calendar-latitude 31.2304)

(setq org-log-done t)

(defun diary-sunrise ()
  (let ((dss (diary-sunrise-sunset)))
    (with-temp-buffer
      (insert dss)
      (goto-char (point-min))
      (while (re-search-forward " ([^)]*)" nil t)
        (replace-match "" nil nil))
      (goto-char (point-min))
      (search-forward ",")
      (buffer-substring (point-min) (match-beginning 0)))))

(defun diary-sunset ()
  (let ((dss (diary-sunrise-sunset))
        start end)
    (with-temp-buffer
      (insert dss)
      (goto-char (point-min))
      (while (re-search-forward " ([^)]*)" nil t)
        (replace-match "" nil nil))
      (goto-char (point-min))
      (search-forward ", ")
      (setq start (match-end 0))
      (search-forward " at")
      (setq end (match-beginning 0))
      (goto-char start)
      (capitalize-word 1)
      (buffer-substring start end))))
  ;; agenda
  (use-package org-agenda
    :custom
    (org-agenda-files (list (f-join user-emacs-directory "local" "agenda")))
    (org-agenda-include-diary t)
    (org-agenda-diary-file (f-join user-emacs-directory "local" "diary.org"))
    (org-agenda-time-grid (quote (((daily today require-timed)
				   (800 1000 1200 1400 1600 1800 2000)
				   "......" "----------------"))))
  
)

  (use-package org-pomodoro)
  
  ;; github export
  (use-package ox-gfm
    :config
    (add-to-list 'org-export-backends 'md)))

;; org-roam
(use-package org-roam
  :hook
  (after-init . org-roam-mode)
  :custom
  (org-roam-directory (f-join user-emacs-directory "notes" "org-roam")))

  (use-package org-roam-server
    :functions xwidget-buffer xwidget-webkit-current-session
    :hook (org-roam-server-mode . org-roam-server-browse)
    :init
    (defun org-roam-server-browse ()
      (when org-roam-server-mode
        (let ((url (format "http://%s:%d" org-roam-server-host org-roam-server-port)))
          (if (featurep 'xwidget-internal)
              (progn
                (xwidget-webkit-browse-url url)
                (let ((buf (xwidget-buffer (xwidget-webkit-current-session))))
                  (when (buffer-live-p buf)
                    (and (eq buf (current-buffer)) (quit-window))
                    (pop-to-buffer buf))))
            (browse-url url))))))

(provide 'init-org)
;;; init-dashboard.el ends here
