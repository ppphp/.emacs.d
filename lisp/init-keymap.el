;;; init-keymap.el --- define all my user space keymap here
;;; Commentary:
;;; Code:

(require 'hydra)
(require 'major-mode-hydra)
(require 'hydra-posframe)

(setq hydra-posframe-parameters nil)
(hydra-posframe-mode -1)

(global-set-key (kbd "M-SPC") #'major-mode-hydra)

(major-mode-hydra-define+ emacs-lisp-mode nil
  ("Eval"
   (("b" eval-buffer "buffer")
    ("e" eval-defun "defun")
    ("r" eval-region "region"))
   "REPL"
   (("I" ielm "ielm"))
   "Test"
   (("t" ert "prompt")
    ("T" (ert t) "all")
    ("F" (ert :failed) "failed"))
   "Doc"
   (("d" describe-foo-at-point "thing-at-pt")
    ("f" describe-function "function")
    ("v" describe-variable "variable")
    ("i" info-lookup-symbol "info lookup")))
  )

(pretty-hydra-define hydra-global
  (:color amaranth :quit-key "SPC")
  (
   "move"
   (
    ("d" forward-char "right")
    ("a" backward-char "left")
    ("s" next-line "down")
    ("w" previous-line "up")
   )
   "syntax"
   (
    ("q" xref-find-definitions "definition")
    ("e" xref-find-references "reference")
    ("o" origami-toggle-node "toggle")
    ("i" yas-insert-snippet "snippet")
    )
   "buffer"
   (
    ("<left>" tabbar-backward-tab "left buffer")
    ("<right>" tabbar-forward-tab "right buffer")
    ("<up>" eyebrowse-next-window-config "left layout")
    ("<down>" eyebrowse-prev-window-config "right layout")
    ("C-<left>" previous-buffer "prev buffer")
    ("C-<up>" eyebrowse-last-window-config "prev layout")
    )
   "scm"
   (
    ("l" magit-log-all "git log")
    ("p" magit-pull "git pull")
    ("b" magit-branch "git branch")
    )
   "project"
   (
    ("f" projectile-find-file "find")
    ("r" projectile-grep "grep")
    ("t" treemacs-find-file "locate")
    )
  )
  )

(global-set-key (kbd "C-c c") #'hydra-global/body)

(global-set-key (kbd "C-/") #'undo-tree-undo)
(global-set-key (kbd "C-?") #'undo-tree-redo)

(global-set-key [f8] 'treemacs)
(define-key treemacs-mode-map "tp" #'treemacs-projectile)
(define-key treemacs-mode-map [mouse-1] #'treemacs-single-click-expand-action)

(global-set-key [f12] 'multi-term-dedicated-toggle)

(global-set-key (kbd "C-s") 'swiper-isearch)
(global-set-key (kbd "C-r") 'swiper-isearch-backward)
(global-set-key (kbd "M-x") 'counsel-M-x)
(global-set-key (kbd "C-x C-f") 'counsel-find-file)
(global-set-key (kbd "M-y") 'counsel-yank-pop)
(global-set-key (kbd "C-x b") 'ivy-switch-buffer)
(global-set-key (kbd "C-x o") 'ace-window)

(provide 'init-keymap)
;;; init-keymap.el ends here
