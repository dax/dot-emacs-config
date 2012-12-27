(require 'eproject)
(require 'eproject-extras)

(define-key eproject-mode-map (kbd "C-c C-g") 'eproject-grep)

(setq eproject-completing-read-function 'eproject--ido-completing-read)

(provide 'init-eproject)
