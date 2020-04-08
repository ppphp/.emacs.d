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

(projectile-persp-bridge find-file)

(provide 'init-layout)
;;; init-layout.el ends here
