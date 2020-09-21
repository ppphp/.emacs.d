;;; package --- Summary
;;; Commentary:
;;; Code:

;; major mode

(use-package go-mode
  :config
  (use-package flycheck-golangci-lint
    :after (flycheck)
    :hook (flycheck-mode . flycheck-golangci-lint-setup)
    :custom
    (flycheck-golangci-lint-fast t)
    (flycheck-golangci-lint-enable-all t))
  (use-package go-fill-struct)
  (use-package go-gen-test
    :custom
    (go-gen-test-executable "~/.emacs.d/bin/gotests"))
  (use-package go-tag)
  (use-package go-impl)
  (use-package go-playground))

(add-hook 'go-mode-hook #'lsp)

;; format on save
(setq goimports "~/.emacs.d/bin/goimports")
(require 'formatters-goimports)

(add-hook 'go-mode-hook (lambda () (add-hook 'before-save-hook #'formatters)))

(require 'major-mode-hydra)

(major-mode-hydra-define go-mode nil
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
   (("c" go-coverage))))


;; debug protocol
(require 'dap-go)

(provide 'init-go)
;;; init-go.el ends here
