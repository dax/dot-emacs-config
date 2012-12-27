;; bbdb
(add-to-list 'load-path (concat packages-dir "bbdb/lisp"))
(setq bbdb-file "~/.org/.bbdb")

(require 'config-gnus)
(require 'vcard)
(require 'bbdb-autoloads)

(defun bbdb-vcard-import-directory (directory)
  (interactive "DDirectory containing vCards to import: ")
  (let ((vcard-files (directory-files directory t ".*\.vcf")))
    (mapcar (lambda (vcard-file) (bbdb-vcard-import-file vcard-file)) vcard-files)
    ))

(provide 'init-bbdb)
