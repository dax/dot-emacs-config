;; Templates
;; jde-gen-buffer-templates
;; jde-wiz-*

;; C-c C-v j    insert javadoc
;; C-c C-v C-z	import class
;; C-c C-v z	import all classes
;; C-c C-v C-b	build
;; C-c C-v C-d	debug
;; C-c C-v C-f	find
;; C-c C-v C-p	save project
;; C-c C-v C-r	run
;; C-c C-v C-g	open class at point

;; JDB
;; C-c C-a C-b	jde-debug-toggle-breakpoint
;; C-c C-a C-c	jde-debug-cont
;; C-c C-a C-d	jde-jdb-dump
;; C-c C-a C-e	jde-jdb-eval
;; C-c C-a C-l	jde-jdb-locals
;; C-c C-a C-n	jde-debug-step-into
;; C-c C-a C-o	jde-debug-step-out
;; C-c C-a C-p	jde-jdb-print
;; C-c C-a C-r	jde-debug-run
;; C-c C-a C-s	jde-debug-step-over
;; C-c C-a C-u	jde-debug-up
;; C-c C-a C-v	jde-jdb-set

;; X ref DB
;; jde-xref-make-xref-db
;; M-x jde-xref-first-caller (C-c C-v a)
;; M-x jde-xref-next-caller (C-c C-v n)
;; M-x jde-xref-display-call-tree
;; M-x jde-xref-list-uncalled-functions

;; add to exec path to find jtags script
(add-to-list 'exec-path (concat base-dir "jde/lisp"))

(add-to-list 'load-path (concat base-dir "jde/lisp"))

(require 'config-cedet)

(require 'jde-autoload)

(require 'config-ido)

(add-hook 'java-mode-hook (lambda ()
			    (setq c-basic-offset 2
				  tab-width 2
				  indent-tabs-mode t)))

(eval-after-load "jde"
  '(progn

     (require 'semantic-ia)
     (defun jde-complete-ido ()
       "Custom method completion for JDE using semantic, ido-mode and yasnippet."
       (interactive)
       (let ((completion-list '()))
	 (dolist (element (jde-complete-find-completion-for-pair (jde-complete-get-pair (jde-parse-java-variable-at-point) nil) nil))
	   (add-to-list 'completion-list (cdr element)))
	 (if completion-list
	     (let ((choise (ido-completing-read "> " completion-list)) (method))
	       (unless (string-match "^.*()$" choise)
		 (setq method (replace-regexp-in-string ")" "})"(replace-regexp-in-string ", " "}, ${" (replace-regexp-in-string "(" "(${" choise)))))
	       (delete-region (point) (re-search-backward "\\." (line-beginning-position)))
	       (insert ".")
	       (if method
		   (yas/expand-snippet (point) (point) method)
		 (insert choise)))
	   )
	 (let* ((a (semantic-analyze-current-context (point)))
		(completion-list (semantic-ia-get-completions a (point))))
	   (if completion-list
	       (let ((choise (ido-completing-read "> " completion-list)) (method))
		 (delete-region (car (oref a bounds))
				(cdr (oref a bounds)))
		 (goto-char (car (oref a bounds)))
		 (insert choise))
	     ;; else
	     (message "No completions at this point")))))

     (defun jde-update-jtags (jtags-directory)
       "Call 'jtags' script (it must be in the path) from directory of
file 'tags-file-name' with 'jtags-directory as argument'"
       (let ((default-directory (file-name-directory tags-file-name)))
	 (apply #'start-process '("Jtags"
		"*Messages*" "jtags" ""))))

     ;; JDE Configuration
     (setq jde-complete-function 'jde-complete-ido)
     (define-key jde-mode-map [(meta /)] 'jde-complete)
     (define-key jde-mode-map [(control c)(control v)(g)] 'jde-gen-buffer)
     (define-key jde-mode-map [(control c)(control v)(c)] 'jde-gen-code)

     (defun jde-after-save-hook ()
       (if (eq major-mode 'jde-mode)
	   (progn
	     (remove-hook 'after-save-hook 'jde-after-save-hook)
	     ;; TODO : find reindent-file implementation
	     ;;	     (reindent-file)
	     ;;	     (jde-import-all)
	     (jde-import-organize)
	     (save-buffer)
	     ;;	     (jde-compile)
	     (add-hook 'after-save-hook 'jde-after-save-hook)
	     )))
     ;; TODO : does not work
     ;;	(jde-import-kill-extra-imports))))
     (setq jde-compile-option-nowarn t)
     (setq jde-compile-enable-kill-buffer t)
     (add-hook 'after-save-hook 'jde-after-save-hook)

     (require 'config-eproject)
     (define-project-type java-maven (generic)
       (or (look-for "pom.xml"))
       :relevant-files ("\\.java$" "\\.xml$" "\\.properties$"))

     (add-hook 'java-maven-project-file-visit-hook
               (lambda ()
                 (message "Found Java Maven project in %s" (eproject-root))
		 (jde-set-variables
		  '(jde-build-function (quote (jde-mvn-build)))
		  '(jde-compile-option-command-line-args
		    (quote ("-Xlint:all" "-Xlint:-serial"))))
		 (setq tags-file-name (concat (eproject-root) "TAGS"))
		 (with-pom ()
		   (jde-mvn-set-jde-variables :include-dependency-sources))
		 ;; Reload Bsh classpath with new classpath
		 (jde-wiz-set-bsh-project)
		 (flymake-mode t)
		 ;; Map C-c C-v C-t to run current test
		 (define-key jde-mode-map [remap jde-jdb-menu-debug-applet]
		   'jde-mvn-build-run-test)

		 ;; EDE project config
		 (ede-maven2-project "Maven"
				     :name "maven dir"
				     :directory (eproject-root)
				     :file (expand-file-name "pom.xml" (eproject-root))
				     :include-path '("/src/main/java" "/src/main/resources")
				     :header-match-regexp "\\.java"
				     )
                 ))
     ;; To continue
     ;; jde-wiz-overrided-method
     ;; jde-wiz-implement-interface
     ;; jde-wiz-get-set-methods

    (require 'jde-eclipse-compiler-server)
    (add-to-list 'flymake-allowed-file-name-masks
                 '("\\.java\\'" jde-ecj-server-flymake-init jde-ecj-flymake-cleanup))

     (setq jde-enable-abbrev-mode t)
     (setq jde-debugger '("JDEbug"))
     (setq jde-import-auto-sort t)
     (setq flymake-no-changes-timeout 2.0)
     ;;     (setq flymake-log-level 3)
     (setq flymake-start-syntax-check-on-newline nil)
     (setq jde-compiler '(("eclipse java compiler server" "~/emacs/ecj-3.3M6.jar")))
     (setq jde-ecj-command-line-args (quote ("-d" "none" "-1.5" "-warn:unused,semicolon" "-maxProblems" "50" "-g")))
     ))

(provide 'config-jdee)
