(require 'mu4e)

(if (file-exists-p (concat config-dir "config-mu4e-perso.el"))
    (require 'config-mu4e-perso))

(setq mu4e-maildir "~/.Mail/")
(setq mu4e-attachment-dir "~/Downloads")

(setq mu4e-get-mail-command "true")

(setq mu4e-sent-folder "/sent")
(setq mu4e-drafts-folder "/drafts")
(setq mu4e-trash-folder  "/trash")
(setq mail-user-agent 'mu4e-user-agent)

(setq message-kill-buffer-on-exit t)
(setq mu4e-use-fancy-chars t)

(setq mu4e-headers-fields
      '((:date          .  25)
        (:flags         .   6)
        (:from          .  22)
        (:subject       .  nil)))

;; (setq mu4e-maildir-shortcuts
;;       '(("/INBOX" . ?i)
;;         ))

;; Try to display images in mu4e
(setq mu4e-view-show-images t
      mu4e-view-image-max-width 800)

(setq mu4e-confirm-quit nil
      mu4e-headers-date-format "%d/%b/%Y %H:%M" ; date format
      mu4e-html2text-command "html2text -width 72"
      )

(setq message-sendmail-envelope-from 'header)

;; (setq mu4e-bookmarks
;;       '(("maildir:/* flag:unread" "Unread all" ?u)

;; (setq mu4e-reply-to-address "email@test.com"
;;       user-mail-address "email@test.com"
;;       user-full-name  "User")

(require 'gnus-dired)
;; make the `gnus-dired-mail-buffers' function also work on
;; message-mode derived modes, such as mu4e-compose-mode
(defun gnus-dired-mail-buffers ()
  "Return a list of active message buffers."
  (let (buffers)
    (save-current-buffer
      (dolist (buffer (buffer-list t))
        (set-buffer buffer)
        (when (and (derived-mode-p 'message-mode)
                   (null message-sent-message-via))
          (push (buffer-name buffer) buffers))))
    (nreverse buffers)))

(setq gnus-dired-mail-mode 'mu4e-user-agent)
(add-hook 'dired-mode-hook 'turn-on-gnus-dired-mode)

(setq message-sendmail-envelope-from 'header)

;; sending mail
(setq send-mail-function 'smtpmail-send-it)
(setq message-send-mail-function 'smtpmail-send-it)

(require 'smtpmail)
;; Use local smtp
(setq smtpmail-smtp-server "localhost"
      smtpmail-smtp-service 25)

(setq mu4e-update-interval 60)

(provide 'mu4e-init)
