(require 'diminish)

(diminish 'highlight-fixmes-mode)
(diminish 'global-visual-line-mode)
(eval-after-load "wrap-region"
  '(progn
     (diminish 'wrap-region-mode)
     ;; (diminish 'wrap-region-global-mode)
     ))

(eval-after-load "yas/minor"
  '(progn
     (diminish 'yas/minor-mode)
;;     (diminish 'yas/global-mode)
     ))

(eval-after-load "undo-tree"
  '(progn
     (diminish 'undo-tree-mode)
     ))

(eval-after-load "helm"
  '(progn
     ;;(diminish 'helm-mode)
     ))

(provide 'init-diminish)
