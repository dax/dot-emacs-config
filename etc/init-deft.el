(require 'deft)

;; first time run deft-setup
(setq deft-extension "org")
(setq deft-directory "~/Documents/notes")
(setq deft-text-mode 'org-mode)
(global-set-key [f8] 'deft)

(provide 'init-deft)
