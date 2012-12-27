(add-to-list 'load-path (concat base-dir "g-client"))
(load-library "g")
;;(setq g-user-email "user@gmail.com")
(gcal-emacs-calendar-setup)
(setq g-html-handler 'w3m-buffer)

(provide 'config-google)
