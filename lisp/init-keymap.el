;;; init-keymap.el --- define all my user space keymap here
;;; Commentary:
;;; Code:

(require 'hydra)
(require 'hydra-posframe)

(setq hydra-posframe-parameters nil)
(hydra-posframe-mode -1)

(defhydra hydra-global (:exit t :hint nil)
  "
 Switch^^               Server^^                   Symbol
-------------------------------------------------------------------------------------
 [_b_] buffer           [_M-r_] restart            [_d_] declaration  [_i_] implementation  [_o_] documentation
 [_w_] workspace        [_S_]   shutdown           [_D_] definition   [_t_] type            [_r_] rename
                        [_M-s_] describe session   [_R_] references   [_s_] signature"

  
  
  ("d" lsp-find-declaration)
  ("D" lsp-ui-peek-find-definitions)
  ("R" lsp-ui-peek-find-references)
  ("i" lsp-ui-peek-find-implementation)
  ("t" lsp-find-type-definition)
  ("s" lsp-signature-help)
  ("o" lsp-describe-thing-at-point)
  ("r" lsp-rename)

  ("b" projectile-switch-to-buffer)
  ("w" projectile-switch-project)

  ("M-s" lsp-describe-session)
  ("M-r" lsp-restart-workspace)
  ("S" lsp-shutdown-workspace))

(global-set-key (kbd "C-c c") #'hydra-global/body)

(global-set-key (kbd "C-/") #'undo-tree-undo)
(global-set-key (kbd "C-?") #'undo-tree-redo)

(global-set-key [f8] 'treemacs)
(define-key treemacs-mode-map "tp" #'treemacs-projectile)
(define-key treemacs-mode-map [mouse-1] #'treemacs-single-click-expand-action)

(global-set-key [f12] 'multi-term-dedicated-toggle)

(global-set-key (kbd "C-s") 'swiper-isearch)
(global-set-key (kbd "C-r") 'swiper-isearch-backward)
(global-set-key (kbd "M-x") 'counsel-M-x)
(global-set-key (kbd "C-x C-f") 'counsel-find-file)
(global-set-key (kbd "M-y") 'counsel-yank-pop)
(global-set-key (kbd "C-x b") 'ivy-switch-buffer)
(global-set-key (kbd "C-x o") 'ace-window)

(provide 'init-keymap)
;;; init-keymap.el ends here
