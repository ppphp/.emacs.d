

(package-initialize)

;; theme
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")
;;(load-theme 'dracula t)
(load-theme 'atom-one-dark t)

;; overall setting
(global-linum-mode t) 
;; show line number
(scroll-bar-mode -1) ;; hide scroll bar
(setq make-backup-files nil) ;; cancel auto-save file
(setq create-lockfiles nil) ;; prevent # file
(menu-bar-mode -1)
(tool-bar-mode -1)

(add-to-list 'load-path "~/.emacs.d/sublimity")
(require 'sublimity)
(sublimity-mode 1)
(setq sublimity-scroll-weight 10
      sublimity-scroll-drift-length 5)
(setq sublimity-map-size 20)
(setq sublimity-map-fraction 0.3)
(setq sublimity-map-text-scale -7)
(add-hook 'sublimity-map-setup-hook
	  (lambda ()
	    (setq buffer-face-mode-face '(:family "Monospace"))
            (buffer-face-mode)))


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
(add-to-list 'load-path "~/.emacs.d/emacs-memoize")
(add-to-list 'load-path "~/.emacs.d/all-the-icons.el")
(require 'all-the-icons)
(add-to-list 'load-path "~/.emacs.d/neotree")
(require 'neotree)
(global-set-key [f8] 'neotree-toggle)
(setq neo-theme (if (display-graphic-p) 'icons 'arrow))

;; project
(add-to-list 'load-path "~/.emacs.d/projectile")
(require 'projectile)
(projectile-mode)
(global-set-key [f2] 'projectile-find-file)

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

;; markdown mode
(add-to-list 'load-path "~/.emacs.d/markdown-mode")
(autoload 'markdown-mode "markdown-mode"
   "Major mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))


;; javascript format
(add-to-list 'load-path "~/.emacs.d/js2-mode")
(add-to-list 'load-path "~/.emacs.d/js-format")
(require 'js-format)
(global-set-key (kbd "C-x j b") 'js-format-buffer)




;; markdown mode
(autoload 'gfm-mode "markdown-mode"
   "Major mode for editing GitHub Flavored Markdown files" t)
(add-to-list 'auto-mode-alist '("README\\.md\\'" . gfm-mode))


(add-to-list 'load-path "~/.emacs.d/web-mode")
(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.[agj]sp\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.mustache\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.djhtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.hbs\\'" . web-mode))



