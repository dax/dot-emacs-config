(autoload 'js3-mode "js3" nil t)
(add-to-list 'auto-mode-alist '("\\.js\\'" . js3-mode))

(setq js3-auto-indent-p t)
(setq js3-consistent-level-indent-inner-bracket t)
(setq js3-enter-indents-newline t)
(setq js3-highlight-level 3)
(setq js3-indent-level 2)
(setq js3-indent-on-enter-key t)
(setq js3-indent-tabs-mode nil)

(provide 'init-js3-mode)
