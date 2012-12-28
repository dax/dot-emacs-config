(autoload 'camelCase-mode "camelCase-mode" nil t)

(define-globalized-minor-mode my-global-camelCase-mode camelCase-mode
  (lambda () (camelCase-mode 1)))

(my-global-camelCase-mode)

(provide 'init-camelcase-mode)
