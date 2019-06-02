
;; global helm init
(add-to-list 'load-path "~/.emacs.d/modules/popup-el")
(add-to-list 'load-path "~/.emacs.d/modules/emacs-async")
(add-to-list 'load-path "~/.emacs.d/modules/helm")
(require 'helm)
(require 'helm-config)
(helm-mode 1)
(provide 'init-helm)
