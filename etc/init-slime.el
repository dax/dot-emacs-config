(autoload 'define-slime-contrib "slime")

;; slime
(eval-after-load "slime"
  '(progn
     (print "Loading slime")
     (setq inferior-lisp-program "clisp")
     (slime-setup)
     ))

(defun ielm-auto-complete ()
  "Enables `auto-complete' support in \\[ielm]."
  (setq ac-sources '(ac-source-functions
                     ac-source-variables
                     ac-source-features
                     ac-source-symbols
                     ac-source-words-in-same-mode-buffers))
  (add-to-list 'ac-modes 'inferior-emacs-lisp-mode)
  (auto-complete-mode 1))
(add-hook 'ielm-mode-hook 'ielm-auto-complete)

(provide 'init-slime)
