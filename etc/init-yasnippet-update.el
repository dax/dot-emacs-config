(require 'yasnippet)
(yas/initialize)
(setq yas/root-directory (list (concat config-dir "snippets")
                               (concat packages-dir "yasnippet-update/snippets")))
(yas/reload-all)

(require 'dropdown-list)
(setq yas/prompt-functions '(yas/dropdown-prompt
                             yas/ido-prompt
                             yas/completing-prompt))

(provide 'init-yasnippet-update)
