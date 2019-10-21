;;; package --- Summary
;;; Commentary:
;;; Code:

(define-key projectile-mode-map (kbd "s-t") 'projectile-find-file)
(define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)

(global-set-key [f8] 'treemacs)
(define-key treemacs-mode-map "tp" #'treemacs-projectile)
(define-key treemacs-mode-map [mouse-1] #'treemacs-single-click-expand-action)

(define-key global-map "\C-cs" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)
(define-key lsp-mode-map "\C-cfd" 'lsp-find-definition)
(define-key lsp-mode-map "\C-cfr" 'lsp-find-references)
(define-key lsp-mode-map "\C-cr" 'lsp-rename)
;(global-unset-key (kbd "<C-mouse-1>"))
;(global-set-key (kbd "<C-mouse-1>") 'lsp-find-definition)



(define-key global-map "\C-cms" 'magit-status)
(define-key global-map "\C-cml" 'magit-log-all-branches)



(define-key global-map "\C-cmt" 'multi-term)
(global-set-key [f12] 'multi-term-dedicated-toggle)
(define-key term-mode-map (kbd "C-c <left>") 'multi-term-left)
(define-key term-mode-map (kbd "C-c <right>") 'multi-term-right)


(global-set-key (kbd "C-<prior>")  'centaur-tabs-backward)
(global-set-key (kbd "C-<next>") 'centaur-tabs-forward)


(global-set-key (kbd "C-s") 'swiper-isearch)
(global-set-key (kbd "C-r") 'swiper-isearch-backward)
(global-set-key (kbd "M-x") 'counsel-M-x)
(global-set-key (kbd "C-x C-f") 'counsel-find-file)
(global-set-key (kbd "M-y") 'counsel-yank-pop)
(global-set-key (kbd "<f1> f") 'counsel-describe-function)
(global-set-key (kbd "<f1> v") 'counsel-describe-variable)
(global-set-key (kbd "<f1> l") 'counsel-find-library)
(global-set-key (kbd "<f2> i") 'counsel-info-lookup-symbol)
(global-set-key (kbd "<f2> u") 'counsel-unicode-char)
(global-set-key (kbd "<f2> j") 'counsel-set-variable)
(global-set-key (kbd "C-x b") 'ivy-switch-buffer)
(global-set-key (kbd "C-c v") 'ivy-push-view)
(global-set-key (kbd "C-c V") 'ivy-pop-view)
(global-set-key (kbd "C-c c") 'counsel-compile)
(global-set-key (kbd "C-c g") 'counsel-git)
(global-set-key (kbd "C-c j") 'counsel-git-grep)
(global-set-key (kbd "C-c L") 'counsel-git-log)
(global-set-key (kbd "C-c k") 'counsel-rg)
(global-set-key (kbd "C-c n") 'counsel-fzf)
(global-set-key (kbd "C-x l") 'counsel-locate)
(global-set-key (kbd "C-c J") 'counsel-file-jump)
(global-set-key (kbd "C-S-o") 'counsel-rhythmbox)
(global-set-key (kbd "C-c w") 'counsel-wmctrl)
(global-set-key (kbd "C-c C-r") 'ivy-resume)
(global-set-key (kbd "C-c b") 'counsel-bookmark)
(global-set-key (kbd "C-c d") 'counsel-descbinds)
(global-set-key (kbd "C-c g") 'counsel-git)
(global-set-key (kbd "C-c o") 'counsel-outline)
(global-set-key (kbd "C-c t") 'counsel-load-theme)
(global-set-key (kbd "C-c F") 'counsel-org-file)




(provide 'init-keymap)
;;; init-keymap.el ends here
