;;; package --- Summary
;;; Commentary:
;;; Code:

;; global company init
(require 'org)

(setq org-agenda-files (list (f-join user-emacs-directory "org")))

(setq org-log-done t)

(setq org-agenda-include-diary t)
(setq org-agenda-diary-file (f-join user-emacs-directory "org" "diary.org"))
(setq diary-file (f-join user-emacs-directory "org" "diary.org"))



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

(provide 'init-org)
;;; init-dashboard.el ends here
