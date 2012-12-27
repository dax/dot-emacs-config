(require 'config-org-mode)

(require 'org-contacts)
(add-to-list 'org-contacts-files (concat dot-org-dir "contacts.org"))

(eval-after-load "org-capture"
  '(progn
     (add-to-list 'org-capture-templates
                  '("c" "Contacts" entry (file (concat dot-org-dir "contacts.org"))
                    "* %(org-contacts-template-name)
:PROPERTIES:
:EMAIL: %(org-contacts-template-email)
:END:"))
     ))

(provide 'config-org-contacts)
