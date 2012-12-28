(setq debug-on-error t)
;;(setq inhibit-default-init t)

(defvar base-dir
  (file-name-directory (or load-file-name
                           (when (boundp 'bytecomp-filename)
                             bytecomp-filename)
                           buffer-file-name)))

(defvar config-dir
  (concat base-dir "etc/"))

(defvar packages-dir
  (concat base-dir "packages/"))

(defvar site-lisp-dir
  (concat base-dir "site-lisp/"))

(add-to-list 'load-path packages-dir)
(add-to-list 'load-path site-lisp-dir)
(add-to-list 'load-path config-dir)

(require 'init-basic)

;; (deft)
