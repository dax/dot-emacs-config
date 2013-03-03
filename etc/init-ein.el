(setq ein:use-auto-complete t)
(setq ein:use-auto-complete-superpack t)
(setq ein:connect-default-notebook "8888/ipythonNotebook")
(add-hook 'python-mode-hook 'ein:connect-to-default-notebook)

(provide 'init-ein)
