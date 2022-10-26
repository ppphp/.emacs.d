;;; package --- Summary
;;; Commentary:
;;; Code:

;; major mode

(use-package go-mode
  :mode "\\.go\\'"
  :config
  (use-package major-mode-hydra
    :config
  (major-mode-hydra-define emacs-lisp-mode nil
   ("gen test"
   (("a" go-gen-test-all "gen")
    ("e" go-gen-test-exported "function")
    ("b" go-gen-test-dwim "dwim"))
   "run test"
   (("t" go-test-current-test "function")
    ("f" go-test-current-file "file")
    ("p" go-test-current-project "project"))
  "play"
   (("l" go-playground))
  "coverage"
   (("c" go-coverage)))))
  (use-package flycheck-golangci-lint
    :hook (flycheck-mode . flycheck-golangci-lint-setup)
    :custom
    (flycheck-golangci-lint-fast t)
    (flycheck-golangci-lint-enable-all nil))
  (use-package go-fill-struct)
  (use-package go-gen-test
    :custom
    (go-gen-test-executable "~/.emacs.d/bin/gotests"))
  (use-package go-tag)
  (use-package go-impl)
  (use-package go-playground
    :diminish))

(add-hook 'go-mode-hook #'lsp)

(provide 'init-go)
;;; init-go.el ends here
