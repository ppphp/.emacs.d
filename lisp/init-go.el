;;; package --- Summary
;;; Commentary:
;;; Code:

;; major mode
(require 'go-mode)

(add-hook 'go-mode-hook #'lsp)

;; format on save
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


;; debug protocol
(require 'dap-go)

(provide 'init-go)
;;; init-go.el ends here
