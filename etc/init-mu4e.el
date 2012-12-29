(add-to-list
 'command-switch-alist
 '("-mu4e" . (lambda (&rest ignore)
               (setq start-server-emacs nil)
               ;; Start Gnus when Emacs starts
               (add-hook 'emacs-startup-hook (lambda ()
                                               (add-to-list 'load-path base-dir)
                                               (require 'mu4e-init)
                                               (mu4e)
                                               (make-frame-command)
                                               (find-file "~/.org/organizer.org")) t)
               ;; Exit Emacs after quitting Gnus
               (add-hook 'gnus-after-exiting-gnus-hook
                         'save-buffers-kill-emacs))))

(provide 'init-mu4e)
