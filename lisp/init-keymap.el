;;; package --- Summary
;;; Commentary:
;;; Code:

(require 'hydra)
(require 'major-mode-hydra)
(require 'hydra-posframe)
;;(hydra-posframe-mode)

(global-set-key (kbd "M-SPC") #'major-mode-hydra)

(major-mode-hydra-define emacs-lisp-mode nil
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
    ("i" info-lookup-symbol "info lookup"))))

(pretty-hydra-define hydra-global
  (:color amaranth :quit-key "q")
  (
   "magit"
   (
    ("p" magit-push "git push")
    ("u" magit-pull "git pull(update)")
    ("s" magit-status "git status")
   )
  )
)

(global-set-key (kbd "C-c c") #'hydra-global/body)

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
(provide 'init-keymap)
;;; init-keymap.el ends here
