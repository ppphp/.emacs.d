;;; package --- Summary
;;; Commentary:
;;; Code:

(use-package benchmark-init
  ;; To disable collection of benchmark data after init is done.
  :hook (after-init . benchmark-init/deactivate)
  :init
  (define-advice define-obsolete-function-alias (:filter-args (ll) fix-obsolete)
  (let ((obsolete-name (pop ll))
        (current-name (pop ll))
        (when (if ll (pop ll) "1"))
        (docstring (if ll (pop ll) nil)))
    (list obsolete-name current-name when docstring))))

(prefer-coding-system 'utf-8)
(set-default-coding-systems 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-language-environment 'utf-8)
(set-clipboard-coding-system 'utf-8)
(set-buffer-file-coding-system 'utf-8)
(set-selection-coding-system 'utf-8)
(modify-coding-system-alist 'process "*" 'utf-8)
(set-file-name-coding-system 'utf-8)

(setq locale-coding-system 'utf-8
      default-process-coding-system '(utf-8 . utf-8))

(when (fboundp 'set-charset-priority)
  (set-charset-priority 'unicode))

(custom-set-variables
 '(inhibit-startup-screen t))

(setq debug-on-error t)

;; command is alt
(when (eq system-type 'darwin)
    (setq mac-option-modifier 'meta))

;;(when (window-system)
  (scroll-bar-mode -1)
  (tool-bar-mode -1)
  (menu-bar-mode -1);;)

(require 'f)
(use-package recentf
  :custom
  (recentf-save-file (f-join user-emacs-directory "local/recentf")))

(use-package savehist
  :custom
  (savehist-additional-variables '(mark-ring
				   global-mark-ring
				   search-ring
				   regexp-search-ring
				   extended-command-history))
  (savehist-autosave-interval 300))

(setq enable-recursive-minibuffers t
      history-length 1000)

(setq frame-title-format
    '(""
      "%b"
      (:eval
       (let ((project-name (projectile-project-name)))
         (unless (string= "-" project-name)
           (format " in [%s]" project-name))))))

(setq auto-save-default nil)
(setq delete-by-moving-to-trash t)
(setq-default major-mode 'text-mode)
(setq sentence-end "\\([。！？]\\|……\\|[.?!][]\"')}]*\\($\\|[ \t]\\)\\)[ \t\n]*")
(setq sentence-end-double-space nil)

;; i dont know how to use it
;(require 'multiple-cursors)
;(global-key-binding "<C-return>" rectangle-mark-mode)

(setq make-backup-files nil) ; stop creating backup~ files
(setq backup-inhibited t)

(defconst emacs-tmp-dir (expand-file-name (format "emacs%d" (user-uid)) temporary-file-directory))
(setq backup-directory-alist
      `((".*" . ,emacs-tmp-dir)))
(setq auto-save-file-name-transforms
      `((".*" ,emacs-tmp-dir t)))
(setq auto-save-list-file-prefix
      emacs-tmp-dir)

;; highlight the line where the cursor is on.
(use-package hl-line
  :config
  (global-hl-line-mode t))

(setq-default cursor-type 'bar)

(show-paren-mode 1)

;; editor config is no longer popular
;(require 'editorconfig)
;(editorconfig-mode 1)

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
      initial-buffer-choice nil)


;; copy from centaur
(defconst centaur-homepage
  "https://github.com/ppphp/.emacs.d"
  "The Github page of Centaur Emacs.")

(defconst sys/win32p
  (eq system-type 'windows-nt)
  "Are we running on a WinTel system?")

(defconst sys/linuxp
  (eq system-type 'gnu/linux)
  "Are we running on a GNU/Linux system?")

(defconst sys/macp
  (eq system-type 'darwin)
  "Are we running on a Mac system?")

(defconst sys/mac-x-p
  (and (display-graphic-p) sys/macp)
  "Are we running under X on a Mac system?")

(defconst sys/linux-x-p
  (and (display-graphic-p) sys/linuxp)
  "Are we running under X on a GNU/Linux system?")

(defconst sys/cygwinp
  (eq system-type 'cygwin)
  "Are we running on a Cygwin system?")

(defconst sys/rootp
  (string-equal "root" (getenv "USER"))
  "Are you using ROOT user?")

;; prevent the editor blocking frequently
(setq gc-cons-threshold (if (display-graphic-p) 400000000 100000000))

(use-package origami
  :config
  (global-origami-mode))

;; never used
;(require 'hl-todo)
;(add-hook 'prog-mode-hook 'hl-todo-mode)
;(setq hl-todo-keyword-faces
;      '(("TODO:"   . "#FF0000")
;        ("FIXME:"  . "#FF0000")
;        ("DEBUG:"  . "#A020F0")
;        ("GOTCHA:" . "#FF4500")
;        ("STUB:"   . "#1E90FF")))

;;(setq desktop-path (list "~/.emacs.d/local/"))
;;(desktop-save-mode +1)

(use-package undo-tree
  :bind (("C-/" . undo-tree-undo)
	 ("C-?" . undo-tree-redo))
  :custom
  (undo-tree-auto-save-history nil)
  :config
  (global-undo-tree-mode))

(defalias 'yes-or-no-p 'y-or-n-p)

;; delete until not blank character
(delete-selection-mode 1)

(setq create-lockfiles nil)

(use-package so-long
  :hook (after-init . global-so-long-mode)
  :custom
  (so-long-threshold 10000))

(use-package olivetti
  :disabled
  :hook
  (org-mode . olivetti-mode)
  (texinfo-mode . olivetti-mode)
  :custom
  (olivetti-body-with 100))

(use-package fountain-mode)

(setq word-wrap-by-category t)

(jit-lock-mode nil)

(use-package markdown-mode)

(use-package anzu
  :config
  (global-anzu-mode +1))

(pixel-scroll-precision-mode)

(provide 'init-common)
;;; init-common.el ends here
