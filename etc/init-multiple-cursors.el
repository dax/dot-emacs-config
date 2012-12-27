(global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)
(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-*") 'mc/mark-all-like-this)
(global-set-key (kbd "M-SPC") 'set-rectangular-region-anchor)

(eval-after-load "sgml-mode"
  '(progn
     (require 'rename-sgml-tag)
     (define-key sgml-mode-map (kbd "C-c C-r") 'rename-sgml-tag)
     ))

(provide 'init-multiple-cursors)
