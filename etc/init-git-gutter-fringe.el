(require 'git-gutter-fringe)

(setq git-gutter-fr:side 'right-fringe)
(set-face-foreground 'git-gutter-fr:modified "yellow")
(set-face-foreground 'git-gutter-fr:added    "blue")
(set-face-foreground 'git-gutter-fr:deleted  "white")
(setq-default left-fringe-width  20)
(setq-default right-fringe-width 20)

(provide 'init-git-gutter-fringe)
