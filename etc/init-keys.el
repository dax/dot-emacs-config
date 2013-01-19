;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; key bindings
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(global-set-key [(control meta tab)] 'switch-to-buffer-other-window)
(windmove-default-keybindings)

;; f3 is bound to bookmark-mode
(global-set-key [f4] 'org-tags-view)
(global-set-key [f7] 'speedbar)
(global-set-key [f9] 'reindent-file) ;; TODO

(global-set-key [end] 'end-of-line)
(global-set-key [home] 'beginning-of-line)

;;copy region...(selected with ctrl_espace)
(global-set-key [?\C-\;] 'copy-region-as-kill)
;;(global-set-key "\C-\>" 'scroll-left)
;;(global-set-key "\C-\<" 'scroll-right)
(global-set-key "o" 'toggle-slow-scroll-mode)
(global-set-key [?\C-,] 'scroll-up-slowly)
(global-set-key [?\C-.] 'scroll-down-slowly)
(global-set-key "\C-ck" 'compile)
(global-set-key "\C-ch" 'update-std-header)
(global-set-key "\C-ct" 'do_insert_time)
(global-set-key "\C-cH" 'std-file-header)
(global-set-key "\C-cb" 'switch-to-buffer-header)

;;touche del et suppr
(global-set-key [delete] 'delete-char)
;;(global-set-key "\C-h" 'delete-backward-char)
(global-set-key "\C-cg" 'goto-line)
(global-set-key [(control c) (control r)] 'revert-buffer)

(defun open-line-below ()
  (interactive)
  (if (eolp)
      (newline)
    (end-of-line)
    (newline))
  (indent-for-tab-command))

(defun open-line-above ()
  (interactive)
  (beginning-of-line)
  (newline)
  (forward-line -1)
  (indent-for-tab-command))

(global-set-key (kbd "<C-return>") 'open-line-below)
(global-set-key (kbd "<C-S-return>") 'open-line-above)

;;redo
(require 'redo)
(global-set-key [?\C--] 'redo)

;; iedit
(require 'iedit)
(define-key global-map (kbd "C-;") 'iedit-mode)

(global-set-key (kbd "C-x C-b") 'ibuffer)

;; isearch
(define-key isearch-mode-map (kbd "C-o") 'isearch-occur)

(defun isearch-exit-other-end (rbeg rend)
  "Exit isearch, but at the other end of the search string.
This is useful when followed by an immediate kill."
  (interactive "r")
  (isearch-exit)
  (goto-char isearch-other-end))

(define-key isearch-mode-map [(control return)] 'isearch-exit-other-end)

(defun isearch-yank-symbol ()
  "*Put symbol at current point into search string."
  (interactive)
  (let ((sym (symbol-at-point)))
    (if sym
        (isearch-yank-string (symbol-name sym))
      (ding))))

(define-key isearch-mode-map "\C-w" 'isearch-yank-symbol)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; mouse wheel
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defun up-slightly () (interactive) (scroll-up 5))
(defun down-slightly () (interactive) (scroll-down 5))
(global-set-key [mouse-4] 'down-slightly)
(global-set-key [mouse-5] 'up-slightly)
(defun up-one () (interactive)
  (scroll-up 1))
(defun down-one () (interactive) (scroll-down 1))
(global-set-key [S-mouse-4] 'down-one)
(global-set-key [S-mouse-5] 'up-one)
(defun up-a-lot () (interactive)
  (scroll-up))
(defun down-a-lot () (interactive) (scroll-down))
(global-set-key [C-mouse-4] 'down-a-lot)
(global-set-key [C-mouse-5] 'up-a-lot)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Quit this buffer
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defun quit-this-buffer ()
  "Exit current buffer by selecting some other buffer."
  (interactive)
  (switch-to-buffer (prog1 (other-buffer (current-buffer))
          (bury-buffer (current-buffer)))))

(global-set-key "\C-cq" 'quit-this-buffer)

;; cycle through buffers with Ctrl-Tab
(global-set-key (kbd "<C-tab>") 'bury-buffer)
(global-set-key (kbd "<C-S-iso-lefttab>") 'unbury-buffer)

;; close Emacs frame (window) when using emacs --daemon (>= v23.0)
(global-set-key "\C-x\C-x" 'delete-frame)

(defun back-to-indentation-or-beginning-of-line ()
  "Move point to beginning of current line or to the first non whitespace char"
  (interactive)
  (if (= 0 (current-column))
      (back-to-indentation)
    (move-beginning-of-line 1))
  )

(global-set-key "\C-a" 'back-to-indentation-or-beginning-of-line)

(defun my-help ()
  "If function given tries to `describe-function' if variable
uses 'describe-variable', otherwise uses `manual-entry' to display
manpage of a `current-word'."
  (interactive)
  (let ((var (variable-at-point)))
    (if (symbolp var)
        (describe-variable var)
      (let ((fn (function-called-at-point)))
        (if fn
            (describe-function fn)
          (man (current-word)))))))

(global-set-key [f1] 'my-help)

;;; Use "%" to jump to the matching parenthesis.
(defun goto-match-paren (arg)
  "Go to the matching parenthesis if on parenthesis, otherwise insert
the character typed."
  (interactive "p")
  (cond ((looking-at "\(") (forward-list 1))
  ((looking-back "\)") (forward-char 1) (backward-list 1))
  (t                    (self-insert-command (or arg 1))) ))
(global-set-key "%" 'goto-match-paren)

(defun rename-current-buffer-file ()
  "Renames current buffer and file it is visiting."
  (interactive)
  (let ((name (buffer-name))
        (filename (buffer-file-name)))
    (if (not (and filename (file-exists-p filename)))
        (error "Buffer '%s' is not visiting a file!" name)
      (let ((new-name (read-file-name "New name: " filename)))
        (if (get-buffer new-name)
            (error "A buffer named '%s' already exists!" new-name)
          (rename-file filename new-name 1)
          (rename-buffer new-name)
          (set-visited-file-name new-name)
          (set-buffer-modified-p nil)
          (message "File '%s' successfully renamed to '%s'"
                   name (file-name-nondirectory new-name)))))))

(global-set-key (kbd "C-x C-r") 'rename-current-buffer-file)

(defun cleanup-buffer-safe ()
  "Perform a bunch of safe operations on the whitespace content of a buffer.
Does not indent buffer, because it is used for a before-save-hook, and that
might be bad."
  (interactive)
  (untabify (point-min) (point-max))
  (delete-trailing-whitespace)
  (set-buffer-file-coding-system 'utf-8))

;; Various superfluous white-space. Just say no.
(global-set-key (kbd "C-c n") 'cleanup-buffer-safe)
;; (add-hook 'before-save-hook 'cleanup-buffer-safe)

(defun cleanup-buffer ()
  "Perform a bunch of operations on the whitespace content of a buffer.
Including indent-buffer, which should not be called automatically on save."
  (interactive)
  (cleanup-buffer-safe)
  (indent-region (point-min) (point-max)))

(global-set-key (kbd "C-c C-n") 'cleanup-buffer)

(defun delete-current-buffer-file ()
  "Removes file connected to current buffer and kills buffer."
  (interactive)
  (let ((filename (buffer-file-name))
        (buffer (current-buffer))
        (name (buffer-name)))
    (if (not (and filename (file-exists-p filename)))
        (ido-kill-buffer)
      (when (yes-or-no-p "Are you sure you want to remove this file? ")
        (delete-file filename)
        (kill-buffer buffer)
        (message "File '%s' successfully removed" filename)))))

(global-set-key (kbd "C-x C-k") 'delete-current-buffer-file)

(provide 'init-keys)
