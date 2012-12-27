(require 'powerline)
(setq powerline-arrow-shape 'arrow)   ;; the default

(set-face-attribute 'mode-line nil
                    :foreground "#f6f3e8" :background "#2B7598"
                    :box nil)
(set-face-attribute 'mode-line-inactive nil
                    :foreground "#f6f3e8" :background "#656565"
                    :box nil)

(provide 'init-powerline)
