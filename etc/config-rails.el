(require 'rails)

(eval-after-load "rails"
  '(progn
     (print "Loading Rails configuration")

     (require 'config-flymake)
     ;; for ruby - just override default flymake-ruby-init function
     (defun flymake-ruby-init ()
       (condition-case er
           (let* ((temp-file (flymake-init-create-temp-buffer-copy
                              'flymake-create-temp-in-system-tempdir))
                  (local-file  (file-relative-name
                                temp-file
                                (file-name-directory buffer-file-name))))
             (list rails-ruby-command (list "-c" local-file)))
         ('error ())))
     ;; (add-to-list 'flymake-allowed-file-name-masks
     ;;              '("\\.rb\\'" flymake-ruby-init))
     ))

(provide 'config-rails)
