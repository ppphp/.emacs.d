;;; package --- Summary
;;; Commentary:
;;; Code:

;; global helm init
;;(require 'helm)
;;(require 'helm-config)
;;(helm-mode 1)

(require 'ivy)
(require 'counsel)
(require 'swiper)

(ivy-mode 1)
(setq ivy-use-virtual-buffers t)
(setq enable-recursive-minibuffers t)
(counsel-mode 1)

(setq enable-recursive-minibuffers t)

(setq swiper-action-recenter t)



;; disable random freeze
(defun my-minibuffer-setup-hook ()
  (setq gc-cons-threshold most-positive-fixnum))

(defun my-minibuffer-exit-hook ()
  (setq gc-cons-threshold 800000))

(add-hook 'minibuffer-setup-hook #'my-minibuffer-setup-hook)
(add-hook 'minibuffer-exit-hook #'my-minibuffer-exit-hook)


(provide 'init-swiper)
;;; init-swiper.el ends here
