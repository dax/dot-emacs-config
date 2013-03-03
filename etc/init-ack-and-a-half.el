(require 'ack-and-a-half)
;; Create shorter aliases
(defalias 'ack 'ack-and-a-half)
(defalias 'ack-same 'ack-and-a-half-same)
(defalias 'ack-find-file 'ack-and-a-half-find-file)
(defalias 'ack-find-file-same 'ack-and-a-half-find-file-same)

(global-set-key (kbd "C-x f") 'ack-and-a-half-find-file)
;; (global-set-key (kbd "C-x g") 'ack-and-a-half)

(provide 'init-ack-and-a-half)
