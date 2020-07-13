;;; package --- Summary
;;; Commentary:
;;; Code:

;; major mode
(require 'go-mode)

(add-hook 'go-mode-hook #'lsp)

;; format on save
(setq goimports "~/.emacs.d/bin/goimports")
(require 'formatters-goimports)

(add-hook 'go-mode-hook #'formatters)

;; generate go test from function code

;; flycheck
(require 'flycheck-golangci-lint)
(eval-after-load 'flycheck                                       
  '(add-hook 'flycheck-mode-hook #'flycheck-golangci-lint-setup))
(setq flycheck-golangci-lint-fast t)
(setq flycheck-golangci-lint-enable-all t)

;; coding helpers
(require 'go-fill-struct)
(require 'go-gen-test)
(require 'go-tag)
(require 'go-impl)
(require 'go-playground)

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
