;;; package --- Summary
;;; Commentary:
;;; Code:

(use-package doom-modeline
  :hook
  (messages-buffer-mode . (lambda () (setq mode-line-format nil)))
  :custom
  (doom-modeline-icon (display-graphic-p))
  (doom-modeline-major-mode-color-icon t)
  (doom-modeline-minor-modes nil)
  (doom-modeline-enable-word-count nil)
  (doom-modeline-mu4e nil)
  (doom-modeline-indent-info nil)
  (doom-modeline-github nil)
  (doom-modeline-persp-name t)
  (doom-modeline-project-detection 'projectile)
  (doom-modeline-lsp t)
  (doom-modeline-gnus nil)
  (doom-modeline-irc nil)
  :config
  (use-package nyan-mode
    :config
    (nyan-mode 1))
  (use-package parrot
    :custom
    (parrot-num-rotations 10000)
    :config
    (parrot-mode))

  (doom-modeline-mode 1))

;(setq mode-line-format
;      (list
;       '(:eval (list (nyan-create)))
;       ))

(provide 'init-modeline)

;;; init-modeline.el ends here
