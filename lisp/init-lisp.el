;;; package --- Summary
;;; Commentary:
;;; Code:

(require 'major-mode-hydra)

(use-package rainbow-delimiters)
(use-package emacs-lisp-mode
  :mode "\\.el\\'"
  :after (rainbow-delimiters)
  :hook (emacs-lisp-mode . rainbow-delimiters-mode)
  :mode-hydra
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

(provide 'init-lisp)
;;; init-lisp.el ends here
