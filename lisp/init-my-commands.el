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

(defun ppphp/open-config ()
  "."
  (interactive)
  (counsel-find-file (f-join user-emacs-directory "lisp/")))

(provide 'init-my-commands)
;;; init-my-commands.el ends here
