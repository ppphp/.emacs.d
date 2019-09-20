;;; package --- Summary
;;; Commentary:
;;; Code:
(require 'treemacs)
(require 'treemacs-projectile)
;(treemacs-add-and-display-current-project)
;(treemacs-add-project projectile-project-root)

(setq treemacs-persist-file (f-join user-emacs-directory "local" "treemacs-persist"))
(with-eval-after-load 'treemacs
    (with-eval-after-load 'all-the-icons
      (let ((all-the-icons-default-adjust 0)
            (tab-width 1))
        ;; Root icon
        (setq treemacs-icon-root-png
              (concat (all-the-icons-octicon "repo" :height 0.8 :v-adjust -0.2)  " "))
        ;; File icons
        (setq treemacs-icon-open-png
              (concat
               (all-the-icons-octicon "chevron-down" :height 0.8 :v-adjust 0.1)
               "\t"
               (all-the-icons-octicon "file-directory" :v-adjust 0)
               "\t")
              treemacs-icon-closed-png
              (concat
               (all-the-icons-octicon "chevron-right" :height 0.8
                                      :v-adjust 0.1 :face 'font-lock-doc-face)
               "\t"
               (all-the-icons-octicon "file-directory" :v-adjust 0 :face 'font-lock-doc-face)
               "\t"))
        ;; File type icons
        (setq treemacs-icons-hash (make-hash-table :size 200 :test #'equal)
              treemacs-icon-fallback (concat
                                      "\t\t"
                                      (all-the-icons-faicon "file-o" :face 'all-the-icons-dsilver
                                                            :height 0.8 :v-adjust 0.0)
                                      "\t")
              treemacs-icon-text treemacs-icon-fallback)

        (dolist (item all-the-icons-icon-alist)
          (let* ((extension (car item))
                 (func (cadr item))
                 (args (append (list (caddr item)) '(:v-adjust -0.05) (cdddr item)))
                 (icon (apply func args))
                 (key (s-replace-all '(("^" . "") ("\\" . "") ("$" . "") ("." . "")) extension))
                 (value (concat "\t\t" icon "\t")))
            (unless (ht-get treemacs-icons-hash (s-replace-regexp "\\?" "" key))
              (ht-set! treemacs-icons-hash (s-replace-regexp "\\?" "" key) value))
            (unless (ht-get treemacs-icons-hash (s-replace-regexp ".\\?" "" key))
              (ht-set! treemacs-icons-hash (s-replace-regexp ".\\?" "" key) value)))))))

(treemacs-follow-mode nil)
(treemacs-tag-follow-mode nil)

(provide 'init-treemacs)
;;; init-treemacs.el ends here
