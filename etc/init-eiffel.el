;;editer les fichiers eiffel
(add-to-list 'auto-mode-alist '("\\.e\\'" . eiffel-mode))
(autoload 'eiffel-mode "eiffel-mode" "Major mode for Eiffel programs" t)

(provide 'init-eiffel)
