(autoload 'cparse "cparse"
  "C programmer's aid to finding lost or hidden definitions" t)
(autoload 'cparse-listparts "cparse"
  "List all the parts in the current buffer in another buffer." t)
(autoload 'cparse-open-on-line "cparse"
  "Grab the object under the cursor and find it's definition." t)
(autoload 'cpc-insert-function-comment "cpcomment"
  "Starting at pnt, look for a function definition.  If the definition
exists, parse for the name, else, fill everything in as null.  Then
insert the variable cpc-function-comment, and fill in the %s with the
parts determined.
If the comment already exists, this function will try to update only
the HISTORY part." t)
(autoload 'cpc-insert-new-file-header "cpcomment"
  "Insert a new comment describing this function based on the format
in the variable cpc-file-comment.  It is a string with sformat tokens
for major parts.  Optional HEADER is the header to use for the cpr
token" t)
(autoload 'cpr-store-in-header "cproto"
  "Grab the header from current position, load in the header file, and
make any needed substitutions to update the header file.  If the
function is static, then create needed stuff in this c file for the
prototype." t)

(defun cparse-setup-keybindings ()
  (define-key c-mode-map "\C-cp" 'cparse-listparts)
  (define-key c-mode-map "\C-co" 'cparse-open-on-line)
  (define-key c-mode-map "\C-cf" 'cpc-insert-new-file-header)
  (define-key c-mode-map "\C-c\C-h" 'cpr-store-in-header)
  (define-key c-mode-map "\C-c\C-d" 'cpr-insert-function-comment)
  )

(add-hook 'c-mode-common-hook 'cparse-setup-keybindings)

(provide 'init-cparse)
