(package-initialize)

;; theme
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")
;;(load-theme 'dracula t)
(load-theme 'atom-one-dark t)

;; close welcome
(setq inhibit-startup-message t)

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


;; org mode
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cc" 'org-capture)
(global-set-key "\C-cb" 'org-switchb)

