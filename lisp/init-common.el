;;; package --- Summary
;;; Commentary:
;;; Code:

(prefer-coding-system 'utf-8)
(set-default-coding-systems 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(custom-set-variables
 '(inhibit-startup-screen t))
(custom-set-faces
 )
(setq debug-on-error t)
(when (window-system)
  (scroll-bar-mode -1)
  (tool-bar-mode -1)
  (menu-bar-mode -1)
  )

(require 'savehist)
(setq enable-recursive-minibuffers t
             history-length 1000
             savehist-additional-variables '(mark-ring
                                             global-mark-ring
                                             search-ring
                                             regexp-search-ring
                                             extended-command-history)
             savehist-autosave-interval 300)

(setq frame-title-format
    '(""
      "%b"
      (:eval
       (let ((project-name (projectile-project-name)))
         (unless (string= "-" project-name)
           (format " in [%s]" project-name))))))

(setq auto-save-default nil)
(prefer-coding-system 'utf-8)
(setq delete-by-moving-to-trash t)
(setq-default major-mode 'text-mode)
(setq sentence-end "\\([。！？]\\|……\\|[.?!][]\"')}]*\\($\\|[ \t]\\)\\)[ \t\n]*")
(setq sentence-end-double-space nil)
(require 'multiple-cursors)
;(global-key-binding "<C-return>" rectangle-mark-mode)

(setq make-backup-files nil) ; stop creating backup~ files
(setq backup-inhibited t)
(setq auto-save-default nil) ; stop creating #autosave# files
    (defconst emacs-tmp-dir (expand-file-name (format "emacs%d" (user-uid)) temporary-file-directory))
    (setq backup-directory-alist
        `((".*" . ,emacs-tmp-dir)))
    (setq auto-save-file-name-transforms
        `((".*" ,emacs-tmp-dir t)))
    (setq auto-save-list-file-prefix
          emacs-tmp-dir)

(require 'hl-line)
(global-hl-line-mode t)
(require 'rainbow-delimiters)
(rainbow-delimiters-mode t)

(require 'editorconfig)
(editorconfig-mode 1)
(if (display-graphic-p)
    (progn
      (setq initial-frame-alist
            '(
              (width . 144) ; chars
              (height . 60) ; lines
	      ))
      (setq default-frame-alist
            '(
              (width . 144)
              (height . 60)))
      ))

(setq inhibit-startup-screen t
      initial-buffer-choice  nil)

(provide 'init-common)
;;; init-common.el ends here
