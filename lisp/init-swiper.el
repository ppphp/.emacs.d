;;; package --- Summary
;;; Commentary:
;;; Code:

(require 'ivy)
(require 'counsel)
(require 'swiper)

(ivy-mode 1)
(setq ivy-use-virtual-buffers t)
(setq enable-recursive-minibuffers t)

(require 'ivy-rich)
(ivy-rich-mode 1)
(require 'all-the-icons-ivy-rich)
(all-the-icons-ivy-rich-mode 1)
(require 'ivy-posframe)
(setq ivy-posframe-display-functions-alist '((t . ivy-posframe-display-at-frame-center)))
(ivy-posframe-mode 1)

(counsel-mode 1)

(setq ivy-count-format "(%d/%d) ")
(setq ivy-extra-directories nil)

(setq enable-recursive-minibuffers t)

(setq swiper-action-recenter t)

;;(require 'ivy-xref)
;;(setq xref-show-definitions-function #'ivy-xref-show-defs)

;; disable random freeze
(defun my-minibuffer-setup-hook ()
  (setq gc-cons-threshold most-positive-fixnum))

(defun my-minibuffer-exit-hook ()
  (setq gc-cons-threshold 800000))

(add-hook 'minibuffer-setup-hook #'my-minibuffer-setup-hook)
(add-hook 'minibuffer-exit-hook #'my-minibuffer-exit-hook)


(provide 'init-swiper)
;;; init-swiper.el ends here
