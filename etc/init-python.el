;; Python
(autoload 'python "python")

(eval-after-load "python"
  '(progn
     (print "Loading python-mode config")

     (add-hook 'python-mode-hook
               (function (lambda ()
                           (flymake-mode t)
                           (global-set-key "\C-c\C-v" 'my-flymake-show-next-error))))
     )
  )

(provide 'init-python)
