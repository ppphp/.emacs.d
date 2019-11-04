;;; package --- Summary
;;; Commentary:
;;; Code:

(require 'dart-mode)

(add-hook 'dart-mode-hook #'lsp)

(require 'formatters)
(formatters-register-client
 (make-formatters-client :command "dartfmt" :args '("-w" "${file}") :mode 'dart-mode))
(add-hook 'dart-mode-hook #'formatters)

(require 'flutter)

;;; init-dart.el ends here
