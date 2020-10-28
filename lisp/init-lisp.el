;;; package --- Summary
;;; Commentary:
;;; Code:

(require 'major-mode-hydra)

(use-package elisp-mode
  :mode ("\\.el\\'" . emacs-lisp-mode)
  :mode-hydra
  (emacs-lisp-mode
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
     ("i" info-lookup-symbol "info lookup")))))

(use-package rainbow-delimiters
  :hook (emacs-lisp-mode . rainbow-delimiters-mode))

(provide 'init-lisp)
;;; init-lisp.el ends here
