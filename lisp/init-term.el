;;; package --- Summary
;;; Commentary:
;;; Code:
;; https://blog.7nobo.me/2016/07/11/200000.html

(if (not (fboundp 'ad-advised-definition-p))
 (defun ad-advised-definition-p (definition)
   "Return non-nil if DEFINITION was generated from advice information."
   (if (or (ad-lambda-p definition)
           (macrop definition)
           (ad-compiled-p definition))
       (let ((docstring (ad-docstring definition)))
         (and (stringp docstring)
              (get-text-property 0 'dynamic-docstring-function docstring))))))

(require 'multi-term)
(require 'eshell)
(require 'shell)

(provide 'init-term)
;;; init-term.el ends here
