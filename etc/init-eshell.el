(global-set-key (kbd "C-x m") 'eshell)

(setq eshell-directory-name (concat tmp-dir "eshell"))

(eval-after-load "eshell"
  '(progn
     (require 'em-smart)
     (setq eshell-where-to-jump 'begin)
     (setq eshell-review-quick-commands nil)
     (setq eshell-smart-space-goes-to-end t)
     ))

(provide 'init-eshell)
