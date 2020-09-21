;;; package --- Summary
;;; Commentary:
;;; Code:

(use-package dart-mode
  :config
  (with-eval-after-load "projectile"
    (add-to-list 'projectile-project-root-files-bottom-up "pubspec.yaml")
    (add-to-list 'projectile-project-root-files-bottom-up "BUILD"))

  (use-package lsp-dart
    :hook (dart-mode . lsp))

  (use-package flutter)
  (use-package flutter-l10n-flycheck
    :after flutter
    :config
    (flutter-l10n-flycheck-setup))

  (use-package hover))


(require 'formatters)
(formatters-register-client
 (make-formatters-client :command "dartfmt" :args '("-w" "${file}") :mode 'dart-mode))
(add-hook 'dart-mode-hook #'formatters)



(provide 'init-dart)
;;; init-dart.el ends here
