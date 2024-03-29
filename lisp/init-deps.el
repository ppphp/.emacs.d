;;; package --- Summary
;;; Commentary:
;;; Code:
(require 'package)
(add-to-list 'package-archives '("gnu"   . "https://elpa.gnu.org/packages/"))
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(package-initialize)

;; (unless (package-installed-p 'use-package)
;;   (package-refresh-contents)
;;   (package-install 'use-package))

(eval-and-compile
  (setq use-package-always-ensure t
        use-package-expand-minimally t))

(require 'use-package)

;; require some basic lib
(use-package s)
(use-package f)
(use-package page-break-lines)

(provide 'init-deps)
;;; init-deps.el ends here
