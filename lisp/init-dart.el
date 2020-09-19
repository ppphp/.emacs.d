;;; package --- Summary
;;; Commentary:
;;; Code:

(require 'lsp)
(require 'lsp-dart)
(require 'dart-mode)
(require 'dart-server)
(require 'f)

(add-hook 'dart-mode-hook #'lsp)

(add-to-list 'auto-mode-alist '("\\.dart\\'" . dart-mode))
(autoload 'dart-mode "dart-mode")

(setq lsp-dart-sdk-dir "~/flutter/bin/cache/dart-sdk/")

;; (require 'formatters)
;; (formatters-register-client
;;  (make-formatters-client :command "dartfmt" :args '("-w" "${file}") :mode 'dart-mode))
;; (add-hook 'dart-mode-hook #'formatters)

(require 'flutter)

(with-eval-after-load "projectile"
  (add-to-list 'projectile-project-root-files-bottom-up "pubspec.yaml")
  (add-to-list 'projectile-project-root-files-bottom-up "BUILD"))

(require 'hover)


(provide 'init-dart)
;;; init-dart.el ends here
