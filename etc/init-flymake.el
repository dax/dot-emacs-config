;; flymake
(eval-after-load "flymake"
  '(progn
     (print "Loading flymake")
     (defun my-flymake-show-next-error()
       (interactive)
       (flymake-goto-next-error)
       (flymake-display-err-menu-for-current-line))
     (defun flymake-create-temp-in-system-tempdir (filename prefix)
       (make-temp-file (or prefix "flymake")))

     ;; for python
     (defun flymake-pyflakes-init ()
       (let* ((temp-file (flymake-init-create-temp-buffer-copy
                          'flymake-create-temp-in-system-tempdir))
              (local-file (file-relative-name
                           temp-file
                           (file-name-directory buffer-file-name))))
         (list "pycheckers"  (list local-file))))
     (add-to-list 'flymake-allowed-file-name-masks
                  '("\\.py\\'" flymake-pyflakes-init))
     ))

(provide 'init-flymake)
