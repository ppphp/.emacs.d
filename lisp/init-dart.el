;;; package --- Summary
;;; Commentary:
;;; Code:

(require 'dart-mode)

(add-hook 'dart-mode-hook #'lsp)

(add-to-list 'auto-mode-alist '("\\.dart\\'" . dart-mode))
(autoload 'dart-mode "dart-mode")

(require 'formatters)
(formatters-register-client
 (make-formatters-client :command "dartfmt" :args '("-w" "${file}") :mode 'dart-mode))
(add-hook 'dart-mode-hook #'formatters)

(require 'flutter)

(provide 'init-dart)
;;; init-dart.el ends here
