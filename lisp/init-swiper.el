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
  ;; xref initialization is different in Emacs 27 - there are two different
  ;; variables which can be set rather than just one
  (when (>= emacs-major-version 27)
    (setq xref-show-definitions-function #'ivy-xref-show-defs))
  ;; Necessary in Emacs <27. In Emacs 27 it will affect all xref-based
  ;; commands other than xref-find-definitions (e.g. project-find-regexp)
  ;; as well
  (setq xref-show-xrefs-function #'ivy-xref-show-xrefs))

;; disable random freeze
(defun my-minibuffer-setup-hook ()
  (setq gc-cons-threshold most-positive-fixnum))

(defun my-minibuffer-exit-hook ()
  (setq gc-cons-threshold 800000))

(add-hook 'minibuffer-setup-hook #'my-minibuffer-setup-hook)
(add-hook 'minibuffer-exit-hook #'my-minibuffer-exit-hook)


(provide 'init-swiper)
;;; init-swiper.el ends here
