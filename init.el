;; my theme
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")
;;(load-theme 'dracula t)
(load-theme 'atom-one-dark t)

;; close welcome
(setq inhibit-startup-message t)

;; line number
(global-linum-mode t)

;; directory tree
(add-to-list 'load-path "~/.emacs.d/neotree")
(require 'neotree)
(global-set-key [f8] 'neotree-toggle)
(setq neo-theme (if (display-graphic-p) 'icons 'arrow))

;; shell
(setq explicit-shell-file-name "/bin/bash")
(setq shell-file-name "bash")
(setq explicit-bash.exe-args '("--noediting" "--login" "-i"))
(setenv "SHELL" shell-file-name)
(add-hook 'comint-output-filter-functions 'comint-strip-ctrl-m)
(global-set-key [f1] 'shell)

;; org mode




(require 'package)
;;(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
;;(add-to-list 'package-archives '("marmalade" . "https://marmalade-repo.org/packages/"))


(package-initialize)






