;; Gnus
(setq gnus-init-file (concat base-dir "gnus-init.el"))
(add-to-list 'load-path (concat packages-dir "nognus/contrib"))
;; TODO add message-x

(add-to-list
 'command-switch-alist
 '("-gnus" . (lambda (&rest ignore)
              (setq start-server-emacs nil)
              ;; Start Gnus when Emacs starts
              (add-hook 'emacs-startup-hook (lambda ()
                                              (gnus)
                                              (make-frame-command)
                                              (find-file "~/.org/organizer.org")) t)
              ;; Exit Emacs after quitting Gnus
              (add-hook 'gnus-after-exiting-gnus-hook
                        'save-buffers-kill-emacs))))

(provide 'init-nognus)
