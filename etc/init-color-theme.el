(setq custom-theme-directory (concat config-dir "themes"))
(eval-when-compile
  (add-to-list 'load-path (concat config-dir "themes")))
(add-to-list 'load-path (concat config-dir "themes"))

(color-theme-initialize)
(setq color-theme-is-global t)

(print "Init color theme wombat")
(require 'color-theme-wombat)
(color-theme-wombat)

(provide 'init-color-theme)
