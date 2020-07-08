;;; package --- Summary
;;; Commentary:
;;; Code:

(require 'org)

;; beautify
(require 'org-bullets)
(add-hook 'org-mode-hook #'org-bullets-mode)

;; shortcut
(require 'org-tempo)

;; babel
(require 'ob-async)
(require 'ob-elixir)
(require 'ob-go)
;(require 'ob-ipython)
(require 'ob-lilypond)
(require 'ob-mermaid)
(require 'ob-rust)
(require 'ob-swift)

;; journal
(setq org-journal-dir "~/.emacs.d/notes/journal")
(setq org-journal-date-format "%d %B %Y")
(require 'org-journal)

;; agenda
(setq org-agenda-files (list (f-join user-emacs-directory "local" "agenda")))

(setq org-log-done t)

(setq org-agenda-include-diary t)
(setq org-agenda-diary-file (f-join user-emacs-directory "local" "diary.org"))

(setq calendar-longitude 121.4737)
(setq calendar-latitude 31.2304)

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

(setq org-agenda-time-grid (quote (((daily today require-timed)
                                    (800 1000 1200 1400 1600 1800 2000)
                                    "......" "----------------"))))

;; github export
(require 'ox-gfm)
(add-to-list 'org-export-backends 'md)

;; org-roam
(require 'org-roam)
(setq org-roam-directory (f-join user-emacs-directory "notes" "org-roam"))

(provide 'init-org)
;;; init-dashboard.el ends here
