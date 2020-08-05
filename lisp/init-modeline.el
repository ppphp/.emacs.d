;;; package --- Summary
;;; Commentary:
;;; Code:

(require 'doom-modeline)
(require 'nyan-mode)
(setq doom-modeline-icon (display-graphic-p)
      doom-modeline-major-mode-color-icon t
      doom-modeline-minor-modes nil
      doom-modeline-enable-word-count nil
      doom-modeline-mu4e nil
      doom-modeline-indent-info nil
      doom-modeline-github nil
      doom-modeline-persp-name t
      doom-modeline-project-detection 'projectile
      doom-modeline-lsp t
      doom-modeline-gnus nil
      doom-modeline-irc nil
      )
;(setq mode-line-format
;      (list
;       '(:eval (list (nyan-create)))
;       ))
(nyan-mode 1)
(doom-modeline-mode 1)

(require 'parrot)
(parrot-mode)
(setq parrot-num-rotations 10000)

(provide 'init-modeline)

;;; init-modeline.el ends here
