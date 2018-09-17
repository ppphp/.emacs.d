(package-initialize)

;; theme
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")
;;(load-theme 'dracula t)
(load-theme 'atom-one-dark t)

;; close welcome
;; (setq inhibit-startup-message t)

;; overall setting
(global-linum-mode t) ;; show line number
(scroll-bar-mode -1) ;; hide scroll bar


;; encoding && font https://www.reddit.com/r/emacs/comments/5twcka/which_font_do_you_use/
(set-language-environment "UTF-8")
(set-default-coding-systems 'utf-8-unix)
(add-to-list 'default-frame-alist '(font . "DejaVu Sans Mono-12"))

;; multiterm
(add-to-list 'load-path "~/.emacs.d/multi-term")
(require 'multi-term)
(setq multi-term-program "/bin/bash")
(global-set-key [f12] 'multi-term-dedicated-toggle)



;; directory tree
(add-to-list 'load-path "~/.emacs.d/neotree")
(require 'neotree)
(global-set-key [f8] 'neotree-toggle)


;; project
(add-to-list 'load-path "~/.emacs.d/projectile")
(require 'projectile)
(projectile-mode)
(global-set-key [f5] 'projectile-find-file)

;; org mode
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cc" 'org-capture)
(global-set-key "\C-cb" 'org-switchb)


;; input manager
(add-to-list 'load-path "~/.emacs.d/popup-el")
(add-to-list 'load-path "~/.emacs.d/emacs-async")
(add-to-list 'load-path "~/.emacs.d/pyim")
(add-to-list 'load-path "~/.emacs.d/pyim-basedict")
(require 'pyim)
(require 'pyim-basedict)
(pyim-basedict-enable)
(setq default-input-method "pyim")
(global-set-key (kbd "C-\\") 'toggle-input-method)


;; magit
(add-to-list 'load-path "~/.emacs.d/dash")
(add-to-list 'load-path "~/.emacs.d/magit-popup")
(add-to-list 'load-path "~/.emacs.d/with-editor")
(add-to-list 'load-path "~/.emacs.d/ghub")
(add-to-list 'load-path "~/.emacs.d/magit/lisp")
(require 'magit)
(global-set-key (kbd "C-x g") 'magit-status)


;; dashboard
(add-to-list 'load-path "~/.emacs.d/page-break-lines")
(add-to-list 'load-path "~/.emacs.d/emacs-dashboard")
(require 'dashboard)
(dashboard-setup-startup-hook)
(setq dashboard-banner-logo-title "Welcome to Emacs Dashboard")
(setq dashboard-startup-banner 'logo)
(setq dashboard-items '((recents  . 5)
                        (bookmarks . 5)
                        (projects . 5)
                        (agenda . 5)
                        (registers . 5)))




