(require 'yasnippet)
(setq yas-snippet-dirs (list (concat config-dir "snippets")
                             (concat packages-dir "yasnippet/snippets")))
(yas-global-mode 1)

(add-hook 'change-major-mode-hook 'yas-exit-all-snippets)

(provide 'init-yasnippet)
