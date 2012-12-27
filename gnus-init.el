;; Shortcuts
;; g    check for new mails
;; q    quit GNUS
;; c    mark all read in group
;; l    show only group with unread mails
;; L    show all subscribed groups
;; A A  show all groups on servers
;; m    create new mail
;; t    show all headers
;; ^    show server view
;; J s  synchronize fetch
;; J S  send all mails in queue
;; J j  switch online/offline
;; u    unmark
;; d    mark
;; Server view
;; O    open connection to server (when marked as denied)
;; J a  add server to agent
;; J r  remove server from agent
;; mail action
;; S R  reply
;; S W  wide reply
;; group summary view
;; / o  list all old mails
;; x    list unread mails
;; s    search in current mail
;; M-s  forward search in mails
;; M-r  backward search in mails
;; : TAB    in From header, BBDB completion

(setq imap-log t)
(setq imap-debug t)
(setq nnimap-debug t)

(setq gnus-directory "~/.News/")
(setq message-directory "~/.Mail/")

(setq gnus-thread-hide-subtree t)
(add-hook 'gnus-group-mode-hook 'gnus-topic-mode)

(setq gnus-fetch-old-headers t)

(setq gnus-asynchronous t)

(setq gnus-treat-display-smileys nil)

(setq gnus-update-message-archive-method nil)

(setq debug-on-error t)
(setq gnus-agent nil)

