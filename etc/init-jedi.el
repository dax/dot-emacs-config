(setq jedi:setup-keys t)
(add-hook 'python-mode-hook 'jedi:setup)
(add-hook 'python-mode-hook 'jedi:ac-setup)
(add-hook 'ein:connect-mode-hook 'ein:jedi-setup)

(provide 'init-jedi)
