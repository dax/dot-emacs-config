(add-to-list 'load-path (concat base-dir "zencoding"))
(autoload 'zencoding-mode "zencoding-mode")
(add-hook 'sgml-mode-hook 'zencoding-mode)

(provide 'init-zencoding)
