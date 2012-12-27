(require 'mumamo)

(setq mumamo-chunk-coloring 'no-chunks-colored)
(setq mumamo-background-colors nil)

(require 'config-nxml)

(defun mumamo-chunk-inlined-actionscript (pos min max)
  "Find <![CDATA[ ... ]]> in MXML file to set actionscript-mode."
  (mumamo-quick-static-chunk pos min max "<![CDATA[" "]]>" nil 'actionscript-mode nil))

(define-mumamo-multi-major-mode mxml-mumamo-mode
  "MXML multi major mode : nxml-mode + actionscript-mode"
  ("Flex MXML file format" mxml-mode
   (mumamo-chunk-inlined-actionscript)))

(define-derived-mode mxml-mode nxhtml-mode "MXML"
  "Like `nxhtml-mode' but with MXML rnc.
You should not use this! This is just a part of
`mxml-mumamo-mode', use that instead."
  nil
;;   (let* ((schema-dir "./")
;;          (mxml-rnc (expand-file-name "mxml.rnc" schema-dir)))
;;     (when (or (not rng-current-schema-file-name)
;;               (string= "xhtml.rnc" (file-name-nondirectory rng-current-schema-file-name)))
;;       (condition-case err
;;           (progn
;;             (rng-set-schema-file-1 mxml-rnc)
;;             (rng-what-schema)
;;             )
;;         (nxml-file-parse-error
;;          (nxml-display-file-parse-error err)))
;;       (when rng-validate-mode
;;         (rng-validate-mode -1)
;;         (rng-validate-mode 1))))
  )

(add-to-list 'auto-mode-alist '("\\.mxml" . mxml-mumamo-mode))

(defun mxml-complete ()
  ;;(nxml-namespace-name symbol"mx") -> http://www.adobe.com/2006/mxml
  (message "MXML complete")
  )

(defun after-mxml-mumamo-mode ()
  ""
  (add-hook 'nxml-completion-hook 'mxml-complete nil t)
  (message "MXML mode loaded")
  )

(add-hook 'mxml-mumamo-mode-hook 'after-mxml-mumamo-mode)

(eval-after-load "actionscript-mode"
  '(progn
     (require 'jde-java-font-lock)
     (face-spec-reset-face 'actionscript-preprocessor-kwds-face)
     (set-face-attribute 'actionscript-preprocessor-kwds-face nil
			 :inherit 'font-lock-preprocessor-face)

     (face-spec-reset-face 'actionscript-constant-kwds-face)
     (set-face-attribute 'actionscript-constant-kwds-face nil
			 :inherit 'font-lock-constant-face)

     (face-spec-reset-face 'actionscript-global-funcs-face)
     (set-face-attribute 'actionscript-global-funcs-face nil
			 :inherit 'font-lock-function-name-face)

     (face-spec-reset-face 'actionscript-global-classes)
     (set-face-attribute 'actionscript-global-classes nil
			 :inherit 'font-lock-type-face)

     (face-spec-reset-face 'actionscript-global-props-face)
     (set-face-attribute 'actionscript-global-props-face nil
			 :inherit 'font-lock-variable-name-face)

     (face-spec-reset-face 'actionscript-operators-face)
     (set-face-attribute 'actionscript-operators-face nil
			 :inherit 'font-lock-keyword-face)

     (face-spec-reset-face 'actionscript-specifier-kwds-face)
     (set-face-attribute 'actionscript-specifier-kwds-face nil
			 :inherit 'jde-java-font-lock-modifier-face)

     (face-spec-reset-face 'actionscript-package-kwds-face)
     (set-face-attribute 'actionscript-package-kwds-face nil
			 :inherit 'font-lock-keyword-face)

     (face-spec-reset-face 'actionscript-class-kwds-face)
     (set-face-attribute 'actionscript-class-kwds-face nil
			 :inherit 'font-lock-keyword-face)

     (face-spec-reset-face 'actionscript-other-decl-kwds-face)
     (set-face-attribute 'actionscript-other-decl-kwds-face nil
			 :inherit 'font-lock-keyword-face)

     (face-spec-reset-face 'actionscript-other-decl-2-kwds-face)
     (set-face-attribute 'actionscript-other-decl-2-kwds-face nil
			 :inherit 'font-lock-keyword-face)

     (face-spec-reset-face 'actionscript-decl-level-kwds-face)
     (set-face-attribute 'actionscript-decl-level-kwds-face nil
			 :inherit 'font-lock-keyword-face)

     (face-spec-reset-face 'actionscript-conditional-kwds-face)
     (set-face-attribute 'actionscript-conditional-kwds-face nil
			 :inherit 'font-lock-keyword-face)

     (face-spec-reset-face 'actionscript-block-stmt-1-kwds-face)
     (set-face-attribute 'actionscript-block-stmt-1-kwds-face nil
			 :inherit 'font-lock-keyword-face)

     (face-spec-reset-face 'actionscript-simple-stmt-kwds-face)
     (set-face-attribute 'actionscript-simple-stmt-kwds-face nil
			 :inherit 'jde-java-font-lock-code-face)

     (face-spec-reset-face 'actionscript-label-kwds-face)
     (set-face-attribute 'actionscript-label-kwds-face nil
			 :inherit 'font-lock-keyword-face)

     (face-spec-reset-face 'actionscript-expr-kwds-face)
     (set-face-attribute 'actionscript-expr-kwds-face nil
			 :inherit 'font-lock-keyword-face)

     (face-spec-reset-face 'actionscript-other-kwds-face)
     (set-face-attribute 'actionscript-other-kwds-face nil
			 :inherit 'font-lock-keyword-face)

     (face-spec-reset-face 'actionscript-package-name-face)
     (set-face-attribute 'actionscript-package-name-face nil
			 :inherit 'jde-java-font-lock-package-face)

     (face-spec-reset-face 'actionscript-class-name-face)
     (set-face-attribute 'actionscript-class-name-face nil
			 :inherit 'font-lock-type-face)

     (face-spec-reset-face 'actionscript-function-name-face)
     (set-face-attribute 'actionscript-function-name-face nil
			 :inherit 'font-lock-function-name-face)

     (face-spec-reset-face 'actionscript-variable-name-face)
     (set-face-attribute 'actionscript-variable-name-face nil
			 :inherit 'font-lock-variable-name-face)

     (message "AS mode loaded")
     ))

(provide 'init-actionscript)
