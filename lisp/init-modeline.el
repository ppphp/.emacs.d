;;; package --- Summary
;;; Commentary:
;;; Code:

(require 'doom-modeline)
(require 'nyan-mode)
(setq
 doom-modeline-major-mode-color-icon t
      doom-modeline-minor-modes nil
      doom-modeline-mu4e nil
      doom-modeline-github t
      doom-modeline-github-interval 300
      )
;(setq mode-line-format
;      (list
;       '(:eval (list (nyan-create)))
;       ))
(nyan-mode 1)
(doom-modeline-mode 1)

(provide 'init-modeline)

;;; init-modeline.el ends here

