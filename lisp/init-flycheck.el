;;; package --- Summary
;;; Commentary:
;;; Code:

(use-package flycheck
  :hook (after-init . global-flycheck-mode)
  :config

  (if (display-graphic-p)
      (use-package flycheck-posframe
	:hook
	(flycheck-mode . flycheck-posframe-mode))
    (use-package flycheck-pos-tip
      :custom
      (flycheck-pos-tip-timeout 30)
      :hook
      (global-flycheck-mode . flycheck-pos-tip-mode)))

  (use-package flycheck-popup-tip
    :hook (flycheck-mode . flycheck-popup-tip-mode)))

(provide 'init-flycheck)
;;; init-flycheck.el ends here
