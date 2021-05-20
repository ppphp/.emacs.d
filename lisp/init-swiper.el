;;; package --- Summary
;;; Commentary:
;;; Code:

(use-package counsel
  :config
  (counsel-mode 1))

(use-package swiper
  :custom
  (swiper-action-recenter t))

(use-package ivy
  :custom
  (ivy-use-virtual-buffers t)
  (ivy-count-format "(%d/%d) ")
  (ivy-extra-directories nil)
  :config
  (ivy-mode 1)
  (use-package ivy-rich
    :config
    (ivy-rich-mode 1)
    (use-package all-the-icons-ivy-rich
      :config
      (all-the-icons-ivy-rich-mode 1)))
  (use-package ivy-posframe
    :custom
    (ivy-posframe-display-functions-alist '((t . ivy-posframe-display-at-frame-center)))
    :config
    (ivy-posframe-mode 1)))

(setq enable-recursive-minibuffers t)

(use-package ivy-xref
  :init
  (setq xref-show-definitions-function #'ivy-xref-show-defs))

;; disable random freeze
(defun my-minibuffer-setup-hook ()
  (setq gc-cons-threshold most-positive-fixnum))

(defun my-minibuffer-exit-hook ()
  (setq gc-cons-threshold 800000))

(add-hook 'minibuffer-setup-hook #'my-minibuffer-setup-hook)
(add-hook 'minibuffer-exit-hook #'my-minibuffer-exit-hook)


(provide 'init-swiper)
;;; init-swiper.el ends here
