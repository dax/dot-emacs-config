;;editer les fichiers ada
(add-to-list 'auto-mode-alist '("\\.adb\\'" . ada-mode))
(add-to-list 'auto-mode-alist '("\\.ads\\'" . ada-mode))
(autoload 'ada-mode "ada-mode" "Major mode for Ada programs" t)

(provide 'init-ada)
