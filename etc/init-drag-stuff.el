(require 'drag-stuff)
;; (drag-stuff-global-mode t)

(setq drag-stuff-mode-map (make-sparse-keymap))
(define-key drag-stuff-mode-map (kbd "<M-S-up>") 'drag-stuff-up)
(define-key drag-stuff-mode-map (kbd "<M-S-down>") 'drag-stuff-down)
(define-key drag-stuff-mode-map (kbd "<M-S-right>") 'drag-stuff-right)
(define-key drag-stuff-mode-map (kbd "<M-S-left>") 'drag-stuff-left)

(provide 'init-drag-stuff)
