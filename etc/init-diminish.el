(require 'diminish)

(diminish 'highlight-fixmes-mode)
(diminish 'global-visual-line-mode)

(eval-after-load "wrap-region"
  '(progn
     (diminish 'wrap-region-mode)
     ))

(eval-after-load "simple"
  '(progn
     (diminish 'visual-line-mode)
     ))

(eval-after-load "undo-tree"
  '(progn
     (diminish 'undo-tree-mode)
     ))

(eval-after-load "helm-mode"
  '(progn
     (diminish 'helm-mode)
     ))

(eval-after-load "filladapt"
  '(progn
     (diminish 'filladapt-mode)
     ))

(eval-after-load "eldoc"
  '(progn
     (diminish 'eldoc-mode)
     ))

(eval-after-load "auto-complete"
  '(progn
     (diminish 'auto-complete-mode)
     ))

(eval-after-load "camelCase-mode"
  '(progn
     (diminish 'camelCase-mode)
     ))

(provide 'init-diminish)
