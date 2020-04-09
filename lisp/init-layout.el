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