(setq gnus-agent-article-alist-save-format 2)
(setq gnus-agent-enable-expiration (quote DISABLE))
(setq gnus-agent-expire-unagentized-dirs nil)
(setq gnus-agent-go-online t)
(setq gnus-agent-prompt-send-queue t)
(setq gnus-agent-synchronize-flags t)
(setq gnus-agent-consider-all-articles t)
(setq agent-predicate 'true)

(setq gnus-cache-enter-articles (quote (ticked dormant unread read)))
(setq gnus-cache-remove-articles nil)
(setq gnus-cacheable-groups "^nnimap")
(setq gnus-default-directory "~/")
(setq gnus-treat-display-smileys t)

(require 'nnir)

(setq gnus-select-method '(nnnil ""))
;; (setq gnus-secondary-select-methods
;;       '((nnimap "Local"
;;                 (nnimap-address "localhost")
;;                 (nnimap-user "david@localhost")
;;                 (nnimap-authenticator login)
;;                 (nnimap-nov-is-evil t)
;;                 (nnimap-stream network))
;;         (nnfolder "/var/mail/david")
;;         ))

;; auto check new mails
(require 'gnus-demon)
(setq gnus-use-demon t)
(gnus-demon-add-handler 'gnus-group-get-new-news 10 2)
(gnus-demon-init)

(setq send-mail-function 'smtpmail-send-it) ; if you use `mail'
(setq message-send-mail-function 'smtpmail-send-it) ; if you use message/Gnus

(require 'smtpmail)
;; Use local smtp
(setq smtpmail-smtp-server "localhost"
      smtpmail-smtp-service 25)

;; (setq gnus-posting-styles
;;       '((".*"
;;          (signature-file "~/.signature")
;;          (name "David")
;;          (address "dax@happycoders.org")
;;          (gcc "nnimap+Local:INBOX.Sent"))
;;         ))

(require 'spam)
(setq spam-use-bogofilter t)
(setq gnus-install-group-spam-parameters nil)
;; (setq gnus-spam-process-newsgroups
;;       '(("nnimap+Local:.*" (gnus-group-spam-exit-processor-bogofilter
;;                                        gnus-group-ham-exit-processor-bogofilter)))
;;       ;; All messages marked as spam in these groups should go to spambox
;;       gnus-spam-process-destinations '((".*" "nnimap+Local:INBOX.Spam.Learning"))
;;       ;; and ham found into the spambox should be moved to reclassify group
;;       gnus-ham-process-destinations '(("INBOX.Spam.*" "nnimap+Local:INBOX"))
;;       spam-junk-mailgroups '("nnimap+Local:INBOX.Spam.Learning")
;;       spam-split-group "nnimap+Local:INBOX.Spam.Learning")
(setq spam-mark-ham-unread-before-move-from-spam-group t)

(setq gnus-spam-newsgroup-contents
      (quote (("INBOX.Spam.*" gnus-group-spam-classification-spam))))
(setq gnus-gcc-mark-as-read t)

(setq gnus-use-cache t)
(setq gnus-always-read-dribble-file t )
;; affichage de la date en relatif
(setq gnus-user-date-format-alist
      '(((gnus-seconds-today) . "     %k:%M")       ;dans la journée =      14:39
        ((+ 86400 (gnus-seconds-today)) . "hier %k:%M") ;hier            = hier 14:39
        ((+ 604800 (gnus-seconds-today)) . "%a  %k:%M") ;dans la semaine = sam  14:39
        ((gnus-seconds-month) . "%a  %d")       ;ce mois         = sam  28
        ((gnus-seconds-year) . "%b %d")         ;durant l'année  = mai  28
        (t . "%b %d '%y")))             ;le reste        = mai  28 '05
;; Indentation des threads
(setq gnus-thread-indent-level 2)

(setq gnus-summary-line-format "%O%U%R%z%d %B%(%[%4L: %-22,22f%]%) %s\n")
(setq gnus-summary-mode-line-format "Gnus: %p [%A / Sc:%4z] %Z")
(setq gnus-summary-same-subject "")
(setq gnus-sum-thread-tree-root "")
(setq gnus-sum-thread-tree-single-indent "")
(setq gnus-sum-thread-tree-leaf-with-other "+-> ")
(setq gnus-sum-thread-tree-vertical "|")
(setq gnus-sum-thread-tree-single-leaf "`-> ")

(setq gnus-novice-user nil)
(define-key gnus-summary-mode-map [(meta e)] 'gnus-summary-delete-article)
(define-key gnus-summary-mode-map [(meta m)] 'gnus-summary-move-article)
(define-key gnus-summary-mode-map [(control down)] 'gnus-summary-next-thread)
(define-key gnus-summary-mode-map [(control up)] 'gnus-summary-prev-thread)
(define-key gnus-summary-mode-map [k] 'gnus-summary-next-thread)
(define-key gnus-summary-mode-map [j] 'gnus-summary-prev-thread)

;; Namazu is a text search engine ; C-c C-n
(require 'gnus-namazu)
(gnus-namazu-insinuate)
(setq gnus-namazu-make-index-command "mknmz")
(setq gnus-namazu-make-index-arguments
      '("--all" "--mailnews" "--deny=^.*[^0-9].*$" "--exclude=(SPAM|ham)"))
(setq nnir-namazu-index-directory (concat gnus-directory "namazu"))
(setq nnir-namazu-remove-prefix (concat gnus-directory "agent/nnimap/"))

;; (require 'config-bbdb)
;; (add-hook 'gnus-startup-hook 'bbdb-insinuate-gnus)
;; (add-hook 'gnus-startup-hook 'bbdb-insinuate-message)

;; (require 'config-org-contacts)
;; (add-hook 'gnus-startup-hook 'org-contacts-gnus-insinuate)
(require 'init-google-contacts)

;; Mime/type handling
;; Inline images
(setq mm-attachment-override-types '("image/.*"))
(setq mm-discouraged-alternatives '("text/html" "text/richtext"))
;; w3m HTML rendering
(setq mm-text-html-renderer 'w3m)
(setq mm-inline-text-html-with-images t)
(setq gnus-mime-display-multipart-as-mixed t)
;; Don't start a browser for text/html only mails
(setq mm-automatic-display
      '("text/plain" "text/enriched" "text/richtext"
        "image/.*" "message/delivery-status" "multipart/.*" "message/rfc822"
        "text/x-patch" "application/pgp-signature" "application/emacs-lisp"))
(add-to-list 'gnus-buttonized-mime-types "multipart/alternative")

(defun my-returnreceipt ()
  "Insert a return-receipt-to in mail"
  (interactive "*")
  (save-excursion
    (goto-line 1)
    (search-forward "--text follows this line--")
    (beginning-of-line)
    (insert (concat "Return-receipt-to: " user-mail-address "\n"))))

(global-set-key "\C-c\C-r" 'my-returnreceipt)

(add-hook 'gnus-article-display-hook
          '(lambda ()
             (gnus-article-de-quoted-unreadable)
             (gnus-article-emphasize)
             (gnus-article-hide-boring-headers)
             (gnus-article-hide-headers-if-wanted)
             (gnus-article-hide-pgp)
             (gnus-article-highlight)
             (gnus-article-highlight-citation)
             (gnus-article-date-local)
             ))

(if (file-exists-p (concat config-dir "config-gnus-perso.el"))
    (require 'config-gnus-perso))
