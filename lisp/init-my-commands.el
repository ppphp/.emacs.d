;;; package --- Summary
;;; Commentary:
;;; Code:


(defun update-my-config ()
  "."
  (interactive)
  (call-process-shell-command "make" nil t t "-C" "~/.emacs.d"))

(defun jump-to-buffer (name)
  "Jump to a buffer with NAME,"
  (interactive)
  )


;;; init-my-commands.el ends here
