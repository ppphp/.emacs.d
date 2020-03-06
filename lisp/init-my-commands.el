;;; package --- Summary
;;; Commentary:
;;; Code:


(defun update-my-config ()
  "."
  (interactive)
  (call-process-shell-command "make" nil t t "-C" "~/.emacs.d"))


;;; init-my-commands.el ends here
