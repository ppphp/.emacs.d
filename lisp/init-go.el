;;; package --- Summary
;;; Commentary:
;;; Code:

;; major mode

(require 'major-mode-hydra)

(use-package go-mode
  :mode "\\.go\\'"
  :mode-hydra
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
   (("c" go-coverage)))
  :config
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
    :diminish)
  (use-package lsp-go
    :custom
    (lsp-clients-go-server (f-join user-emacs-directory "bin" "gopls"))))

(add-hook 'go-mode-hook #'lsp)

;; format on save
(setq goimports "~/.emacs.d/bin/goimports")
(require 'formatters-goimports)

(add-hook 'go-mode-hook (lambda () (add-hook 'before-save-hook #'formatters)))

;; debug protocol
(use-package dap-go
  :defer)

(provide 'init-go)
;;; init-go.el ends here
