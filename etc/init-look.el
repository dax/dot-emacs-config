;;Set windows title
(setq frame-title-format '(buffer-file-name "HappyEmacs: %b (%f)" "HappyEmacs: %b"))

(set-scroll-bar-mode nil)

;; Display time
(setq display-time-string-forms
      '((format "[%s/%s/%s]-[%s:%s] " day month year 24-hours minutes)))

;;font lock
(setq font-lock-use-default-fonts nil)
(setq font-lock-use-default-colors nil)

(require 'font-lock)

;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Visual
;;;;;;;;;;;;;;;;;;;;;;;;;;
;; smooth scrolling
(require 'smooth-scrolling)
;; Fade parenthesis
(require 'parenface)

(require 'visible-mark)
(global-visible-mark-mode)

;; Highlight current line
(global-hl-line-mode 1)
;; To customize the background color
(set-face-background 'hl-line "#333")  ;; Emacs 22 Only

;; Add line number
(require 'linum)
(global-set-key [remap goto-line] 'goto-line-with-feedback)

(defun goto-line-with-feedback ()
  "Show line numbers temporarily, while prompting for the line number input"
  (interactive)
  (unwind-protect
      (progn
        (linum-mode 1)
        (goto-line (read-number "Goto line: ")))
    (linum-mode -1)))

(require 'highlight-fixmes-mode)
(define-global-minor-mode
  global-highlight-fixmes-mode highlight-fixmes-mode highlight-fixmes-mode)
(global-highlight-fixmes-mode)
(custom-set-faces '(fixme-face ((t (:foreground "red" :weight bold)))))

;; Set font size
(custom-set-faces
 '(default ((t (:slant normal
                :weight normal
                :height 120
                :width normal
                :family "Inconsolata"))))
                ;; :foundry "bitstream"
                ;; :family "Bitstream Vera Sans Mono"))))
 )

(menu-bar-mode 0)

(setq c-basic-indent 2)
(setq-default standard-indent 2)
(setq default-tab-width 2)
(setq-default indent-tabs-mode nil)
;; automatically indenting yanked text if in programming-modes
(defvar yank-indent-modes '(emacs-lisp-mode
                            xml-mode nxml-mode nxhtml-mode
                            c-mode c++-mode
                            tcl-mode sql-mode js-mode js2-mode js3-mode
                            perl-mode cperl-mode ruby-mode
                            java-mode jde-mode scala-mode
                            lisp-interaction-mode
                            LaTeX-mode TeX-mode)
  "Modes in which to indent regions that are yanked (or yank-popped)")

(defvar yank-advised-indent-threshold 1000
  "Threshold (# chars) over which indentation does not automatically occur.")

(defun yank-advised-indent-function (beg end)
  "Do indentation, as long as the region isn't too large."
  (if (<= (- end beg) yank-advised-indent-threshold)
      (indent-region beg end nil)))

(defadvice yank (after yank-indent activate)
  "If current mode is one of 'yank-indent-modes, indent yanked text (with prefix arg don't indent)."
  (if (and (not (ad-get-arg 0))
           (member major-mode yank-indent-modes))
      (let ((transient-mark-mode nil))
	(yank-advised-indent-function (region-beginning) (region-end)))))

(defadvice yank-pop (after yank-pop-indent activate)
  "If current mode is one of 'yank-indent-modes, indent yanked text (with prefix arg don't indent)."
  (if (and (not (ad-get-arg 0))
           (member major-mode yank-indent-modes))
      (let ((transient-mark-mode nil))
	(yank-advised-indent-function (region-beginning) (region-end)))))

;; setup uniquify
(require 'uniquify)
(setq uniquify-buffer-name-style 'reverse)
(setq uniquify-separator "/")
(setq uniquify-after-kill-buffer-p t) ; rename after killing uniquified
(setq uniquify-ignore-buffers-re "^\\*") ; don't muck with special buffers

;; shell color
(require 'ansi-color)
(add-hook 'shell-mode-hook 'ansi-color-for-comint-mode-on)
(setq comint-prompt-read-only t)

(global-visual-line-mode)

(provide 'init-look)
