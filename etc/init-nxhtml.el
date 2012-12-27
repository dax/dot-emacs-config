;; nxml
(setq nxml-slash-auto-complete-flag t)

(add-to-list 'auto-mode-alist '("\\.xml\\'" . nxml-mode))

(defun nxml-reset-faces ()
  (defvar nxml-delimiter-face (if (internal-lisp-face-p 'nxml-delimiter) 'nxml-delimiter 'nxml-delimiter-face))
  (face-spec-reset-face nxml-delimiter-face)

  (defvar nxml-text-face (if (internal-lisp-face-p 'nxml-text) 'nxml-text 'nxml-text-face))
  (face-spec-reset-face nxml-text-face)

  (defvar nxml-element-colon-face (if (internal-lisp-face-p 'nxml-element-colon) 'nxml-element-colon 'nxml-element-colon-face))
  (face-spec-reset-face nxml-element-colon-face)

  (defvar nxml-delimited-data-face (if (internal-lisp-face-p 'nxml-delimited-data) 'nxml-delimited-data 'nxml-delimited-data-face))
  (face-spec-reset-face nxml-delimited-data-face)
  (set-face-attribute nxml-delimited-data-face nil
		      :inherit font-lock-doc-face)

  (defvar nxml-name-face (if (internal-lisp-face-p 'nxml-name) 'nxml-name 'nxml-name-face))
  (face-spec-reset-face nxml-name-face)
  (set-face-attribute nxml-name-face nil
		      :inherit font-lock-builtin-face)

  (defvar nxml-ref-face (if (internal-lisp-face-p 'nxml-ref) 'nxml-ref 'nxml-ref-face))
  (face-spec-reset-face nxml-ref-face)
  (set-face-attribute nxml-ref-face nil
		      :inherit font-lock-constant-face)

  (defvar nxml-comment-content-face (if (internal-lisp-face-p 'nxml-comment-content) 'nxml-comment-content 'nxml-comment-content-face))
  (face-spec-reset-face nxml-comment-content-face)
  (set-face-attribute nxml-comment-content-face nil
		      :inherit font-lock-comment-face)

  (defvar nxml-comment-delimiter-face (if (internal-lisp-face-p 'nxml-comment-delimiter) 'nxml-comment-delimiter 'nxml-comment-delimiter-face))
  (face-spec-reset-face nxml-comment-delimiter-face)
  (set-face-attribute nxml-comment-delimiter-face nil
		      :inherit font-lock-comment-delimiter-face)

  (defvar nxml-processing-instruction-delimiter-face (if (internal-lisp-face-p 'nxml-processing-instruction-delimiter) 'nxml-processing-instruction-delimiter 'nxml-processing-instruction-delimiter-face))
  (face-spec-reset-face nxml-processing-instruction-delimiter-face)
  (set-face-attribute nxml-processing-instruction-delimiter-face nil
		      :inherit 'nxml-delimiter-face)

  (defvar nxml-processing-instruction-target-face (if (internal-lisp-face-p 'nxml-processing-instruction-target) 'nxml-processing-instruction-target 'nxml-processing-instruction-target-face))
  (face-spec-reset-face nxml-processing-instruction-target-face)
  (set-face-attribute nxml-processing-instruction-target-face nil
		      :inherit font-lock-keyword-face)

  (defvar nxml-processing-instruction-content-face (if (internal-lisp-face-p 'nxml-processing-instruction-content) 'nxml-processing-instruction-content 'nxml-processing-instruction-content-face))
  (face-spec-reset-face nxml-processing-instruction-content-face)
  (set-face-attribute nxml-processing-instruction-content-face nil
		      :inherit 'nxml-delimited-data-face)

  (defvar nxml-cdata-section-delimiter-face (if (internal-lisp-face-p 'nxml-cdata-section-delimiter) 'nxml-cdata-section-delimiter 'nxml-cdata-section-delimiter-face))
  (face-spec-reset-face nxml-cdata-section-delimiter-face)
  (set-face-attribute nxml-cdata-section-delimiter-face nil
		      :inherit 'nxml-delimiter-face)

  (defvar nxml-cdata-section-CDATA-face (if (internal-lisp-face-p 'nxml-cdata-section-CDATA) 'nxml-cdata-section-CDATA 'nxml-cdata-section-CDATA-face))
  (face-spec-reset-face nxml-cdata-section-CDATA-face)
  (set-face-attribute nxml-cdata-section-CDATA-face nil
		      :inherit 'nxml-name-face)

  (defvar nxml-cdata-section-content-face (if (internal-lisp-face-p 'nxml-cdata-section-content) 'nxml-cdata-section-content 'nxml-cdata-section-content-face))
  (face-spec-reset-face nxml-cdata-section-content-face)
  (set-face-attribute nxml-cdata-section-content-face nil
		      :inherit 'nxml-text-face)

  (defvar nxml-char-ref-number-face (if (internal-lisp-face-p 'nxml-char-ref-number) 'nxml-char-ref-number 'nxml-char-ref-number-face))
  (face-spec-reset-face nxml-char-ref-number-face)
  (set-face-attribute nxml-char-ref-number-face nil
		      :inherit 'nxml-ref-face)

  (defvar nxml-char-ref-delimiter-face (if (internal-lisp-face-p 'nxml-char-ref-delimiter) 'nxml-char-ref-delimiter 'nxml-char-ref-delimiter-face))
  (face-spec-reset-face nxml-char-ref-delimiter-face)
  (set-face-attribute nxml-char-ref-delimiter-face nil
		      :inherit 'nxml-ref-face)

  (defvar nxml-entity-ref-name-face (if (internal-lisp-face-p 'nxml-entity-ref-name) 'nxml-entity-ref-name 'nxml-entity-ref-name-face))
  (face-spec-reset-face nxml-entity-ref-name-face)
  (set-face-attribute nxml-entity-ref-name-face nil
		      :inherit nxml-ref-face)

  (defvar nxml-entity-ref-delimiter-face (if (internal-lisp-face-p 'nxml-entity-ref-delimiter) 'nxml-entity-ref-delimiter 'nxml-entity-ref-delimiter-face))
  (face-spec-reset-face nxml-entity-ref-delimiter-face)
  (set-face-attribute nxml-entity-ref-delimiter-face nil
		      :inherit nxml-ref-face)

  (defvar nxml-tag-delimiter-face (if (internal-lisp-face-p 'nxml-tag-delimiter) 'nxml-tag-delimiter 'nxml-tag-delimiter-face))
  (face-spec-reset-face nxml-tag-delimiter-face)
  (set-face-attribute nxml-tag-delimiter-face nil
		      :inherit nxml-delimiter-face)

  (defvar nxml-tag-slash-face (if (internal-lisp-face-p 'nxml-tag-slash) 'nxml-tag-slash 'nxml-tag-slash-face))
  (face-spec-reset-face nxml-tag-slash-face)
  (set-face-attribute nxml-tag-slash-face nil
		      :inherit nxml-tag-delimiter-face)

  (defvar nxml-element-prefix-face (if (internal-lisp-face-p 'nxml-element-prefix) 'nxml-element-prefix 'nxml-element-prefix-face))
  (face-spec-reset-face nxml-element-prefix-face)
  (set-face-attribute nxml-element-prefix-face nil
		      :inherit nxml-name-face)

  (defvar nxml-element-local-name-face (if (internal-lisp-face-p 'nxml-element-local-name) 'nxml-element-local-name 'nxml-element-local-name-face))
  (face-spec-reset-face nxml-element-local-name-face)
  (set-face-attribute nxml-element-local-name-face nil
		      :inherit font-lock-function-name-face)

  (defvar nxml-attribute-prefix-face (if (internal-lisp-face-p 'nxml-attribute-prefix) 'nxml-attribute-prefix 'nxml-attribute-prefix-face))
  (face-spec-reset-face nxml-attribute-prefix-face)
  (set-face-attribute nxml-attribute-prefix-face nil
		      :inherit nxml-name-face)

  (defvar nxml-attribute-colon-face (if (internal-lisp-face-p 'nxml-attribute-colon) 'nxml-attribute-colon 'nxml-attribute-colon-face))
  (face-spec-reset-face nxml-attribute-colon-face)
  (set-face-attribute nxml-attribute-colon-face nil
		      :inherit nxml-delimiter-face)

  (defvar nxml-attribute-local-name-face (if (internal-lisp-face-p 'nxml-attribute-local-name) 'nxml-attribute-local-name 'nxml-attribute-local-name-face))
  (face-spec-reset-face nxml-attribute-local-name-face)
  (set-face-attribute nxml-attribute-local-name-face nil
		      :inherit font-lock-variable-name-face)

  (defvar nxml-namespace-attribute-xmlns-face (if (internal-lisp-face-p 'nxml-namespace-attribute-xmlns) 'nxml-namespace-attribute-xmlns 'nxml-namespace-attribute-xmlns-face))
  (face-spec-reset-face nxml-namespace-attribute-xmlns-face)
  (set-face-attribute nxml-namespace-attribute-xmlns-face nil
		      :inherit nxml-attribute-prefix-face)

  (defvar nxml-namespace-attribute-colon-face (if (internal-lisp-face-p 'nxml-namespace-attribute-colon) 'nxml-namespace-attribute-colon 'nxml-namespace-attribute-colon-face))
  (face-spec-reset-face nxml-namespace-attribute-colon-face)
  (set-face-attribute nxml-namespace-attribute-colon-face nil
		      :inherit nxml-attribute-colon-face)

  (defvar nxml-namespace-attribute-prefix-face (if (internal-lisp-face-p 'nxml-namespace-attribute-prefix) 'nxml-namespace-attribute-prefix 'nxml-namespace-attribute-prefix-face))
  (face-spec-reset-face nxml-namespace-attribute-prefix-face)
  (set-face-attribute nxml-namespace-attribute-prefix-face nil
		      :inherit nxml-attribute-local-name-face)

  (defvar nxml-attribute-value-face (if (internal-lisp-face-p 'nxml-attribute-value) 'nxml-attribute-value 'nxml-attribute-value-face))
  (face-spec-reset-face nxml-attribute-value-face)
  (set-face-attribute nxml-attribute-value-face nil
		      :inherit font-lock-string-face)

  (defvar nxml-attribute-value-delimiter-face (if (internal-lisp-face-p 'nxml-attribute-value-delimiter) 'nxml-attribute-value-delimiter 'nxml-attribute-value-delimiter-face))
  (face-spec-reset-face nxml-attribute-value-delimiter-face)
  (set-face-attribute nxml-attribute-value-delimiter-face nil
		      :inherit nxml-attribute-value-face)

  (defvar nxml-namespace-attribute-value-face (if (internal-lisp-face-p 'nxml-namespace-attribute-value) 'nxml-namespace-attribute-value 'nxml-namespace-attribute-value-face))
  (face-spec-reset-face nxml-namespace-attribute-value-face)
  (set-face-attribute nxml-namespace-attribute-value-face nil
		      :inherit nxml-attribute-value-face)

  (defvar nxml-namespace-attribute-value-delimiter-face (if (internal-lisp-face-p 'nxml-namespace-attribute-value-delimiter) 'nxml-namespace-attribute-value-delimiter 'nxml-namespace-attribute-value-delimiter-face))
  (face-spec-reset-face nxml-namespace-attribute-value-delimiter-face)
  (set-face-attribute nxml-namespace-attribute-value-delimiter-face nil
		      :inherit nxml-attribute-value-delimiter-face)

  (defvar nxml-prolog-literal-delimiter-face (if (internal-lisp-face-p 'nxml-prolog-literal-delimiter) 'nxml-prolog-literal-delimiter 'nxml-prolog-literal-delimiter-face))
  (face-spec-reset-face nxml-prolog-literal-delimiter-face)
  (set-face-attribute nxml-prolog-literal-delimiter-face nil
		      :inherit nxml-delimited-data-face)

  (defvar nxml-prolog-literal-content-face (if (internal-lisp-face-p 'nxml-prolog-literal-content) 'nxml-prolog-literal-content 'nxml-prolog-literal-content-face))
  (face-spec-reset-face nxml-prolog-literal-content-face)
  (set-face-attribute nxml-prolog-literal-content-face nil
		      :inherit nxml-delimited-data-face)

  (defvar nxml-prolog-keyword-face (if (internal-lisp-face-p 'nxml-prolog-keyword) 'nxml-prolog-keyword 'nxml-prolog-keyword-face))
  (face-spec-reset-face nxml-prolog-keyword-face)
  (set-face-attribute nxml-prolog-keyword-face nil
		      :inherit font-lock-keyword-face)

  (defvar nxml-markup-declaration-delimiter-face (if (internal-lisp-face-p 'nxml-markup-declaration-delimiter) 'nxml-markup-declaration-delimiter 'nxml-markup-declaration-delimiter-face))
  (face-spec-reset-face nxml-markup-declaration-delimiter-face)
  (set-face-attribute nxml-markup-declaration-delimiter-face nil
		      :inherit nxml-delimiter-face)

  (defvar nxml-hash-face (if (internal-lisp-face-p 'nxml-hash) 'nxml-hash 'nxml-hash-face))
  (face-spec-reset-face nxml-hash-face)
  (set-face-attribute nxml-hash-face nil
		      :inherit nxml-name-face)
  )

(eval-after-load "nxml-mode"
  '(progn
     (nxml-reset-faces)
     ;; (push (concat base-dir "etc/schemas/schemas.xml") rng-schema-locating-files)
     (message "nXML mode loaded")
     ))

(eval-after-load "nxhtml-mode"
  '(progn
     (nxml-reset-faces)
     (message "nxHTML mode loaded")
     ))

(provide 'init-nxhtml)
