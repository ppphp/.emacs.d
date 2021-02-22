;;; package --- Summary
;;; Commentary:
;;; Code:


(defun update-my-config ()
  "."
  (interactive)
  (call-process-shell-command "make" nil t t "-C" "~/.emacs.d"))

(defun ppphp/open-config ()
  "."
  (interactive)
  (counsel-find-file (f-join user-emacs-directory "lisp/")))

(defun ppphp/clone-subpackage (url)
  "."
  (interactive "s")
  (let ((name (f-filename url)))
    (call-process-shell-command "git" nil t t "clone" "--depth" "1" url (f-join user-emacs-directory "subpackage" name))))

(provide 'init-my-commands)
;;; init-my-commands.el ends here
