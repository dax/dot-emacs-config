(autoload 'slime-js-reload "slime-js")
(autoload 'slime-js-minor-mode "slime-js")
(autoload 'slime-js-refresh-css "slime-js")
(autoload 'slime-js-embed-css "slime-js")
;; (require 'slime-js)
(global-set-key [f5] 'slime-js-reload)

(add-hook 'js3-mode-hook
          (lambda ()
            (slime-js-minor-mode 1)))

(add-hook 'css-mode-hook
          (lambda ()
            (define-key css-mode-map "\M-\C-x" 'slime-js-refresh-css)
            (define-key css-mode-map "\C-c\C-r" 'slime-js-embed-css)))

(provide 'init-swank-js)
