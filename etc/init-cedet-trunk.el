(eval-after-load "semantic"
  '(progn
     (print "Loading Semantic")
     (require 'semantic/ia)
     (require 'semantic/bovine/gcc)
     (require 'semantic/db-javap)
     ))

(eval-after-load "senator"
  '(progn
     (print "Loading Senator")
     ))

;; Cedet configuration
(setq semanticdb-default-save-directory tmp-dir)
(setq semanticdb-default-system-save-directory tmp-dir)
(setq semantic-default-submodes '(global-semanticdb-minor-mode
                                  global-semantic-mru-bookmark-mode
                                  ;;       global-cedet-m3-minor-mode
                                  global-semantic-highlight-func-mode
                                  global-semantic-stickyfunc-mode
                                  global-semantic-decoration-mode
                                  global-semantic-idle-local-symbol-highlight-mode
                                  global-semantic-idle-scheduler-mode
                                  global-semantic-idle-completions-mode
                                  global-semantic-idle-summary-mode))

(setq srecode-map-save-file (concat tmp-dir "srecode-map.el"))

(semantic-mode 1)
(when (cedet-gnu-global-version-check t)
  (semanticdb-enable-gnu-global-databases 'c-mode)
  (semanticdb-enable-gnu-global-databases 'c++-mode))

;; enable ctags for some languages:
;;  Unix Shell, Perl, Pascal, Tcl, Fortran, Asm
;; Not Yet bundled with Emacs
(when (cedet-ectag-version-check)
  (semantic-load-enable-primary-exuberent-ctags-support))

(defun my-c-mode-cedet-hook ()
  (add-to-list 'ac-sources 'ac-source-gtags)
  (add-to-list 'ac-sources 'ac-source-semantic))
(add-hook 'c-mode-common-hook 'my-c-mode-cedet-hook)

(add-to-list 'load-path (concat packages-dir "cedet-trunk/contrib"))
(load-file (concat packages-dir "cedet-trunk/contrib/contrib-loaddefs.el"))

;;(global-semantic-tag-folding-mode 1)

(defun my-c-mode-common-hook ()
  (define-key c-mode-base-map (kbd "C-o") 'eassist-list-methods))
(add-hook 'c-mode-common-hook 'my-c-mode-common-hook)

(provide 'init-cedet)
