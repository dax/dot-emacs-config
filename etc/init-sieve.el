(add-to-list 'load-path (concat packages-dir "sieve"))

;; Sieve mode
(autoload 'sieve-mode (concat packages-dir "sieve/sieve") "Sieve mode" t)
(add-to-list 'auto-mode-alist '("\\.siv$" . sieve-mode))
(add-to-list 'auto-mode-alist '("\\.sieve$" . sieve-mode))

(provide 'init-sieve)
