;;; .loaddefs.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads (grails-mode) "Emacs-Groovy-Mode/grails-mode" "Emacs-Groovy-Mode/grails-mode.el"
;;;;;;  (20878 23819 72784 724000))
;;; Generated autoloads from Emacs-Groovy-Mode/grails-mode.el

(autoload 'grails-mode "Emacs-Groovy-Mode/grails-mode" "\
Grails Minor Mode.
     With no argument, this command toggles the mode.
     Non-null prefix argument turns on the mode.
     Null prefix argument turns off the mode.

     When Grails mode is enabled, several keys are enabled that
     will allow navigation around a typical grails project.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads (groovy-electric-mode) "Emacs-Groovy-Mode/groovy-electric"
;;;;;;  "Emacs-Groovy-Mode/groovy-electric.el" (20878 23819 72784
;;;;;;  724000))
;;; Generated autoloads from Emacs-Groovy-Mode/groovy-electric.el

(autoload 'groovy-electric-mode "Emacs-Groovy-Mode/groovy-electric" "\
Toggle Groovy Electric minor mode.
With no argument, this command toggles the mode.  Non-null prefix
argument turns on the mode.  Null prefix argument turns off the
mode.

When Groovy Electric mode is enabled, simple, double and back
quotes as well as braces are paired auto-magically. Expansion
does not occur inside comments and strings. Note that you must
have Font Lock enabled. ${ } is expanded when in a GString

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads (groovy-mode groovy-mode-hook) "Emacs-Groovy-Mode/groovy-mode"
;;;;;;  "Emacs-Groovy-Mode/groovy-mode.el" (20878 23819 72784 724000))
;;; Generated autoloads from Emacs-Groovy-Mode/groovy-mode.el

(add-to-list 'auto-mode-alist '("\\.groovy$" . groovy-mode))

(defvar groovy-mode-hook nil "\
*Hook called by `groovy-mode'.")

(custom-autoload 'groovy-mode-hook "Emacs-Groovy-Mode/groovy-mode" t)

(autoload 'groovy-mode "Emacs-Groovy-Mode/groovy-mode" "\
Major mode for editing Groovy code.

The hook `c-mode-common-hook' is run with no args at mode
initialization, then `groovy-mode-hook'.

Key bindings:
\\{groovy-mode-map}

\(fn)" t nil)

(add-to-list 'interpreter-mode-alist '("groovy" . groovy-mode))

;;;***

;;;### (autoloads (run-groovy inferior-groovy-mode inf-groovy-keys)
;;;;;;  "Emacs-Groovy-Mode/inf-groovy" "Emacs-Groovy-Mode/inf-groovy.el"
;;;;;;  (20878 23819 72784 724000))
;;; Generated autoloads from Emacs-Groovy-Mode/inf-groovy.el

(autoload 'inf-groovy-keys "Emacs-Groovy-Mode/inf-groovy" "\
Set local key defs for inf-groovy in groovy-mode

\(fn)" nil nil)

(autoload 'inferior-groovy-mode "Emacs-Groovy-Mode/inf-groovy" "\
Major mode for interacting with an inferior groovy (groovysh) process.

The following commands are available:
\\{inferior-groovy-mode-map}

A groovy process can be fired up with M-x run-groovy.

Customisation: Entry to this mode runs the hooks on comint-mode-hook and
inferior-groovy-mode-hook (in that order).

You can send text to the inferior groovy process from other buffers containing
Groovy source.
    switch-to-groovy switches the current buffer to the groovy process buffer.
    groovy-send-definition sends the current definition to the groovy process.
    groovy-send-region sends the current region to the groovy process.

    groovy-send-definition-and-go, groovy-send-region-and-go,
        switch to the groovy process buffer after sending their text.
For information on running multiple processes in multiple buffers, see
documentation for variable groovy-buffer.

Commands:
Return after the end of the process' output sends the text from the
    end of process to point.
Return before the end of the process' output copies the sexp ending at point
    to the end of the process' output, and sends it.
Delete converts tabs to spaces as it moves back.
Tab indents for groovy; with argument, shifts rest
    of expression rigidly with the current line.
C-M-q does Tab on each line starting within following expression.
Paragraphs are separated only by blank lines.  # start comments.
If you accidentally suspend your process, use \\[comint-continue-subjob]
to continue it.

\(fn)" t nil)

(autoload 'run-groovy "Emacs-Groovy-Mode/inf-groovy" "\
Run an inferior Groovy process, input and output via buffer *groovy*.
If there is a process already running in `*groovy*', switch to that buffer.
With argument, allows you to edit the command line (default is value
of `groovy-program-name').  Runs the hooks `inferior-groovy-mode-hook'
\(after the `comint-mode-hook' is run).
\(Type \\[describe-mode] in the process buffer for a list of commands.)

\(fn CMD)" t nil)

(eval-after-load 'groovy-mode (add-hook 'groovy-mode-hook 'inf-groovy-keys))

;;;***

;;;### (autoloads (set-up-slime-ac) "ac-slime/ac-slime" "ac-slime/ac-slime.el"
;;;;;;  (20878 23069 475113 705000))
;;; Generated autoloads from ac-slime/ac-slime.el

(defface ac-slime-menu-face '((t (:inherit ac-candidate-face))) "\
Face for slime candidate menu." :group (quote auto-complete))

(defface ac-slime-selection-face '((t (:inherit ac-selection-face))) "\
Face for the slime selected candidate." :group (quote auto-complete))

(defvar ac-source-slime-fuzzy '((init . ac-slime-init) (candidates . ac-source-slime-fuzzy-candidates) (candidate-face . ac-slime-menu-face) (selection-face . ac-slime-selection-face) (prefix . slime-symbol-start-pos) (symbol . "l") (match lambda (prefix candidates) candidates) (document . ac-slime-documentation)) "\
Source for fuzzy slime completion")

(defvar ac-source-slime-simple '((init . ac-slime-init) (candidates . ac-source-slime-simple-candidates) (candidate-face . ac-slime-menu-face) (selection-face . ac-slime-selection-face) (prefix . slime-symbol-start-pos) (symbol . "l") (document . ac-slime-documentation) (match . ac-source-slime-case-correcting-completions)) "\
Source for slime completion")

(autoload 'set-up-slime-ac "ac-slime/ac-slime" "\
Add an optionally-fuzzy slime completion source to the
front of `ac-sources' for the current buffer.

\(fn &optional FUZZY)" t nil)

;;;***

;;;### (autoloads (ace-jump-mode ace-jump-line-mode ace-jump-word-mode
;;;;;;  ace-jump-char-mode ace-jump-mode-pop-mark) "ace-jump-mode/ace-jump-mode"
;;;;;;  "ace-jump-mode/ace-jump-mode.el" (20722 65108 65983 240000))
;;; Generated autoloads from ace-jump-mode/ace-jump-mode.el

(autoload 'ace-jump-mode-pop-mark "ace-jump-mode/ace-jump-mode" "\
Pop up a postion from `ace-jump-mode-mark-ring', and jump back to that position

\(fn)" t nil)

(autoload 'ace-jump-char-mode "ace-jump-mode/ace-jump-mode" "\
AceJump char mode

\(fn QUERY-CHAR)" t nil)

(autoload 'ace-jump-word-mode "ace-jump-mode/ace-jump-mode" "\
AceJump word mode.
You can set `ace-jump-word-mode-use-query-char' to nil to prevent
asking for a head char, that will mark all the word in current
buffer.

\(fn HEAD-CHAR)" t nil)

(autoload 'ace-jump-line-mode "ace-jump-mode/ace-jump-mode" "\
AceJump line mode.
Marked each no empty line and move there

\(fn)" t nil)

(autoload 'ace-jump-mode "ace-jump-mode/ace-jump-mode" "\
AceJump mode is a minor mode for you to quick jump to a
position in the curret view.
   There is three submode now:
     `ace-jump-char-mode'
     `ace-jump-word-mode'
     `ace-jump-line-mode'

You can specify the sequence about which mode should enter
by customize `ace-jump-mode-submode-list'.

If you do not want to query char for word mode, you can change
`ace-jump-word-mode-use-query-char' to nil.

If you don't like the default move keys, you can change it by
setting `ace-jump-mode-move-keys'.

You can constrol whether use the case sensitive via
`ace-jump-mode-case-fold'.

\(fn &optional PREFIX)" t nil)

;;;***

;;;### (autoloads (ack-and-a-half-find-file-same ack-and-a-half-find-file
;;;;;;  ack-and-a-half-same ack-and-a-half) "ack-and-a-half/ack-and-a-half"
;;;;;;  "ack-and-a-half/ack-and-a-half.el" (20878 23071 359187 953000))
;;; Generated autoloads from ack-and-a-half/ack-and-a-half.el

(autoload 'ack-and-a-half "ack-and-a-half/ack-and-a-half" "\
Run ack.
PATTERN is interpreted as a regular expression, iff REGEXP is
non-nil.  If called interactively, the value of REGEXP is
determined by `ack-and-a-half-regexp-search'.  A prefix arg
toggles the behavior.  DIRECTORY is the root directory.  If
called interactively, it is determined by
`ack-and-a-half-project-root-file-patterns'.  The user is only
prompted, if `ack-and-a-half-prompt-for-directory' is set.

\(fn PATTERN &optional REGEXP DIRECTORY)" t nil)

(autoload 'ack-and-a-half-same "ack-and-a-half/ack-and-a-half" "\
Run ack with --type matching the current `major-mode'.
The types of files searched are determined by
`ack-and-a-half-mode-type-alist' and
`ack-and-a-half-mode-extension-alist'.  If no type is configured,
the buffer's file extension is used for the search.  PATTERN is
interpreted as a regular expression, iff REGEXP is non-nil.  If
called interactively, the value of REGEXP is determined by
`ack-and-a-half-regexp-search'.  A prefix arg toggles that value.
DIRECTORY is the directory in which to start searching.  If
called interactively, it is determined by
`ack-and-a-half-project-root-file-patterns`.  The user is only
prompted, if `ack-and-a-half-prompt-for-directory' is set.`

\(fn PATTERN &optional REGEXP DIRECTORY)" t nil)

(autoload 'ack-and-a-half-find-file "ack-and-a-half/ack-and-a-half" "\
Prompt to find a file found by ack in DIRECTORY.

\(fn &optional DIRECTORY)" t nil)

(autoload 'ack-and-a-half-find-file-same "ack-and-a-half/ack-and-a-half" "\
Prompt to find a file found by ack in DIRECTORY.

\(fn &optional DIRECTORY)" t nil)

;;;***

;;;### (autoloads (actionscript-mode) "actionscript-mode/actionscript-mode-connors"
;;;;;;  "actionscript-mode/actionscript-mode-connors.el" (20878 29146
;;;;;;  285387 269000))
;;; Generated autoloads from actionscript-mode/actionscript-mode-connors.el

(add-to-list 'auto-mode-alist '("\\.as\\'" . actionscript-mode))

(autoload 'actionscript-mode "actionscript-mode/actionscript-mode-connors" "\
Major mode for editing ACTIONSCRIPT Actionscript is an
EcmaScript variant for coding for the Flash Player Runtime
by Adobe.

The hook `c-mode-common-hook' is run with no args at mode
initialization, then `actionscript-mode-hook'.

Key bindings:
\\{actionscript-mode-map}

\(fn)" t nil)

;;;***

;;;### (autoloads (anything-other-buffer anything-at-point anything)
;;;;;;  "anything/anything" "anything/anything.el" (20878 23071 391189
;;;;;;  214000))
;;; Generated autoloads from anything/anything.el

(autoload 'anything "anything/anything" "\
Main function to execute anything sources.

Keywords supported:
:sources :input :prompt :resume :preselect :buffer :keymap :default :history
Extra keywords are supported and can be added, see below.

When call interactively with no arguments deprecated `anything-sources'
will be used if non--nil.

PLIST is a list like (:key1 val1 :key2 val2 ...) or
\(&optional sources input prompt resume preselect buffer keymap default history).

Basic keywords are the following:

:sources

Temporary value of `anything-sources'.  It also accepts a
symbol, interpreted as a variable of an anything source.  It
also accepts an alist representing an anything source, which is
detected by (assq 'name ANY-SOURCES)

:input

Temporary value of `anything-pattern', ie. initial input of minibuffer.

:prompt

Prompt other than \"pattern: \".

:resume

If t, Resurrect previously instance of `anything'.  Skip the initialization.
If 'noresume, this instance of `anything' cannot be resumed.

:preselect

Initially selected candidate.  Specified by exact candidate or a regexp.

:buffer

`anything-buffer' instead of *anything*.

:keymap

`anything-map' for current `anything' session.

:default

A default argument that will be inserted in minibuffer with \\<minibuffer-local-map>\\[next-history-element].
When nil of not present `thing-at-point' will be used instead.

:history

By default all minibuffer input is pushed to `minibuffer-history',
if an argument HISTORY is provided, input will be pushed to HISTORY.
History element should be a symbol.

Of course, conventional arguments are supported, the two are same.

\(anything :sources sources :input input :prompt prompt :resume resume
           :preselect preselect :buffer buffer :keymap keymap :default default
           :history history)
\(anything sources input prompt resume preselect buffer keymap default history)

Other keywords are interpreted as local variables of this anything session.
The `anything-' prefix can be omitted.  For example,

\(anything :sources 'anything-c-source-buffers
           :buffer \"*buffers*\" :candidate-number-limit 10)

means starting anything session with `anything-c-source-buffers'
source in *buffers* buffer and set variable `anything-candidate-number-limit'
to 10 as session local variable.

\(fn &rest PLIST)" t nil)

(autoload 'anything-at-point "anything/anything" "\
Call anything with symbol at point as initial input.
ANY-SOURCES ANY-INPUT ANY-PROMPT ANY-RESUME ANY-PRESELECT and ANY-BUFFER
are same args as in `anything'.

\(fn &optional ANY-SOURCES ANY-INPUT ANY-PROMPT ANY-RESUME ANY-PRESELECT ANY-BUFFER)" t nil)

(autoload 'anything-other-buffer "anything/anything" "\
Simplified interface of `anything' with other `anything-buffer'.
Call `anything' with only ANY-SOURCES and ANY-BUFFER as args.

\(fn ANY-SOURCES ANY-BUFFER)" nil nil)

;;;***

;;;### (autoloads (anything-ctags-current-file anything-xrandr-set
;;;;;;  anything-c-apropos anything-ucs anything-ratpoison-commands
;;;;;;  anything-c-run-external-command anything-eshell-history anything-esh-pcomplete
;;;;;;  anything-apt anything-world-time anything-select-xfont anything-top
;;;;;;  anything-create anything-execute-anything-command anything-call-source
;;;;;;  anything-surfraw anything-calcul-expression anything-eval-expression-with-eldoc
;;;;;;  anything-eval-expression anything-yaoddmuse-emacswiki-post-library
;;;;;;  anything-yaoddmuse-emacswiki-edit-or-view anything-all-mark-rings
;;;;;;  anything-global-mark-ring anything-mark-ring anything-simple-call-tree
;;;;;;  anything-bookmark-ext anything-manage-advice anything-M-x
;;;;;;  anything-filelist+ anything-filelist anything-c-etags-select
;;;;;;  anything-do-pdfgrep anything-do-zgrep anything-do-grep anything-dired-hardlink-file
;;;;;;  anything-dired-symlink-file anything-dired-copy-file anything-dired-rename-file
;;;;;;  anything-insert-file anything-write-file anything-find-files
;;;;;;  anything-c-copy-files-async anything-regexp anything-org-headlines
;;;;;;  anything-browse-code anything-occur anything-list-emacs-process
;;;;;;  anything-timers anything-bm-list anything-eev-anchors anything-emms
;;;;;;  anything-org-keywords anything-man-woman anything-register
;;;;;;  anything-c-insert-latex-math anything-c-pp-bookmarks anything-bookmarks
;;;;;;  anything-colors anything-firefox-bookmarks anything-w3m-bookmarks
;;;;;;  anything-locate anything-bbdb anything-buffers-list anything-for-buffers
;;;;;;  anything-yahoo-suggest anything-google-suggest anything-imenu
;;;;;;  anything-gentoo anything-minibuffer-history anything-show-kill-ring
;;;;;;  anything-info-at-point anything-recentf anything-for-files
;;;;;;  anything-mini anything-c-reset-adaptative-history anything-c-set-variable
;;;;;;  anything-c-call-interactively anything-w32-shell-execute-open-file
;;;;;;  anything-lisp-completion-or-file-name-at-point anything-lisp-completion-at-point-or-indent
;;;;;;  anything-c-complete-file-name-at-point anything-lisp-completion-at-point
;;;;;;  anything-completion-mode anything-yaoddmuse-cache-pages anything-c-bmkext-run-edit
;;;;;;  anything-c-bookmark-run-delete anything-c-bookmark-run-jump-other-window
;;;;;;  anything-yank-text-at-point anything-c-grep-run-save-buffer
;;;;;;  anything-c-grep-run-other-window-action anything-c-grep-run-default-action
;;;;;;  anything-c-grep-run-persistent-action anything-c-goto-next-file
;;;;;;  anything-c-goto-precedent-file anything-dired-mode anything-ff-run-kill-buffer-persistent
;;;;;;  anything-ff-persistent-delete anything-ff-properties-persistent
;;;;;;  anything-ff-run-print-file anything-ff-run-etags anything-ff-run-gnus-attach-files
;;;;;;  anything-ff-run-locate anything-ff-run-open-file-externally
;;;;;;  anything-ff-run-switch-other-frame anything-ff-run-switch-other-window
;;;;;;  anything-ff-run-switch-to-eshell anything-ff-run-complete-fn-at-point
;;;;;;  anything-ff-run-delete-file anything-ff-run-hardlink-file
;;;;;;  anything-ff-run-symlink-file anything-ff-run-ediff-merge-file
;;;;;;  anything-ff-run-ediff-file anything-ff-run-eshell-command-on-file
;;;;;;  anything-ff-run-load-file anything-ff-run-byte-compile-file
;;;;;;  anything-ff-run-rename-file anything-ff-run-copy-file anything-ff-run-zgrep
;;;;;;  anything-ff-run-pdfgrep anything-ff-run-grep anything-ff-run-switch-to-history
;;;;;;  anything-ff-run-toggle-auto-update anything-buffer-run-ediff
;;;;;;  anything-buffer-switch-to-elscreen anything-buffer-switch-other-frame
;;;;;;  anything-buffer-switch-other-window anything-buffer-run-query-replace
;;;;;;  anything-buffer-run-query-replace-regexp anything-buffer-run-zgrep
;;;;;;  anything-buffer-run-grep anything-buffer-run-kill-buffers
;;;;;;  anything-buffer-save-persistent anything-buffer-revert-persistent
;;;;;;  anything-buffer-diff-persistent anything-toggle-all-marks
;;;;;;  anything-unmark-all anything-mark-all anything-insert-buffer-name
;;;;;;  anything-test-sources anything-etags-help anything-pdfgrep-help
;;;;;;  anything-grep-help anything-generic-file-help anything-read-file-name-help
;;;;;;  anything-ff-help anything-c-buffer-help anything-configuration)
;;;;;;  "anything/anything-config" "anything/anything-config.el"
;;;;;;  (20878 23071 387189 57000))
;;; Generated autoloads from anything/anything-config.el

(autoload 'anything-configuration "anything/anything-config" "\
Customize `anything'.

\(fn)" t nil)

(defvar anything-command-map)

(autoload 'anything-c-buffer-help "anything/anything-config" "\
Help command for anything buffers.

\(fn)" t nil)

(autoload 'anything-ff-help "anything/anything-config" "\
Help command for `anything-find-files'.

\(fn)" t nil)

(autoload 'anything-read-file-name-help "anything/anything-config" "\


\(fn)" t nil)

(autoload 'anything-generic-file-help "anything/anything-config" "\


\(fn)" t nil)

(autoload 'anything-grep-help "anything/anything-config" "\


\(fn)" t nil)

(autoload 'anything-pdfgrep-help "anything/anything-config" "\


\(fn)" t nil)

(autoload 'anything-etags-help "anything/anything-config" "\
The help function for etags.

\(fn)" t nil)

(autoload 'anything-test-sources "anything/anything-config" "\
List all anything sources for test.
The output is sexps which are evaluated by \\[eval-last-sexp].

\(fn)" t nil)

(autoload 'anything-insert-buffer-name "anything/anything-config" "\
Insert buffer name.

\(fn)" t nil)

(autoload 'anything-mark-all "anything/anything-config" "\
Mark all visible unmarked candidates in current source.

\(fn)" t nil)

(autoload 'anything-unmark-all "anything/anything-config" "\
Unmark all candidates in all sources of current anything session.

\(fn)" t nil)

(autoload 'anything-toggle-all-marks "anything/anything-config" "\
Toggle all marks.
Mark all visible candidates of current source or unmark all candidates
visible or invisible in all sources of current anything session

\(fn)" t nil)

(autoload 'anything-buffer-diff-persistent "anything/anything-config" "\
Toggle diff buffer without quitting anything.

\(fn)" t nil)

(autoload 'anything-buffer-revert-persistent "anything/anything-config" "\
Revert buffer without quitting anything.

\(fn)" t nil)

(autoload 'anything-buffer-save-persistent "anything/anything-config" "\
Save buffer without quitting anything.

\(fn)" t nil)

(autoload 'anything-buffer-run-kill-buffers "anything/anything-config" "\
Run kill buffer action from `anything-c-source-buffers-list'.

\(fn)" t nil)

(autoload 'anything-buffer-run-grep "anything/anything-config" "\
Run Grep action from `anything-c-source-buffers-list'.

\(fn)" t nil)

(autoload 'anything-buffer-run-zgrep "anything/anything-config" "\
Run Grep action from `anything-c-source-buffers-list'.

\(fn)" t nil)

(autoload 'anything-buffer-run-query-replace-regexp "anything/anything-config" "\
Run Query replace regexp action from `anything-c-source-buffers-list'.

\(fn)" t nil)

(autoload 'anything-buffer-run-query-replace "anything/anything-config" "\
Run Query replace action from `anything-c-source-buffers-list'.

\(fn)" t nil)

(autoload 'anything-buffer-switch-other-window "anything/anything-config" "\
Run switch to other window action from `anything-c-source-buffers-list'.

\(fn)" t nil)

(autoload 'anything-buffer-switch-other-frame "anything/anything-config" "\
Run switch to other frame action from `anything-c-source-buffers-list'.

\(fn)" t nil)

(autoload 'anything-buffer-switch-to-elscreen "anything/anything-config" "\
Run switch to elscreen  action from `anything-c-source-buffers-list'.

\(fn)" t nil)

(autoload 'anything-buffer-run-ediff "anything/anything-config" "\
Run ediff action from `anything-c-source-buffers-list'.

\(fn)" t nil)

(autoload 'anything-ff-run-toggle-auto-update "anything/anything-config" "\


\(fn)" t nil)

(autoload 'anything-ff-run-switch-to-history "anything/anything-config" "\
Run Switch to history action from `anything-c-source-find-files'.

\(fn)" t nil)

(autoload 'anything-ff-run-grep "anything/anything-config" "\
Run Grep action from `anything-c-source-find-files'.

\(fn)" t nil)

(autoload 'anything-ff-run-pdfgrep "anything/anything-config" "\
Run Pdfgrep action from `anything-c-source-find-files'.

\(fn)" t nil)

(autoload 'anything-ff-run-zgrep "anything/anything-config" "\
Run Grep action from `anything-c-source-find-files'.

\(fn)" t nil)

(autoload 'anything-ff-run-copy-file "anything/anything-config" "\
Run Copy file action from `anything-c-source-find-files'.

\(fn)" t nil)

(autoload 'anything-ff-run-rename-file "anything/anything-config" "\
Run Rename file action from `anything-c-source-find-files'.

\(fn)" t nil)

(autoload 'anything-ff-run-byte-compile-file "anything/anything-config" "\
Run Byte compile file action from `anything-c-source-find-files'.

\(fn)" t nil)

(autoload 'anything-ff-run-load-file "anything/anything-config" "\
Run Load file action from `anything-c-source-find-files'.

\(fn)" t nil)

(autoload 'anything-ff-run-eshell-command-on-file "anything/anything-config" "\
Run eshell command on file action from `anything-c-source-find-files'.

\(fn)" t nil)

(autoload 'anything-ff-run-ediff-file "anything/anything-config" "\
Run Ediff file action from `anything-c-source-find-files'.

\(fn)" t nil)

(autoload 'anything-ff-run-ediff-merge-file "anything/anything-config" "\
Run Ediff merge file action from `anything-c-source-find-files'.

\(fn)" t nil)

(autoload 'anything-ff-run-symlink-file "anything/anything-config" "\
Run Symlink file action from `anything-c-source-find-files'.

\(fn)" t nil)

(autoload 'anything-ff-run-hardlink-file "anything/anything-config" "\
Run Hardlink file action from `anything-c-source-find-files'.

\(fn)" t nil)

(autoload 'anything-ff-run-delete-file "anything/anything-config" "\
Run Delete file action from `anything-c-source-find-files'.

\(fn)" t nil)

(autoload 'anything-ff-run-complete-fn-at-point "anything/anything-config" "\
Run complete file name action from `anything-c-source-find-files'.

\(fn)" t nil)

(autoload 'anything-ff-run-switch-to-eshell "anything/anything-config" "\
Run switch to eshell action from `anything-c-source-find-files'.

\(fn)" t nil)

(autoload 'anything-ff-run-switch-other-window "anything/anything-config" "\
Run switch to other window action from `anything-c-source-find-files'.

\(fn)" t nil)

(autoload 'anything-ff-run-switch-other-frame "anything/anything-config" "\
Run switch to other frame action from `anything-c-source-find-files'.

\(fn)" t nil)

(autoload 'anything-ff-run-open-file-externally "anything/anything-config" "\
Run open file externally command action from `anything-c-source-find-files'.

\(fn)" t nil)

(autoload 'anything-ff-run-locate "anything/anything-config" "\
Run locate action from `anything-c-source-find-files'.

\(fn)" t nil)

(autoload 'anything-ff-run-gnus-attach-files "anything/anything-config" "\
Run gnus attach files command action from `anything-c-source-find-files'.

\(fn)" t nil)

(autoload 'anything-ff-run-etags "anything/anything-config" "\
Run Etags command action from `anything-c-source-find-files'.

\(fn)" t nil)

(autoload 'anything-ff-run-print-file "anything/anything-config" "\
Run Print file action from `anything-c-source-find-files'.

\(fn)" t nil)

(autoload 'anything-ff-properties-persistent "anything/anything-config" "\
Show properties without quitting anything.

\(fn)" t nil)

(autoload 'anything-ff-persistent-delete "anything/anything-config" "\
Delete current candidate without quitting.

\(fn)" t nil)

(autoload 'anything-ff-run-kill-buffer-persistent "anything/anything-config" "\
Execute `anything-ff-kill-buffer-fname' whitout quitting.

\(fn)" t nil)

(defvar anything-dired-mode "Enable anything completion in Dired functions.\nBindings affected are C, R, S, H.\nThis is deprecated for Emacs24+ users, use `ac-mode' instead." "\
Non-nil if Anything-Dired mode is enabled.
See the command `anything-dired-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `anything-dired-mode'.")

(custom-autoload 'anything-dired-mode "anything/anything-config" nil)

(autoload 'anything-dired-mode "anything/anything-config" "\
Toggle Anything-Dired mode on or off.
With a prefix argument ARG, enable Anything-Dired mode if ARG is
positive, and disable it otherwise.  If called from Lisp, enable
the mode if ARG is omitted or nil, and toggle it if ARG is `toggle'.
\\{anything-dired-mode-map}

\(fn &optional ARG)" t nil)

(autoload 'anything-c-goto-precedent-file "anything/anything-config" "\
Go to precedent file in anything grep/etags buffers.

\(fn)" t nil)

(autoload 'anything-c-goto-next-file "anything/anything-config" "\
Go to precedent file in anything grep/etags buffers.

\(fn)" t nil)

(autoload 'anything-c-grep-run-persistent-action "anything/anything-config" "\
Run grep persistent action from `anything-do-grep-1'.

\(fn)" t nil)

(autoload 'anything-c-grep-run-default-action "anything/anything-config" "\
Run grep default action from `anything-do-grep-1'.

\(fn)" t nil)

(autoload 'anything-c-grep-run-other-window-action "anything/anything-config" "\
Run grep goto other window action from `anything-do-grep-1'.

\(fn)" t nil)

(autoload 'anything-c-grep-run-save-buffer "anything/anything-config" "\
Run grep save results action from `anything-do-grep-1'.

\(fn)" t nil)

(autoload 'anything-yank-text-at-point "anything/anything-config" "\
Yank text at point in minibuffer.

\(fn)" t nil)

(autoload 'anything-c-bookmark-run-jump-other-window "anything/anything-config" "\
Jump to bookmark from keyboard.

\(fn)" t nil)

(autoload 'anything-c-bookmark-run-delete "anything/anything-config" "\
Delete bookmark from keyboard.

\(fn)" t nil)

(autoload 'anything-c-bmkext-run-edit "anything/anything-config" "\
Run `bmkext-edit-bookmark' from keyboard.

\(fn)" t nil)

(autoload 'anything-yaoddmuse-cache-pages "anything/anything-config" "\
Fetch the list of files on emacswiki and create cache file.
If load is non--nil load the file and feed `yaoddmuse-pages-hash'.

\(fn &optional LOAD)" t nil)

(defvar anything-completion-mode nil "\
Non-nil if Anything-Completion mode is enabled.
See the command `anything-completion-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `anything-completion-mode'.")

(custom-autoload 'anything-completion-mode "anything/anything-config" nil)

(autoload 'anything-completion-mode "anything/anything-config" "\
Toggle generic anything completion.

All functions in Emacs that use `completing-read'
or `read-file-name' and friends will use anything interface
when this mode is turned on.
However you can modify this behavior for functions of your choice
with `anything-completing-read-handlers-alist'.

Called with a positive arg, turn on unconditionally, with a
negative arg turn off.
You can turn it on with `ac-mode'.

Some crap emacs functions may not be supported,
e.g `ffap-alternate-file' and maybe others
You can add such functions to `anything-completing-read-handlers-alist'
with a nil value.

Note: This mode will work only partially on Emacs23.

\(fn &optional ARG)" t nil)

(autoload 'anything-lisp-completion-at-point "anything/anything-config" "\
Anything lisp symbol completion at point.

\(fn)" t nil)

(autoload 'anything-c-complete-file-name-at-point "anything/anything-config" "\
Complete file name at point.

\(fn)" t nil)

(autoload 'anything-lisp-completion-at-point-or-indent "anything/anything-config" "\
First call indent and second call complete lisp symbol.
The second call should happen before `anything-lisp-completion-or-indent-delay',
after this delay, next call will indent again.
After completion, next call is always indent.
See that like click and double mouse click.
One hit indent, two quick hits maybe indent and complete.

\(fn ARG)" t nil)

(autoload 'anything-lisp-completion-or-file-name-at-point "anything/anything-config" "\
Complete lisp symbol or filename at point.
Filename completion happen if filename is started in
or between double quotes.

\(fn)" t nil)

(autoload 'anything-w32-shell-execute-open-file "anything/anything-config" "\


\(fn FILE)" t nil)

(autoload 'anything-c-call-interactively "anything/anything-config" "\
Execute CMD-OR-NAME as Emacs command.
It is added to `extended-command-history'.
`anything-current-prefix-arg' is used as the command's prefix argument.

\(fn CMD-OR-NAME)" nil nil)

(autoload 'anything-c-set-variable "anything/anything-config" "\
Set value to VAR interactively.

\(fn VAR)" t nil)

(autoload 'anything-c-reset-adaptative-history "anything/anything-config" "\
Delete all `anything-c-adaptive-history' and his file.
Useful when you have a old or corrupted `anything-c-adaptive-history-file'.

\(fn)" t nil)

(autoload 'anything-mini "anything/anything-config" "\
Preconfigured `anything' lightweight version (buffer -> recentf).

\(fn)" t nil)

(autoload 'anything-for-files "anything/anything-config" "\
Preconfigured `anything' for opening files.
ffap -> recentf -> buffer -> bookmark -> file-cache -> files-in-current-dir -> locate.

\(fn)" t nil)

(autoload 'anything-recentf "anything/anything-config" "\
Preconfigured `anything' for `recentf'.

\(fn)" t nil)

(autoload 'anything-info-at-point "anything/anything-config" "\
Preconfigured `anything' for searching info at point.
With a prefix-arg insert symbol at point.

\(fn ARG)" t nil)

(autoload 'anything-show-kill-ring "anything/anything-config" "\
Preconfigured `anything' for `kill-ring'.
It is drop-in replacement of `yank-pop'.
You may bind this command to M-y.
First call open the kill-ring browser, next calls move to next line.

\(fn)" t nil)

(autoload 'anything-minibuffer-history "anything/anything-config" "\
Preconfigured `anything' for `minibuffer-history'.

\(fn)" t nil)

(autoload 'anything-gentoo "anything/anything-config" "\
Preconfigured `anything' for gentoo linux.

\(fn)" t nil)

(autoload 'anything-imenu "anything/anything-config" "\
Preconfigured `anything' for `imenu'.

\(fn)" t nil)

(autoload 'anything-google-suggest "anything/anything-config" "\
Preconfigured `anything' for google search with google suggest.

\(fn)" t nil)

(autoload 'anything-yahoo-suggest "anything/anything-config" "\
Preconfigured `anything' for Yahoo searching with Yahoo suggest.

\(fn)" t nil)

(autoload 'anything-for-buffers "anything/anything-config" "\
Preconfigured `anything' for buffers.

\(fn)" t nil)

(autoload 'anything-buffers-list "anything/anything-config" "\
Preconfigured `anything' to list buffers.
It is an enhanced version of `anything-for-buffers'.

\(fn)" t nil)

(autoload 'anything-bbdb "anything/anything-config" "\
Preconfigured `anything' for BBDB.

Needs BBDB.

http://bbdb.sourceforge.net/

\(fn)" t nil)

(autoload 'anything-locate "anything/anything-config" "\
Preconfigured `anything' for Locate.
Note: you can add locate options after entering pattern.
See 'man locate' for valid options.

You can specify a specific database with prefix argument ARG (C-u).
Many databases can be used: navigate and mark them.
See also `anything-locate-with-db'.

To create a user specific db, use
\"updatedb -l 0 -o db_path -U directory\".
Where db_path is a filename matched by
`anything-locate-db-file-regexp'.

\(fn ARG)" t nil)

(autoload 'anything-w3m-bookmarks "anything/anything-config" "\
Preconfigured `anything' for w3m bookmark.

Needs w3m and emacs-w3m.

w3m: http://w3m.sourceforge.net/
emacs-w3m: http://emacs-w3m.namazu.org/

\(fn)" t nil)

(autoload 'anything-firefox-bookmarks "anything/anything-config" "\
Preconfigured `anything' for firefox bookmark.
You will have to enable html bookmarks in firefox:
open about:config in firefox and double click on this line to enable value to true:

user_pref(\"browser.bookmarks.autoExportHTML\", false);

You should have now:

user_pref(\"browser.bookmarks.autoExportHTML\", true);

After closing firefox, you will be able to browse you bookmarks.

\(fn)" t nil)

(autoload 'anything-colors "anything/anything-config" "\
Preconfigured `anything' for color.

\(fn)" t nil)

(autoload 'anything-bookmarks "anything/anything-config" "\
Preconfigured `anything' for bookmarks.

\(fn)" t nil)

(autoload 'anything-c-pp-bookmarks "anything/anything-config" "\
Preconfigured `anything' for bookmarks (pretty-printed).

\(fn)" t nil)

(autoload 'anything-c-insert-latex-math "anything/anything-config" "\
Preconfigured anything for latex math symbols completion.

\(fn)" t nil)

(autoload 'anything-register "anything/anything-config" "\
Preconfigured `anything' for Emacs registers.

\(fn)" t nil)

(autoload 'anything-man-woman "anything/anything-config" "\
Preconfigured `anything' for Man and Woman pages.

\(fn)" t nil)

(autoload 'anything-org-keywords "anything/anything-config" "\
Preconfigured `anything' for org keywords.

\(fn)" t nil)

(autoload 'anything-emms "anything/anything-config" "\
Preconfigured `anything' for emms sources.

\(fn)" t nil)

(autoload 'anything-eev-anchors "anything/anything-config" "\
Preconfigured `anything' for eev anchors.

\(fn)" t nil)

(autoload 'anything-bm-list "anything/anything-config" "\
Preconfigured `anything' for visible bookmarks.

Needs bm.el

http://cvs.savannah.gnu.org/viewvc/*checkout*/bm/bm/bm.el

\(fn)" t nil)

(autoload 'anything-timers "anything/anything-config" "\
Preconfigured `anything' for timers.

\(fn)" t nil)

(autoload 'anything-list-emacs-process "anything/anything-config" "\
Preconfigured `anything' for emacs process.

\(fn)" t nil)

(autoload 'anything-occur "anything/anything-config" "\
Preconfigured Anything for Occur source.
If region is active, search only in region,
otherwise search in whole buffer.

\(fn)" t nil)

(autoload 'anything-browse-code "anything/anything-config" "\
Preconfigured anything to browse code.

\(fn)" t nil)

(autoload 'anything-org-headlines "anything/anything-config" "\
Preconfigured anything to show org headlines.

\(fn)" t nil)

(autoload 'anything-regexp "anything/anything-config" "\
Preconfigured anything to build regexps.
`query-replace-regexp' can be run from there against found regexp.

\(fn)" t nil)

(autoload 'anything-c-copy-files-async "anything/anything-config" "\
Preconfigured anything to copy file list FLIST to DEST asynchronously.

\(fn)" t nil)

(autoload 'anything-find-files "anything/anything-config" "\
Preconfigured `anything' for anything implementation of `find-file'.
Called with a prefix arg show history if some.
Don't call it from programs, use `anything-find-files-1' instead.
This is the starting point for nearly all actions you can do on files.

\(fn ARG)" t nil)

(autoload 'anything-write-file "anything/anything-config" "\
Preconfigured `anything' providing completion for `write-file'.

\(fn)" t nil)

(autoload 'anything-insert-file "anything/anything-config" "\
Preconfigured `anything' providing completion for `insert-file'.

\(fn)" t nil)

(autoload 'anything-dired-rename-file "anything/anything-config" "\
Preconfigured `anything' to rename files from dired.

\(fn)" t nil)

(autoload 'anything-dired-copy-file "anything/anything-config" "\
Preconfigured `anything' to copy files from dired.

\(fn)" t nil)

(autoload 'anything-dired-symlink-file "anything/anything-config" "\
Preconfigured `anything' to symlink files from dired.

\(fn)" t nil)

(autoload 'anything-dired-hardlink-file "anything/anything-config" "\
Preconfigured `anything' to hardlink files from dired.

\(fn)" t nil)

(autoload 'anything-do-grep "anything/anything-config" "\
Preconfigured anything for grep.
Contrarily to Emacs `grep' no default directory is given, but
the full path of candidates in ONLY.
That allow to grep different files not only in `default-directory' but anywhere
by marking them (C-<SPACE>). If one or more directory is selected
grep will search in all files of these directories.
You can use also wildcard in the base name of candidate.
If a prefix arg is given use the -r option of grep.
The prefix arg can be passed before or after start.
See also `anything-do-grep-1'.

\(fn)" t nil)

(autoload 'anything-do-zgrep "anything/anything-config" "\
Preconfigured anything for zgrep.

\(fn)" t nil)

(autoload 'anything-do-pdfgrep "anything/anything-config" "\
Preconfigured anything for pdfgrep.

\(fn)" t nil)

(autoload 'anything-c-etags-select "anything/anything-config" "\
Preconfigured anything for etags.
Called with one prefix arg use symbol at point as initial input.
Called with two prefix arg reinitialize cache.
If tag file have been modified reinitialize cache.

\(fn ARG)" t nil)

(autoload 'anything-filelist "anything/anything-config" "\
Preconfigured `anything' to open files instantly.

See `anything-c-filelist-file-name' docstring for usage.

\(fn)" t nil)

(autoload 'anything-filelist+ "anything/anything-config" "\
Preconfigured `anything' to open files/buffers/bookmarks instantly.

This is a replacement for `anything-for-files'.
See `anything-c-filelist-file-name' docstring for usage.

\(fn)" t nil)

(autoload 'anything-M-x "anything/anything-config" "\
Preconfigured `anything' for Emacs commands.
It is `anything' replacement of regular `M-x' `execute-extended-command'.

\(fn)" t nil)

(autoload 'anything-manage-advice "anything/anything-config" "\
Preconfigured `anything' to disable/enable function advices.

\(fn)" t nil)

(autoload 'anything-bookmark-ext "anything/anything-config" "\
Preconfigured `anything' for bookmark-extensions sources.
Needs bookmark-ext.el:
<http://mercurial.intuxication.org/hg/emacs-bookmark-extension>.
Contain also `anything-c-source-google-suggest'.

\(fn)" t nil)

(autoload 'anything-simple-call-tree "anything/anything-config" "\
Preconfigured `anything' for simple-call-tree. List function relationships.

Needs simple-call-tree.el.
http://www.emacswiki.org/cgi-bin/wiki/download/simple-call-tree.el

\(fn)" t nil)

(autoload 'anything-mark-ring "anything/anything-config" "\
Preconfigured `anything' for `anything-c-source-mark-ring'.

\(fn)" t nil)

(autoload 'anything-global-mark-ring "anything/anything-config" "\
Preconfigured `anything' for `anything-c-source-global-mark-ring'.

\(fn)" t nil)

(autoload 'anything-all-mark-rings "anything/anything-config" "\
Preconfigured `anything' for `anything-c-source-global-mark-ring' and `anything-c-source-mark-ring'.

\(fn)" t nil)

(autoload 'anything-yaoddmuse-emacswiki-edit-or-view "anything/anything-config" "\
Preconfigured `anything' to edit or view EmacsWiki page.

Needs yaoddmuse.el.

http://www.emacswiki.org/emacs/download/yaoddmuse.el

\(fn)" t nil)

(autoload 'anything-yaoddmuse-emacswiki-post-library "anything/anything-config" "\
Preconfigured `anything' to post library to EmacsWiki.

Needs yaoddmuse.el.

http://www.emacswiki.org/emacs/download/yaoddmuse.el

\(fn)" t nil)

(autoload 'anything-eval-expression "anything/anything-config" "\
Preconfigured anything for `anything-c-source-evaluation-result'.

\(fn ARG)" t nil)

(autoload 'anything-eval-expression-with-eldoc "anything/anything-config" "\
Preconfigured anything for `anything-c-source-evaluation-result' with `eldoc' support.

\(fn)" t nil)

(autoload 'anything-calcul-expression "anything/anything-config" "\
Preconfigured anything for `anything-c-source-calculation-result'.

\(fn)" t nil)

(autoload 'anything-surfraw "anything/anything-config" "\
Preconfigured `anything' to search PATTERN with search ENGINE.

\(fn PATTERN ENGINE)" t nil)

(autoload 'anything-call-source "anything/anything-config" "\
Preconfigured `anything' to call anything source.

\(fn)" t nil)

(autoload 'anything-execute-anything-command "anything/anything-config" "\
Preconfigured `anything' to execute preconfigured `anything'.

\(fn)" t nil)

(autoload 'anything-create "anything/anything-config" "\
Preconfigured `anything' to do many create actions from STRING.
See also `anything-create--actions'.

\(fn &optional STRING INITIAL-INPUT)" t nil)

(autoload 'anything-top "anything/anything-config" "\
Preconfigured `anything' for top command.

\(fn)" t nil)

(autoload 'anything-select-xfont "anything/anything-config" "\
Preconfigured `anything' to select Xfont.

\(fn)" t nil)

(autoload 'anything-world-time "anything/anything-config" "\
Preconfigured `anything' to show world time.

\(fn)" t nil)

(autoload 'anything-apt "anything/anything-config" "\
Preconfigured `anything' : frontend of APT package manager.
With a prefix arg reload cache.

\(fn ARG)" t nil)

(autoload 'anything-esh-pcomplete "anything/anything-config" "\
Preconfigured anything to provide anything completion in eshell.

\(fn)" t nil)

(autoload 'anything-eshell-history "anything/anything-config" "\
Preconfigured anything for eshell history.

\(fn)" t nil)

(autoload 'anything-c-run-external-command "anything/anything-config" "\
Preconfigured `anything' to run External PROGRAM asyncronously from Emacs.
If program is already running exit with error.
You can set your own list of commands with
`anything-c-external-commands-list'.

\(fn PROGRAM)" t nil)

(autoload 'anything-ratpoison-commands "anything/anything-config" "\
Preconfigured `anything' to execute ratpoison commands.

\(fn)" t nil)

(autoload 'anything-ucs "anything/anything-config" "\
Preconfigured anything for `ucs-names' math symbols.

\(fn)" t nil)

(autoload 'anything-c-apropos "anything/anything-config" "\
Preconfigured anything to describe commands, functions, variables and faces.

\(fn)" t nil)

(autoload 'anything-xrandr-set "anything/anything-config" "\


\(fn)" t nil)

(autoload 'anything-ctags-current-file "anything/anything-config" "\
Preconfigured `anything' to list function/variable definitions.

Needs Exuberant Ctags.

http://ctags.sourceforge.net/

\(fn)" t nil)

;;;***

;;;### (autoloads (anything-mp-toggle-match-plugin) "anything/anything-match-plugin"
;;;;;;  "anything/anything-match-plugin.el" (20786 39337 921161 25000))
;;; Generated autoloads from anything/anything-match-plugin.el

(autoload 'anything-mp-toggle-match-plugin "anything/anything-match-plugin" "\
Turn on/off multiple regexp matching in anything.
i.e anything-match-plugin.

\(fn)" t nil)

;;;***

;;;### (autoloads (ctags-update-minor-mode ctags-update) "ctags-update/ctags-update"
;;;;;;  "ctags-update/ctags-update.el" (20878 37154 199982 339000))
;;; Generated autoloads from ctags-update/ctags-update.el

(autoload 'ctags-update "ctags-update/ctags-update" "\
update TAGS in parent directory using `exuberant-ctags' you
can call this function directly , or enable
`ctags-update-minor-mode' or with prefix `C-u' then you can
generate a new TAGS file in directory

\(fn &optional ARGS)" t nil)

(autoload 'ctags-update-minor-mode "ctags-update/ctags-update" "\
auto update TAGS using `exuberant-ctags' in parent directory.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads (deft deft-new-file) "deft/deft" "deft/deft.el"
;;;;;;  (20878 29188 982847 7000))
;;; Generated autoloads from deft/deft.el

(autoload 'deft-new-file "deft/deft" "\
Create a new file quickly.
Use either an automatically generated filename or the filter
string if non-nil and `deft-use-filename-as-title' is set.  If the
filter string is non-nil and title is not from filename, use it
as the title.

\(fn)" t nil)

(autoload 'deft "deft/deft" "\
Switch to *Deft* buffer and load files.

\(fn)" t nil)

;;;***

;;;### (autoloads (gretl gretl-mode) "ess/lisp/ess-gretl" "ess/lisp/ess-gretl.el"
;;;;;;  (20878 23131 781570 18000))
;;; Generated autoloads from ess/lisp/ess-gretl.el

(autoload 'gretl-mode "ess/lisp/ess-gretl" "\
Major mode for editing gretl source.  See `ess-mode' for more help.

\(fn &optional PROC-NAME)" t nil)

(autoload 'gretl "ess/lisp/ess-gretl" "\
Call 'gretl',
Optional prefix (C-u) allows to set command line arguments, such as
--vsize.  This should be OS agnostic.
If you have certain command line arguments that should always be passed
to gretl, put them in the variable `inferior-gretl-args'.

\(fn &optional START-ARGS)" t nil)

;;;***

;;;### (autoloads (er/expand-region) "expand-region/expand-region"
;;;;;;  "expand-region/expand-region.el" (20878 23132 305590 685000))
;;; Generated autoloads from expand-region/expand-region.el

(autoload 'er/expand-region "expand-region/expand-region" "\
Increase selected region by semantic units.

With prefix argument expands the region that many times.
If prefix argument is negative calls `er/contract-region'.
If prefix argument is 0 it resets point and mark to their state
before calling `er/expand-region' for the first time.

\(fn ARG)" t nil)

;;;***

;;;### (autoloads (expand-region-exclude-text-mode-expansions expand-region-reset-fast-key
;;;;;;  expand-region-contract-fast-key expand-region-fast-keys-enabled
;;;;;;  expand-region-skip-whitespace expand-region-autocopy-register
;;;;;;  expand-region-guess-python-mode expand-region-preferred-python-mode
;;;;;;  expand-region) "expand-region/expand-region-custom" "expand-region/expand-region-custom.el"
;;;;;;  (20878 23132 305590 685000))
;;; Generated autoloads from expand-region/expand-region-custom.el

(let ((loads (get 'expand-region 'custom-loads))) (if (member '"expand-region/expand-region-custom" loads) nil (put 'expand-region 'custom-loads (cons '"expand-region/expand-region-custom" loads))))

(defvar expand-region-preferred-python-mode 'python "\
The name of your preferred python mode")

(custom-autoload 'expand-region-preferred-python-mode "expand-region/expand-region-custom" t)

(defvar expand-region-guess-python-mode t "\
If expand-region should attempt to guess your preferred python mode")

(custom-autoload 'expand-region-guess-python-mode "expand-region/expand-region-custom" t)

(defvar expand-region-autocopy-register "" "\
If set to a string of a single character (try \"e\"), then the
contents of the most recent expand or contract command will
always be copied to the register named after that character.")

(custom-autoload 'expand-region-autocopy-register "expand-region/expand-region-custom" t)

(defvar expand-region-skip-whitespace t "\
If expand-region should skip past whitespace on initial expansion")

(custom-autoload 'expand-region-skip-whitespace "expand-region/expand-region-custom" t)

(defvar expand-region-fast-keys-enabled t "\
If expand-region should bind fast keys after initial expand/contract")

(custom-autoload 'expand-region-fast-keys-enabled "expand-region/expand-region-custom" t)

(defvar expand-region-contract-fast-key "-" "\
Key to use after an initial expand/contract to contract once more.")

(custom-autoload 'expand-region-contract-fast-key "expand-region/expand-region-custom" t)

(defvar expand-region-reset-fast-key "0" "\
Key to use after an initial expand/contract to undo.")

(custom-autoload 'expand-region-reset-fast-key "expand-region/expand-region-custom" t)

(defvar expand-region-exclude-text-mode-expansions '(html-mode nxml-mode) "\
List of modes which derive from `text-mode' for which text mode expansions are not appropriate.")

(custom-autoload 'expand-region-exclude-text-mode-expansions "expand-region/expand-region-custom" t)

;;;***

;;;### (autoloads (find-file-in-project) "find-file-in-project/find-file-in-project"
;;;;;;  "find-file-in-project/find-file-in-project.el" (20878 33017
;;;;;;  896660 607000))
;;; Generated autoloads from find-file-in-project/find-file-in-project.el

(autoload 'find-file-in-project "find-file-in-project/find-file-in-project" "\
Prompt with a completing list of all files in the project to find one.

The project's scope is defined as the first directory containing
an `.emacs-project' file.  You can override this by locally
setting the variable `ffip-project-root'.

\(fn)" t nil)

(defalias 'ffip 'find-file-in-project)

(put 'ffip-patterns 'safe-local-variable 'listp)

(put 'ffip-find-options 'safe-local-variable 'stringp)

(put 'ffip-project-file 'safe-local-variable 'stringp)

(put 'ffip-project-root 'safe-local-variable 'stringp)

(put 'ffip-project-root-function 'safe-local-variable 'functionp)

(put 'ffip-limit 'safe-local-variable 'integerp)

;;;***

;;;### (autoloads (git-reblame git-blame-mode) "git-emacs/git-blame"
;;;;;;  "git-emacs/git-blame.el" (20819 6711 854590 110000))
;;; Generated autoloads from git-emacs/git-blame.el

(autoload 'git-blame-mode "git-emacs/git-blame" "\
Toggle minor mode for displaying Git blame

With prefix ARG, turn the mode on if ARG is positive.

\(fn &optional ARG)" t nil)

(autoload 'git-reblame "git-emacs/git-blame" "\
Recalculate all blame information in the current buffer

\(fn)" t nil)

;;;***

;;;### (autoloads (git-gutter:toggle git-gutter:clear git-gutter
;;;;;;  git-gutter:previous-hunk git-gutter:next-hunk git-gutter:popup-hunk
;;;;;;  git-gutter:revert-hunk global-git-gutter-mode git-gutter-mode)
;;;;;;  "git-gutter/git-gutter" "git-gutter/git-gutter.el" (20878
;;;;;;  23135 749726 519000))
;;; Generated autoloads from git-gutter/git-gutter.el

(autoload 'git-gutter-mode "git-gutter/git-gutter" "\
Git-Gutter mode

\(fn &optional ARG)" t nil)

(defvar global-git-gutter-mode nil "\
Non-nil if Global-Git-Gutter mode is enabled.
See the command `global-git-gutter-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `global-git-gutter-mode'.")

(custom-autoload 'global-git-gutter-mode "git-gutter/git-gutter" nil)

(autoload 'global-git-gutter-mode "git-gutter/git-gutter" "\
Toggle Git-Gutter mode in all buffers.
With prefix ARG, enable Global-Git-Gutter mode if ARG is positive;
otherwise, disable it.  If called from Lisp, enable the mode if
ARG is omitted or nil.

Git-Gutter mode is enabled in all buffers where
`(lambda nil (when (and (buffer-file-name) (not (memq major-mode git-gutter:disabled-modes))) (git-gutter-mode 1)))' would do it.
See `git-gutter-mode' for more information on Git-Gutter mode.

\(fn &optional ARG)" t nil)

(autoload 'git-gutter:revert-hunk "git-gutter/git-gutter" "\
Revert current hunk.

\(fn)" t nil)

(autoload 'git-gutter:popup-hunk "git-gutter/git-gutter" "\
popup current diff hunk

\(fn &optional DIFFINFO)" t nil)

(autoload 'git-gutter:next-hunk "git-gutter/git-gutter" "\
Move to next diff hunk

\(fn ARG)" t nil)

(autoload 'git-gutter:previous-hunk "git-gutter/git-gutter" "\
Move to previous diff hunk

\(fn ARG)" t nil)

(autoload 'git-gutter "git-gutter/git-gutter" "\
Show diff information in gutter

\(fn)" t nil)

(autoload 'git-gutter:clear "git-gutter/git-gutter" "\
clear diff information in gutter

\(fn)" t nil)

(autoload 'git-gutter:toggle "git-gutter/git-gutter" "\
toggle to show diff information

\(fn)" t nil)

;;;***

;;;### (autoloads (assistant) "gnus/lisp/assistant" "gnus/lisp/assistant.el"
;;;;;;  (20803 21489 464910 752000))
;;; Generated autoloads from gnus/lisp/assistant.el

(autoload 'assistant "gnus/lisp/assistant" "\
Assist setting up Emacs based on FILE.

\(fn FILE)" t nil)

;;;***

;;;### (autoloads (auth-source-cache-expiry) "gnus/lisp/auth-source"
;;;;;;  "gnus/lisp/auth-source.el" (20803 21489 464910 752000))
;;; Generated autoloads from gnus/lisp/auth-source.el

(defvar auth-source-cache-expiry 7200 "\
How many seconds passwords are cached, or nil to disable
expiring.  Overrides `password-cache-expiry' through a
let-binding.")

(custom-autoload 'auth-source-cache-expiry "gnus/lisp/auth-source" t)

;;;***

;;;### (autoloads (binhex-decode-region binhex-decode-region-external
;;;;;;  binhex-decode-region-internal) "gnus/lisp/binhex" "gnus/lisp/binhex.el"
;;;;;;  (20803 21489 464910 752000))
;;; Generated autoloads from gnus/lisp/binhex.el

(defconst binhex-begin-line "^:...............................................................$" "\
Regular expression matching the start of a BinHex encoded region.")

(autoload 'binhex-decode-region-internal "gnus/lisp/binhex" "\
Binhex decode region between START and END without using an external program.
If HEADER-ONLY is non-nil only decode header and return filename.

\(fn START END &optional HEADER-ONLY)" t nil)

(autoload 'binhex-decode-region-external "gnus/lisp/binhex" "\
Binhex decode region between START and END using external decoder.

\(fn START END)" t nil)

(autoload 'binhex-decode-region "gnus/lisp/binhex" "\
Binhex decode region between START and END.

\(fn START END)" t nil)

;;;***

;;;### (autoloads (canlock-verify canlock-insert-header) "gnus/lisp/canlock"
;;;;;;  "gnus/lisp/canlock.el" (20803 21489 464910 752000))
;;; Generated autoloads from gnus/lisp/canlock.el

(autoload 'canlock-insert-header "gnus/lisp/canlock" "\
Insert a Cancel-Key and/or a Cancel-Lock header if possible.

\(fn &optional ID-FOR-KEY ID-FOR-LOCK PASSWORD)" nil nil)

(autoload 'canlock-verify "gnus/lisp/canlock" "\
Verify Cancel-Lock or Cancel-Key in BUFFER.
If BUFFER is nil, the current buffer is assumed.  Signal an error if
it fails.

\(fn &optional BUFFER)" t nil)

;;;***

;;;### (autoloads (color-name-to-rgb) "gnus/lisp/color" "gnus/lisp/color.el"
;;;;;;  (20803 21489 464910 752000))
;;; Generated autoloads from gnus/lisp/color.el

(autoload 'color-name-to-rgb "gnus/lisp/color" "\
Convert COLOR string to a list of normalized RGB components.
COLOR should be a color name (e.g. \"white\") or an RGB triplet
string (e.g. \"#ff12ec\").

Normally the return value is a list of three floating-point
numbers, (RED GREEN BLUE), each between 0.0 and 1.0 inclusive.

Optional argument FRAME specifies the frame where the color is to be
displayed.  If FRAME is omitted or nil, use the selected frame.
If FRAME cannot display COLOR, return nil.

\(fn COLOR &optional FRAME)" nil nil)

;;;***

;;;### (autoloads (gnus-article-outlook-deuglify-article gnus-outlook-deuglify-article
;;;;;;  gnus-article-outlook-repair-attribution gnus-article-outlook-unwrap-lines)
;;;;;;  "gnus/lisp/deuglify" "gnus/lisp/deuglify.el" (20803 21489
;;;;;;  464910 752000))
;;; Generated autoloads from gnus/lisp/deuglify.el

(autoload 'gnus-article-outlook-unwrap-lines "gnus/lisp/deuglify" "\
Unwrap lines that appear to be wrapped citation lines.
You can control what lines will be unwrapped by frobbing
`gnus-outlook-deuglify-unwrap-min' and `gnus-outlook-deuglify-unwrap-max',
indicating the minimum and maximum length of an unwrapped citation line.  If
NODISPLAY is non-nil, don't redisplay the article buffer.

\(fn &optional NODISPLAY)" t nil)

(autoload 'gnus-article-outlook-repair-attribution "gnus/lisp/deuglify" "\
Repair a broken attribution line.
If NODISPLAY is non-nil, don't redisplay the article buffer.

\(fn &optional NODISPLAY)" t nil)

(autoload 'gnus-outlook-deuglify-article "gnus/lisp/deuglify" "\
Full deuglify of broken Outlook (Express) articles.
Treat dumbquotes, unwrap lines, repair attribution and rearrange citation.  If
NODISPLAY is non-nil, don't redisplay the article buffer.

\(fn &optional NODISPLAY)" t nil)

(autoload 'gnus-article-outlook-deuglify-article "gnus/lisp/deuglify" "\
Deuglify broken Outlook (Express) articles and redisplay.

\(fn)" t nil)

;;;***

;;;### (autoloads (dig) "gnus/lisp/dig" "gnus/lisp/dig.el" (20803
;;;;;;  21489 464910 752000))
;;; Generated autoloads from gnus/lisp/dig.el

(autoload 'dig "gnus/lisp/dig" "\
Query addresses of a DOMAIN using dig, by calling `dig-invoke'.
Optional arguments are passed to `dig-invoke'.

\(fn DOMAIN &optional QUERY-TYPE QUERY-CLASS QUERY-OPTION DIG-OPTION SERVER)" t nil)

;;;***

;;;### (autoloads (dns-mode-soa-increment-serial dns-mode) "gnus/lisp/dns-mode"
;;;;;;  "gnus/lisp/dns-mode.el" (20803 21489 464910 752000))
;;; Generated autoloads from gnus/lisp/dns-mode.el

(autoload 'dns-mode "gnus/lisp/dns-mode" "\
Major mode for viewing and editing DNS master files.
This mode is inherited from text mode.  It add syntax
highlighting, and some commands for handling DNS master files.
Its keymap inherits from `text-mode' and it has the same
variables for customizing indentation.  It has its own abbrev
table and its own syntax table.

Turning on DNS mode runs `dns-mode-hook'.

\(fn)" t nil)
 (defalias 'zone-mode 'dns-mode)

(autoload 'dns-mode-soa-increment-serial "gnus/lisp/dns-mode" "\
Locate SOA record and increment the serial field.

\(fn)" t nil)

;;;***

;;;### (autoloads (ecomplete-setup) "gnus/lisp/ecomplete" "gnus/lisp/ecomplete.el"
;;;;;;  (20803 21489 464910 752000))
;;; Generated autoloads from gnus/lisp/ecomplete.el

(autoload 'ecomplete-setup "gnus/lisp/ecomplete" "\


\(fn)" nil nil)

;;;***

;;;### (autoloads (fill-flowed fill-flowed-encode) "gnus/lisp/flow-fill"
;;;;;;  "gnus/lisp/flow-fill.el" (20803 21489 464910 752000))
;;; Generated autoloads from gnus/lisp/flow-fill.el

(autoload 'fill-flowed-encode "gnus/lisp/flow-fill" "\


\(fn &optional BUFFER)" nil nil)

(autoload 'fill-flowed "gnus/lisp/flow-fill" "\


\(fn &optional BUFFER DELETE-SPACE)" nil nil)

;;;***

;;;### (autoloads (gmm-tool-bar-from-list gmm-widget-p gmm-error
;;;;;;  gmm-message gmm-regexp-concat) "gnus/lisp/gmm-utils" "gnus/lisp/gmm-utils.el"
;;;;;;  (20803 21489 464910 752000))
;;; Generated autoloads from gnus/lisp/gmm-utils.el

(autoload 'gmm-regexp-concat "gnus/lisp/gmm-utils" "\
Potentially concat a list of regexps into a single one.
The concatenation is done with logical ORs.

\(fn REGEXP)" nil nil)

(autoload 'gmm-message "gnus/lisp/gmm-utils" "\
If LEVEL is lower than `gmm-verbose' print ARGS using `message'.

Guideline for numbers:
1 - error messages
3 - non-serious error messages
5 - messages for things that take a long time
7 - not very important messages on stuff
9 - messages inside loops.

\(fn LEVEL &rest ARGS)" nil nil)

(autoload 'gmm-error "gnus/lisp/gmm-utils" "\
Beep an error if LEVEL is equal to or less than `gmm-verbose'.
ARGS are passed to `message'.

\(fn LEVEL &rest ARGS)" nil nil)

(autoload 'gmm-widget-p "gnus/lisp/gmm-utils" "\
Non-nil if SYMBOL is a widget.

\(fn SYMBOL)" nil nil)

(autoload 'gmm-tool-bar-from-list "gnus/lisp/gmm-utils" "\
Make a tool bar from ICON-LIST.

Within each entry of ICON-LIST, the first element is a menu
command, the second element is an icon file name and the third
element is a test function.  You can use \\[describe-key]
<menu-entry> to find out the name of a menu command.  The fourth
and all following elements are passed as the PROPS argument to the
function `tool-bar-local-item'.

If ZAP-LIST is a list, remove those item from the default
`tool-bar-map'.  If it is t, start with a new sparse map.  You
can use \\[describe-key] <icon> to find out the name of an icon
item.  When \\[describe-key] <icon> shows \"<tool-bar> <new-file>
runs the command find-file\", then use `new-file' in ZAP-LIST.

DEFAULT-MAP specifies the default key map for ICON-LIST.

\(fn ICON-LIST ZAP-LIST DEFAULT-MAP)" nil nil)

;;;***

;;;### (autoloads (gnus gnus-other-frame gnus-slave gnus-no-server
;;;;;;  gnus-slave-no-server) "gnus/lisp/gnus" "gnus/lisp/gnus.el"
;;;;;;  (20878 23145 334104 553000))
;;; Generated autoloads from gnus/lisp/gnus.el
(when (fboundp 'custom-autoload)
 (custom-autoload 'gnus-select-method "gnus"))

(autoload 'gnus-slave-no-server "gnus/lisp/gnus" "\
Read network news as a slave, without connecting to the local server.

\(fn &optional ARG)" t nil)

(autoload 'gnus-no-server "gnus/lisp/gnus" "\
Read network news.
If ARG is a positive number, Gnus will use that as the startup
level. If ARG is nil, Gnus will be started at level 2.  If ARG is
non-nil and not a positive number, Gnus will prompt the user for the
name of an NNTP server to use.
As opposed to `gnus', this command will not connect to the local
server.

\(fn &optional ARG SLAVE)" t nil)

(autoload 'gnus-slave "gnus/lisp/gnus" "\
Read news as a slave.

\(fn &optional ARG)" t nil)

(autoload 'gnus-other-frame "gnus/lisp/gnus" "\
Pop up a frame to read news.
This will call one of the Gnus commands which is specified by the user
option `gnus-other-frame-function' (default `gnus') with the argument
ARG if Gnus is not running, otherwise pop up a Gnus frame and run the
command specified by `gnus-other-frame-resume-function'.
The optional second argument DISPLAY should be a standard display string
such as \"unix:0\" to specify where to pop up a frame.  If DISPLAY is
omitted or the function `make-frame-on-display' is not available, the
current display is used.

\(fn &optional ARG DISPLAY)" t nil)

(autoload 'gnus "gnus/lisp/gnus" "\
Read network news.
If ARG is non-nil and a positive number, Gnus will use that as the
startup level.  If ARG is non-nil and not a positive number, Gnus will
prompt the user for the name of an NNTP server to use.

\(fn &optional ARG DONT-CONNECT SLAVE)" t nil)

;;;***

;;;### (autoloads (gnus-agent-regenerate gnus-agent-batch gnus-agent-batch-fetch
;;;;;;  gnus-agent-find-parameter gnus-agent-possibly-alter-active
;;;;;;  gnus-agent-get-undownloaded-list gnus-agent-delete-group
;;;;;;  gnus-agent-rename-group gnus-agent-possibly-save-gcc gnus-agentize
;;;;;;  gnus-slave-unplugged gnus-plugged gnus-unplugged) "gnus/lisp/gnus-agent"
;;;;;;  "gnus/lisp/gnus-agent.el" (20803 21489 468910 908000))
;;; Generated autoloads from gnus/lisp/gnus-agent.el

(autoload 'gnus-unplugged "gnus/lisp/gnus-agent" "\
Start Gnus unplugged.

\(fn)" t nil)

(autoload 'gnus-plugged "gnus/lisp/gnus-agent" "\
Start Gnus plugged.

\(fn)" t nil)

(autoload 'gnus-slave-unplugged "gnus/lisp/gnus-agent" "\
Read news as a slave unplugged.

\(fn &optional ARG)" t nil)

(autoload 'gnus-agentize "gnus/lisp/gnus-agent" "\
Allow Gnus to be an offline newsreader.

The gnus-agentize function is now called internally by gnus when
gnus-agent is set.  If you wish to avoid calling gnus-agentize,
customize gnus-agent to nil.

This will modify the `gnus-setup-news-hook', and
`message-send-mail-real-function' variables, and install the Gnus agent
minor mode in all Gnus buffers.

\(fn)" t nil)

(autoload 'gnus-agent-possibly-save-gcc "gnus/lisp/gnus-agent" "\
Save GCC if Gnus is unplugged.

\(fn)" nil nil)

(autoload 'gnus-agent-rename-group "gnus/lisp/gnus-agent" "\
Rename fully-qualified OLD-GROUP as NEW-GROUP.
Always updates the agent, even when disabled, as the old agent
files would corrupt gnus when the agent was next enabled.
Depends upon the caller to determine whether group renaming is
supported.

\(fn OLD-GROUP NEW-GROUP)" nil nil)

(autoload 'gnus-agent-delete-group "gnus/lisp/gnus-agent" "\
Delete fully-qualified GROUP.
Always updates the agent, even when disabled, as the old agent
files would corrupt gnus when the agent was next enabled.
Depends upon the caller to determine whether group deletion is
supported.

\(fn GROUP)" nil nil)

(autoload 'gnus-agent-get-undownloaded-list "gnus/lisp/gnus-agent" "\
Construct list of articles that have not been downloaded.

\(fn)" nil nil)

(autoload 'gnus-agent-possibly-alter-active "gnus/lisp/gnus-agent" "\
Possibly expand a group's active range to include articles
downloaded into the agent.

\(fn GROUP ACTIVE &optional INFO)" nil nil)

(autoload 'gnus-agent-find-parameter "gnus/lisp/gnus-agent" "\
Search for GROUPs SYMBOL in the group's parameters, the group's
topic parameters, the group's category, or the customizable
variables.  Returns the first non-nil value found.

\(fn GROUP SYMBOL)" nil nil)

(autoload 'gnus-agent-batch-fetch "gnus/lisp/gnus-agent" "\
Start Gnus and fetch session.

\(fn)" t nil)

(autoload 'gnus-agent-batch "gnus/lisp/gnus-agent" "\
Start Gnus, send queue and fetch session.

\(fn)" t nil)

(autoload 'gnus-agent-regenerate "gnus/lisp/gnus-agent" "\
Regenerate all agent covered files.
If CLEAN, obsolete (ignore).

\(fn &optional CLEAN REREAD)" t nil)

;;;***

;;;### (autoloads (gnus-article-prepare-display) "gnus/lisp/gnus-art"
;;;;;;  "gnus/lisp/gnus-art.el" (20878 23145 270102 28000))
;;; Generated autoloads from gnus/lisp/gnus-art.el

(autoload 'gnus-article-prepare-display "gnus/lisp/gnus-art" "\
Make the current buffer look like a nice article.

\(fn)" nil nil)

;;;***

;;;### (autoloads (gnus-bookmark-bmenu-list gnus-bookmark-jump gnus-bookmark-set)
;;;;;;  "gnus/lisp/gnus-bookmark" "gnus/lisp/gnus-bookmark.el" (20803
;;;;;;  21489 468910 908000))
;;; Generated autoloads from gnus/lisp/gnus-bookmark.el

(autoload 'gnus-bookmark-set "gnus/lisp/gnus-bookmark" "\
Set a bookmark for this article.

\(fn)" t nil)

(autoload 'gnus-bookmark-jump "gnus/lisp/gnus-bookmark" "\
Jump to a Gnus bookmark (BMK-NAME).

\(fn &optional BMK-NAME)" t nil)

(autoload 'gnus-bookmark-bmenu-list "gnus/lisp/gnus-bookmark" "\
Display a list of existing Gnus bookmarks.
The list is displayed in a buffer named `*Gnus Bookmark List*'.
The leftmost column displays a D if the bookmark is flagged for
deletion, or > if it is flagged for displaying.

\(fn)" t nil)

;;;***

;;;### (autoloads (gnus-cache-delete-group gnus-cache-rename-group
;;;;;;  gnus-cache-generate-nov-databases gnus-cache-generate-active
;;;;;;  gnus-jog-cache) "gnus/lisp/gnus-cache" "gnus/lisp/gnus-cache.el"
;;;;;;  (20803 21489 468910 908000))
;;; Generated autoloads from gnus/lisp/gnus-cache.el

(autoload 'gnus-jog-cache "gnus/lisp/gnus-cache" "\
Go through all groups and put the articles into the cache.

Usage:
$ emacs -batch -l ~/.emacs -l gnus -f gnus-jog-cache

\(fn)" t nil)

(autoload 'gnus-cache-generate-active "gnus/lisp/gnus-cache" "\
Generate the cache active file.

\(fn &optional DIRECTORY)" t nil)

(autoload 'gnus-cache-generate-nov-databases "gnus/lisp/gnus-cache" "\
Generate NOV files recursively starting in DIR.

\(fn DIR)" t nil)

(autoload 'gnus-cache-rename-group "gnus/lisp/gnus-cache" "\
Rename OLD-GROUP as NEW-GROUP.
Always updates the cache, even when disabled, as the old cache
files would corrupt Gnus when the cache was next enabled.  It
depends on the caller to determine whether group renaming is
supported.

\(fn OLD-GROUP NEW-GROUP)" nil nil)

(autoload 'gnus-cache-delete-group "gnus/lisp/gnus-cache" "\
Delete GROUP from the cache.
Always updates the cache, even when disabled, as the old cache
files would corrupt gnus when the cache was next enabled.
Depends upon the caller to determine whether group deletion is
supported.

\(fn GROUP)" nil nil)

;;;***

;;;### (autoloads (gnus-delay-initialize gnus-delay-send-queue gnus-delay-article)
;;;;;;  "gnus/lisp/gnus-delay" "gnus/lisp/gnus-delay.el" (20803 21489
;;;;;;  472911 63000))
;;; Generated autoloads from gnus/lisp/gnus-delay.el

(autoload 'gnus-delay-article "gnus/lisp/gnus-delay" "\
Delay this article by some time.
DELAY is a string, giving the length of the time.  Possible values are:

* <digits><units> for <units> in minutes (`m'), hours (`h'), days (`d'),
  weeks (`w'), months (`M'), or years (`Y');

* YYYY-MM-DD for a specific date.  The time of day is given by the
  variable `gnus-delay-default-hour', minute and second are zero.

* hh:mm for a specific time.  Use 24h format.  If it is later than this
  time, then the deadline is tomorrow, else today.

\(fn DELAY)" t nil)

(autoload 'gnus-delay-send-queue "gnus/lisp/gnus-delay" "\
Send all the delayed messages that are due now.

\(fn)" t nil)

(autoload 'gnus-delay-initialize "gnus/lisp/gnus-delay" "\
Initialize the gnus-delay package.
This sets up a key binding in `message-mode' to delay a message.
This tells Gnus to look for delayed messages after getting new news.

The optional arg NO-KEYMAP is ignored.
Checking delayed messages is skipped if optional arg NO-CHECK is non-nil.

\(fn &optional NO-KEYMAP NO-CHECK)" nil nil)

;;;***

;;;### (autoloads (gnus-user-format-function-D gnus-user-format-function-d)
;;;;;;  "gnus/lisp/gnus-diary" "gnus/lisp/gnus-diary.el" (20803 21489
;;;;;;  472911 63000))
;;; Generated autoloads from gnus/lisp/gnus-diary.el

(autoload 'gnus-user-format-function-d "gnus/lisp/gnus-diary" "\


\(fn HEADER)" nil nil)

(autoload 'gnus-user-format-function-D "gnus/lisp/gnus-diary" "\


\(fn HEADER)" nil nil)

;;;***

;;;### (autoloads (turn-on-gnus-dired-mode) "gnus/lisp/gnus-dired"
;;;;;;  "gnus/lisp/gnus-dired.el" (20803 21489 472911 63000))
;;; Generated autoloads from gnus/lisp/gnus-dired.el

(autoload 'turn-on-gnus-dired-mode "gnus/lisp/gnus-dired" "\
Convenience method to turn on gnus-dired-mode.

\(fn)" t nil)

;;;***

;;;### (autoloads (gnus-draft-reminder) "gnus/lisp/gnus-draft" "gnus/lisp/gnus-draft.el"
;;;;;;  (20803 21489 472911 63000))
;;; Generated autoloads from gnus/lisp/gnus-draft.el

(autoload 'gnus-draft-reminder "gnus/lisp/gnus-draft" "\
Reminder user if there are unsent drafts.

\(fn)" t nil)

;;;***

;;;### (autoloads (gnus-convert-png-to-face gnus-convert-face-to-png
;;;;;;  gnus-face-from-file gnus-x-face-from-file gnus-insert-random-x-face-header
;;;;;;  gnus-random-x-face) "gnus/lisp/gnus-fun" "gnus/lisp/gnus-fun.el"
;;;;;;  (20803 21489 476911 219000))
;;; Generated autoloads from gnus/lisp/gnus-fun.el

(autoload 'gnus-random-x-face "gnus/lisp/gnus-fun" "\
Return X-Face header data chosen randomly from `gnus-x-face-directory'.

\(fn)" t nil)

(autoload 'gnus-insert-random-x-face-header "gnus/lisp/gnus-fun" "\
Insert a random X-Face header from `gnus-x-face-directory'.

\(fn)" t nil)

(autoload 'gnus-x-face-from-file "gnus/lisp/gnus-fun" "\
Insert an X-Face header based on an image file.

Depending on `gnus-convert-image-to-x-face-command' it may accept
different input formats.

\(fn FILE)" t nil)

(autoload 'gnus-face-from-file "gnus/lisp/gnus-fun" "\
Return a Face header based on an image file.

Depending on `gnus-convert-image-to-face-command' it may accept
different input formats.

\(fn FILE)" t nil)

(autoload 'gnus-convert-face-to-png "gnus/lisp/gnus-fun" "\
Convert FACE (which is base64-encoded) to a PNG.
The PNG is returned as a string.

\(fn FACE)" nil nil)

(autoload 'gnus-convert-png-to-face "gnus/lisp/gnus-fun" "\
Convert FILE to a Face.
FILE should be a PNG file that's 48x48 and smaller than or equal to
726 bytes.

\(fn FILE)" nil nil)

;;;***

;;;### (autoloads (gnus-treat-mail-gravatar gnus-treat-from-gravatar)
;;;;;;  "gnus/lisp/gnus-gravatar" "gnus/lisp/gnus-gravatar.el" (20878
;;;;;;  23145 314103 764000))
;;; Generated autoloads from gnus/lisp/gnus-gravatar.el

(autoload 'gnus-treat-from-gravatar "gnus/lisp/gnus-gravatar" "\
Display gravatar in the From header.
If gravatar is already displayed, remove it.

\(fn &optional FORCE)" t nil)

(autoload 'gnus-treat-mail-gravatar "gnus/lisp/gnus-gravatar" "\
Display gravatars in the Cc and To headers.
If gravatars are already displayed, remove them.

\(fn &optional FORCE)" t nil)

;;;***

;;;### (autoloads (gnus-fetch-group-other-frame gnus-fetch-group)
;;;;;;  "gnus/lisp/gnus-group" "gnus/lisp/gnus-group.el" (20803 21489
;;;;;;  476911 219000))
;;; Generated autoloads from gnus/lisp/gnus-group.el

(autoload 'gnus-fetch-group "gnus/lisp/gnus-group" "\
Start Gnus if necessary and enter GROUP.
If ARTICLES, display those articles.
Returns whether the fetching was successful or not.

\(fn GROUP &optional ARTICLES)" t nil)

(autoload 'gnus-fetch-group-other-frame "gnus/lisp/gnus-group" "\
Pop up a frame and enter GROUP.

\(fn GROUP)" t nil)

;;;***

;;;### (autoloads (gnus-html-prefetch-images gnus-article-html) "gnus/lisp/gnus-html"
;;;;;;  "gnus/lisp/gnus-html.el" (20878 23145 314103 764000))
;;; Generated autoloads from gnus/lisp/gnus-html.el

(autoload 'gnus-article-html "gnus/lisp/gnus-html" "\


\(fn &optional HANDLE)" nil nil)

(autoload 'gnus-html-prefetch-images "gnus/lisp/gnus-html" "\


\(fn SUMMARY)" nil nil)

;;;***

;;;### (autoloads (gnus-batch-score) "gnus/lisp/gnus-kill" "gnus/lisp/gnus-kill.el"
;;;;;;  (20803 21489 476911 219000))
;;; Generated autoloads from gnus/lisp/gnus-kill.el

(defalias 'gnus-batch-kill 'gnus-batch-score)

(autoload 'gnus-batch-score "gnus/lisp/gnus-kill" "\
Run batched scoring.
Usage: emacs -batch -l ~/.emacs -l gnus -f gnus-batch-score

\(fn)" t nil)

;;;***

;;;### (autoloads (gnus-mailing-list-mode gnus-mailing-list-insinuate
;;;;;;  turn-on-gnus-mailing-list-mode) "gnus/lisp/gnus-ml" "gnus/lisp/gnus-ml.el"
;;;;;;  (20803 21489 476911 219000))
;;; Generated autoloads from gnus/lisp/gnus-ml.el

(autoload 'turn-on-gnus-mailing-list-mode "gnus/lisp/gnus-ml" "\


\(fn)" nil nil)

(autoload 'gnus-mailing-list-insinuate "gnus/lisp/gnus-ml" "\
Setup group parameters from List-Post header.
If FORCE is non-nil, replace the old ones.

\(fn &optional FORCE)" t nil)

(autoload 'gnus-mailing-list-mode "gnus/lisp/gnus-ml" "\
Minor mode for providing mailing-list commands.

\\{gnus-mailing-list-mode-map}

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads (gnus-group-split-fancy gnus-group-split gnus-group-split-update
;;;;;;  gnus-group-split-setup) "gnus/lisp/gnus-mlspl" "gnus/lisp/gnus-mlspl.el"
;;;;;;  (20803 21489 476911 219000))
;;; Generated autoloads from gnus/lisp/gnus-mlspl.el

(autoload 'gnus-group-split-setup "gnus/lisp/gnus-mlspl" "\
Set up the split for `nnmail-split-fancy'.
Sets things up so that nnmail-split-fancy is used for mail
splitting, and defines the variable nnmail-split-fancy according with
group parameters.

If AUTO-UPDATE is non-nil (prefix argument accepted, if called
interactively), it makes sure nnmail-split-fancy is re-computed before
getting new mail, by adding `gnus-group-split-update' to
`nnmail-pre-get-new-mail-hook'.

A non-nil CATCH-ALL replaces the current value of
`gnus-group-split-default-catch-all-group'.  This variable is only used
by gnus-group-split-update, and only when its CATCH-ALL argument is
nil.  This argument may contain any fancy split, that will be added as
the last split in a `|' split produced by `gnus-group-split-fancy',
unless overridden by any group marked as a catch-all group.  Typical
uses are as simple as the name of a default mail group, but more
elaborate fancy splits may also be useful to split mail that doesn't
match any of the group-specified splitting rules.  See
`gnus-group-split-fancy' for details.

\(fn &optional AUTO-UPDATE CATCH-ALL)" t nil)

(autoload 'gnus-group-split-update "gnus/lisp/gnus-mlspl" "\
Computes nnmail-split-fancy from group params and CATCH-ALL.
It does this by calling by calling (gnus-group-split-fancy nil
nil CATCH-ALL).

If CATCH-ALL is nil, `gnus-group-split-default-catch-all-group' is used
instead.  This variable is set by `gnus-group-split-setup'.

\(fn &optional CATCH-ALL)" t nil)

(autoload 'gnus-group-split "gnus/lisp/gnus-mlspl" "\
Use information from group parameters in order to split mail.
See `gnus-group-split-fancy' for more information.

`gnus-group-split' is a valid value for `nnmail-split-methods'.

\(fn)" nil nil)

(autoload 'gnus-group-split-fancy "gnus/lisp/gnus-mlspl" "\
Uses information from group parameters in order to split mail.
It can be embedded into `nnmail-split-fancy' lists with the SPLIT

\(: gnus-group-split-fancy GROUPS NO-CROSSPOST CATCH-ALL)

GROUPS may be a regular expression or a list of group names, that will
be used to select candidate groups.  If it is omitted or nil, all
existing groups are considered.

if NO-CROSSPOST is omitted or nil, a & split will be returned,
otherwise, a | split, that does not allow crossposting, will be
returned.

For each selected group, a SPLIT is composed like this: if SPLIT-SPEC
is specified, this split is returned as-is (unless it is nil: in this
case, the group is ignored).  Otherwise, if TO-ADDRESS, TO-LIST and/or
EXTRA-ALIASES are specified, a regexp that matches any of them is
constructed (extra-aliases may be a list).  Additionally, if
SPLIT-REGEXP is specified, the regexp will be extended so that it
matches this regexp too, and if SPLIT-EXCLUDE is specified, RESTRICT
clauses will be generated.

If CATCH-ALL is nil, no catch-all handling is performed, regardless of
catch-all marks in group parameters.  Otherwise, if there is no
selected group whose SPLIT-REGEXP matches the empty string, nor is
there a selected group whose SPLIT-SPEC is 'catch-all, this fancy
split (say, a group name) will be appended to the returned SPLIT list,
as the last element of a '| SPLIT.

For example, given the following group parameters:

nnml:mail.bar:
\((to-address . \"bar@femail.com\")
 (split-regexp . \".*@femail\\\\.com\"))
nnml:mail.foo:
\((to-list . \"foo@nowhere.gov\")
 (extra-aliases \"foo@localhost\" \"foo-redist@home\")
 (split-exclude \"bugs-foo\" \"rambling-foo\")
 (admin-address . \"foo-request@nowhere.gov\"))
nnml:mail.others:
\((split-spec . catch-all))

Calling (gnus-group-split-fancy nil nil \"mail.others\") returns:

\(| (& (any \"\\\\(bar@femail\\\\.com\\\\|.*@femail\\\\.com\\\\)\"
	   \"mail.bar\")
      (any \"\\\\(foo@nowhere\\\\.gov\\\\|foo@localhost\\\\|foo-redist@home\\\\)\"
	   - \"bugs-foo\" - \"rambling-foo\" \"mail.foo\"))
   \"mail.others\")

\(fn &optional GROUPS NO-CROSSPOST CATCH-ALL)" nil nil)

;;;***

;;;### (autoloads (gnus-button-reply gnus-button-mailto gnus-msg-mail)
;;;;;;  "gnus/lisp/gnus-msg" "gnus/lisp/gnus-msg.el" (20878 23145
;;;;;;  318103 921000))
;;; Generated autoloads from gnus/lisp/gnus-msg.el

(autoload 'gnus-msg-mail "gnus/lisp/gnus-msg" "\
Start editing a mail message to be sent.
Like `message-mail', but with Gnus paraphernalia, particularly the
Gcc: header for archiving purposes.
If Gnus isn't running, a plain `message-mail' setup is used
instead.

\(fn &optional TO SUBJECT OTHER-HEADERS CONTINUE SWITCH-ACTION YANK-ACTION SEND-ACTIONS RETURN-ACTION)" t nil)

(autoload 'gnus-button-mailto "gnus/lisp/gnus-msg" "\
Mail to ADDRESS.

\(fn ADDRESS)" nil nil)

(autoload 'gnus-button-reply "gnus/lisp/gnus-msg" "\
Like `message-reply'.

\(fn &optional TO-ADDRESS WIDE)" t nil)

(define-mail-user-agent 'gnus-user-agent 'gnus-msg-mail 'message-send-and-exit 'message-kill-buffer 'message-send-hook)

;;;***

;;;### (autoloads (gnus-notifications) "gnus/lisp/gnus-notifications"
;;;;;;  "gnus/lisp/gnus-notifications.el" (20878 23145 318103 921000))
;;; Generated autoloads from gnus/lisp/gnus-notifications.el

(autoload 'gnus-notifications "gnus/lisp/gnus-notifications" "\
Send a notification on new message.
This check for new messages that are in group with a level lower
or equal to `gnus-notifications-minimum-level' and send a
notification using `notifications-notify' for it.

This is typically a function to add in
`gnus-after-getting-new-news-hook'

\(fn)" nil nil)

;;;***

;;;### (autoloads (gnus-treat-newsgroups-picon gnus-treat-mail-picon
;;;;;;  gnus-treat-from-picon) "gnus/lisp/gnus-picon" "gnus/lisp/gnus-picon.el"
;;;;;;  (20878 23145 318103 921000))
;;; Generated autoloads from gnus/lisp/gnus-picon.el

(autoload 'gnus-treat-from-picon "gnus/lisp/gnus-picon" "\
Display picons in the From header.
If picons are already displayed, remove them.

\(fn)" t nil)

(autoload 'gnus-treat-mail-picon "gnus/lisp/gnus-picon" "\
Display picons in the Cc and To headers.
If picons are already displayed, remove them.

\(fn)" t nil)

(autoload 'gnus-treat-newsgroups-picon "gnus/lisp/gnus-picon" "\
Display picons in the Newsgroups and Followup-To headers.
If picons are already displayed, remove them.

\(fn)" t nil)

;;;***

;;;### (autoloads (gnus-add-to-sorted-list gnus-sorted-nunion gnus-sorted-union
;;;;;;  gnus-sorted-nintersection gnus-sorted-range-intersection
;;;;;;  gnus-sorted-intersection gnus-intersection gnus-sorted-complement
;;;;;;  gnus-sorted-ndifference gnus-sorted-difference) "gnus/lisp/gnus-range"
;;;;;;  "gnus/lisp/gnus-range.el" (20803 21489 480911 374000))
;;; Generated autoloads from gnus/lisp/gnus-range.el

(autoload 'gnus-sorted-difference "gnus/lisp/gnus-range" "\
Return a list of elements of LIST1 that do not appear in LIST2.
Both lists have to be sorted over <.
The tail of LIST1 is not copied.

\(fn LIST1 LIST2)" nil nil)

(autoload 'gnus-sorted-ndifference "gnus/lisp/gnus-range" "\
Return a list of elements of LIST1 that do not appear in LIST2.
Both lists have to be sorted over <.
LIST1 is modified.

\(fn LIST1 LIST2)" nil nil)

(autoload 'gnus-sorted-complement "gnus/lisp/gnus-range" "\
Return a list of elements that are in LIST1 or LIST2 but not both.
Both lists have to be sorted over <.

\(fn LIST1 LIST2)" nil nil)

(autoload 'gnus-intersection "gnus/lisp/gnus-range" "\


\(fn LIST1 LIST2)" nil nil)

(autoload 'gnus-sorted-intersection "gnus/lisp/gnus-range" "\
Return intersection of LIST1 and LIST2.
LIST1 and LIST2 have to be sorted over <.

\(fn LIST1 LIST2)" nil nil)

(autoload 'gnus-sorted-range-intersection "gnus/lisp/gnus-range" "\
Return intersection of RANGE1 and RANGE2.
RANGE1 and RANGE2 have to be sorted over <.

\(fn RANGE1 RANGE2)" nil nil)

(defalias 'gnus-set-sorted-intersection 'gnus-sorted-nintersection)

(autoload 'gnus-sorted-nintersection "gnus/lisp/gnus-range" "\
Return intersection of LIST1 and LIST2 by modifying cdr pointers of LIST1.
LIST1 and LIST2 have to be sorted over <.

\(fn LIST1 LIST2)" nil nil)

(autoload 'gnus-sorted-union "gnus/lisp/gnus-range" "\
Return union of LIST1 and LIST2.
LIST1 and LIST2 have to be sorted over <.

\(fn LIST1 LIST2)" nil nil)

(autoload 'gnus-sorted-nunion "gnus/lisp/gnus-range" "\
Return union of LIST1 and LIST2 by modifying cdr pointers of LIST1.
LIST1 and LIST2 have to be sorted over <.

\(fn LIST1 LIST2)" nil nil)

(autoload 'gnus-add-to-sorted-list "gnus/lisp/gnus-range" "\
Add NUM into sorted LIST by side effect.

\(fn LIST NUM)" nil nil)

;;;***

;;;### (autoloads (gnus-registry-install-hooks gnus-registry-initialize)
;;;;;;  "gnus/lisp/gnus-registry" "gnus/lisp/gnus-registry.el" (20803
;;;;;;  21489 480911 374000))
;;; Generated autoloads from gnus/lisp/gnus-registry.el

(autoload 'gnus-registry-initialize "gnus/lisp/gnus-registry" "\
Initialize the Gnus registry.

\(fn)" t nil)

(autoload 'gnus-registry-install-hooks "gnus/lisp/gnus-registry" "\
Install the registry hooks.

\(fn)" t nil)

;;;***

;;;### (autoloads (gnus-sieve-article-add-rule gnus-sieve-generate
;;;;;;  gnus-sieve-update) "gnus/lisp/gnus-sieve" "gnus/lisp/gnus-sieve.el"
;;;;;;  (20803 21489 480911 374000))
;;; Generated autoloads from gnus/lisp/gnus-sieve.el

(autoload 'gnus-sieve-update "gnus/lisp/gnus-sieve" "\
Update the Sieve script in gnus-sieve-file, by replacing the region
between gnus-sieve-region-start and gnus-sieve-region-end with
\(gnus-sieve-script gnus-sieve-select-method gnus-sieve-crosspost), then
execute gnus-sieve-update-shell-command.
See the documentation for these variables and functions for details.

\(fn)" t nil)

(autoload 'gnus-sieve-generate "gnus/lisp/gnus-sieve" "\
Generate the Sieve script in gnus-sieve-file, by replacing the region
between gnus-sieve-region-start and gnus-sieve-region-end with
\(gnus-sieve-script gnus-sieve-select-method gnus-sieve-crosspost).
See the documentation for these variables and functions for details.

\(fn)" t nil)

(autoload 'gnus-sieve-article-add-rule "gnus/lisp/gnus-sieve" "\


\(fn)" t nil)

;;;***

;;;### (autoloads (gnus-update-format) "gnus/lisp/gnus-spec" "gnus/lisp/gnus-spec.el"
;;;;;;  (20803 21489 480911 374000))
;;; Generated autoloads from gnus/lisp/gnus-spec.el

(autoload 'gnus-update-format "gnus/lisp/gnus-spec" "\
Update the format specification near point.

\(fn VAR)" t nil)

;;;***

;;;### (autoloads (gnus-declare-backend) "gnus/lisp/gnus-start" "gnus/lisp/gnus-start.el"
;;;;;;  (20803 21489 484911 529000))
;;; Generated autoloads from gnus/lisp/gnus-start.el

(autoload 'gnus-declare-backend "gnus/lisp/gnus-start" "\
Declare back end NAME with ABILITIES as a Gnus back end.

\(fn NAME &rest ABILITIES)" nil nil)

;;;***

;;;### (autoloads (gnus-summary-bookmark-jump) "gnus/lisp/gnus-sum"
;;;;;;  "gnus/lisp/gnus-sum.el" (20878 23145 322104 79000))
;;; Generated autoloads from gnus/lisp/gnus-sum.el

(autoload 'gnus-summary-bookmark-jump "gnus/lisp/gnus-sum" "\
Handler function for record returned by `gnus-summary-bookmark-make-record'.
BOOKMARK is a bookmark name or a bookmark record.

\(fn BOOKMARK)" nil nil)

;;;***

;;;### (autoloads (gnus-sync-install-hooks gnus-sync-initialize)
;;;;;;  "gnus/lisp/gnus-sync" "gnus/lisp/gnus-sync.el" (20803 21489
;;;;;;  488911 685000))
;;; Generated autoloads from gnus/lisp/gnus-sync.el

(autoload 'gnus-sync-initialize "gnus/lisp/gnus-sync" "\
Initialize the Gnus sync facility.

\(fn)" t nil)

(autoload 'gnus-sync-install-hooks "gnus/lisp/gnus-sync" "\
Install the sync hooks.

\(fn)" t nil)

;;;***

;;;### (autoloads (gnus-add-configuration) "gnus/lisp/gnus-win" "gnus/lisp/gnus-win.el"
;;;;;;  (20803 21489 488911 685000))
;;; Generated autoloads from gnus/lisp/gnus-win.el

(autoload 'gnus-add-configuration "gnus/lisp/gnus-win" "\
Add the window configuration CONF to `gnus-buffer-configuration'.

\(fn CONF)" nil nil)

;;;***

;;;### (autoloads (gravatar-retrieve-synchronously gravatar-retrieve)
;;;;;;  "gnus/lisp/gravatar" "gnus/lisp/gravatar.el" (20803 21489
;;;;;;  492911 841000))
;;; Generated autoloads from gnus/lisp/gravatar.el

(autoload 'gravatar-retrieve "gnus/lisp/gravatar" "\
Retrieve MAIL-ADDRESS gravatar and call CB on retrieval.
You can provide a list of argument to pass to CB in CBARGS.

\(fn MAIL-ADDRESS CB &optional CBARGS)" nil nil)

(autoload 'gravatar-retrieve-synchronously "gnus/lisp/gravatar" "\
Retrieve MAIL-ADDRESS gravatar and returns it.

\(fn MAIL-ADDRESS)" nil nil)

;;;***

;;;### (autoloads (mail-check-payment mail-add-payment-async mail-add-payment
;;;;;;  hashcash-verify-payment hashcash-insert-payment-async hashcash-insert-payment)
;;;;;;  "gnus/lisp/hashcash" "gnus/lisp/hashcash.el" (20803 21489
;;;;;;  492911 841000))
;;; Generated autoloads from gnus/lisp/hashcash.el

(autoload 'hashcash-insert-payment "gnus/lisp/hashcash" "\
Insert X-Payment and X-Hashcash headers with a payment for ARG

\(fn ARG)" t nil)

(autoload 'hashcash-insert-payment-async "gnus/lisp/hashcash" "\
Insert X-Payment and X-Hashcash headers with a payment for ARG
Only start calculation.  Results are inserted when ready.

\(fn ARG)" t nil)

(autoload 'hashcash-verify-payment "gnus/lisp/hashcash" "\
Verify a hashcash payment

\(fn TOKEN &optional RESOURCE AMOUNT)" nil nil)

(autoload 'mail-add-payment "gnus/lisp/hashcash" "\
Add X-Payment: and X-Hashcash: headers with a hashcash payment
for each recipient address.  Prefix arg sets default payment temporarily.
Set ASYNC to t to start asynchronous calculation.  (See
`mail-add-payment-async').

\(fn &optional ARG ASYNC)" t nil)

(autoload 'mail-add-payment-async "gnus/lisp/hashcash" "\
Add X-Payment: and X-Hashcash: headers with a hashcash payment
for each recipient address.  Prefix arg sets default payment temporarily.
Calculation is asynchronous.

\(fn &optional ARG)" t nil)

(autoload 'mail-check-payment "gnus/lisp/hashcash" "\
Look for a valid X-Payment: or X-Hashcash: header.
Prefix arg sets default accept amount temporarily.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads (html2text) "gnus/lisp/html2text" "gnus/lisp/html2text.el"
;;;;;;  (20803 21489 492911 841000))
;;; Generated autoloads from gnus/lisp/html2text.el

(autoload 'html2text "gnus/lisp/html2text" "\
Convert HTML to plain text in the current buffer.

\(fn)" t nil)

;;;***

;;;### (autoloads (message-unbold-region message-bold-region message-news-other-frame
;;;;;;  message-news-other-window message-mail-other-frame message-mail-other-window
;;;;;;  message-bounce message-resend message-insinuate-rmail message-forward-rmail-make-body
;;;;;;  message-forward-make-body message-forward message-recover
;;;;;;  message-supersede message-cancel-news message-followup message-wide-reply
;;;;;;  message-reply message-news message-mail message-mode) "gnus/lisp/message"
;;;;;;  "gnus/lisp/message.el" (20878 23145 338104 710000))
;;; Generated autoloads from gnus/lisp/message.el

(define-mail-user-agent 'message-user-agent 'message-mail 'message-send-and-exit 'message-kill-buffer 'message-send-hook)

(autoload 'message-mode "gnus/lisp/message" "\
Major mode for editing mail and news to be sent.
Like Text Mode but with these additional commands:\\<message-mode-map>
C-c C-s  `message-send' (send the message)  C-c C-c  `message-send-and-exit'
C-c C-d  Postpone sending the message       C-c C-k  Kill the message
C-c C-f  move to a header field (and create it if there isn't):
	 C-c C-f C-t  move to To	C-c C-f C-s  move to Subject
	 C-c C-f C-c  move to Cc	C-c C-f C-b  move to Bcc
	 C-c C-f C-w  move to Fcc	C-c C-f C-r  move to Reply-To
	 C-c C-f C-u  move to Summary	C-c C-f C-n  move to Newsgroups
	 C-c C-f C-k  move to Keywords	C-c C-f C-d  move to Distribution
	 C-c C-f C-o  move to From (\"Originator\")
	 C-c C-f C-f  move to Followup-To
	 C-c C-f C-m  move to Mail-Followup-To
	 C-c C-f C-e  move to Expires
	 C-c C-f C-i  cycle through Importance values
	 C-c C-f s    change subject and append \"(was: <Old Subject>)\"
	 C-c C-f x    crossposting with FollowUp-To header and note in body
	 C-c C-f t    replace To: header with contents of Cc: or Bcc:
	 C-c C-f a    Insert X-No-Archive: header and a note in the body
C-c C-t  `message-insert-to' (add a To header to a news followup)
C-c C-l  `message-to-list-only' (removes all but list address in to/cc)
C-c C-n  `message-insert-newsgroups' (add a Newsgroup header to a news reply)
C-c C-b  `message-goto-body' (move to beginning of message text).
C-c C-i  `message-goto-signature' (move to the beginning of the signature).
C-c C-w  `message-insert-signature' (insert `message-signature-file' file).
C-c C-y  `message-yank-original' (insert current message, if any).
C-c C-q  `message-fill-yanked-message' (fill what was yanked).
C-c C-e  `message-elide-region' (elide the text between point and mark).
C-c C-v  `message-delete-not-region' (remove the text outside the region).
C-c C-z  `message-kill-to-signature' (kill the text up to the signature).
C-c C-r  `message-caesar-buffer-body' (rot13 the message body).
C-c C-a  `mml-attach-file' (attach a file as MIME).
C-c C-u  `message-insert-or-toggle-importance'  (insert or cycle importance).
C-c M-n  `message-insert-disposition-notification-to'  (request receipt).
C-c M-m  `message-mark-inserted-region' (mark region with enclosing tags).
C-c M-f  `message-mark-insert-file' (insert file marked with enclosing tags).
M-RET    `message-newline-and-reformat' (break the line and reformat).

\(fn)" t nil)

(autoload 'message-mail "gnus/lisp/message" "\
Start editing a mail message to be sent.
OTHER-HEADERS is an alist of header/value pairs.  CONTINUE says whether
to continue editing a message already being composed.  SWITCH-FUNCTION
is a function used to switch to and display the mail buffer.

\(fn &optional TO SUBJECT OTHER-HEADERS CONTINUE SWITCH-FUNCTION YANK-ACTION SEND-ACTIONS RETURN-ACTION &rest IGNORED)" t nil)

(autoload 'message-news "gnus/lisp/message" "\
Start editing a news article to be sent.

\(fn &optional NEWSGROUPS SUBJECT)" t nil)

(autoload 'message-reply "gnus/lisp/message" "\
Start editing a reply to the article in the current buffer.

\(fn &optional TO-ADDRESS WIDE SWITCH-FUNCTION)" t nil)

(autoload 'message-wide-reply "gnus/lisp/message" "\
Make a \"wide\" reply to the message in the current buffer.

\(fn &optional TO-ADDRESS)" t nil)

(autoload 'message-followup "gnus/lisp/message" "\
Follow up to the message in the current buffer.
If TO-NEWSGROUPS, use that as the new Newsgroups line.

\(fn &optional TO-NEWSGROUPS)" t nil)

(autoload 'message-cancel-news "gnus/lisp/message" "\
Cancel an article you posted.
If ARG, allow editing of the cancellation message.

\(fn &optional ARG)" t nil)

(autoload 'message-supersede "gnus/lisp/message" "\
Start composing a message to supersede the current message.
This is done simply by taking the old article and adding a Supersedes
header line with the old Message-ID.

\(fn)" t nil)

(autoload 'message-recover "gnus/lisp/message" "\
Reread contents of current buffer from its last auto-save file.

\(fn)" t nil)

(autoload 'message-forward "gnus/lisp/message" "\
Forward the current message via mail.
Optional NEWS will use news to forward instead of mail.
Optional DIGEST will use digest to forward.

\(fn &optional NEWS DIGEST)" t nil)

(autoload 'message-forward-make-body "gnus/lisp/message" "\


\(fn FORWARD-BUFFER &optional DIGEST)" nil nil)

(autoload 'message-forward-rmail-make-body "gnus/lisp/message" "\


\(fn FORWARD-BUFFER)" nil nil)

(autoload 'message-insinuate-rmail "gnus/lisp/message" "\
Let RMAIL use message to forward.

\(fn)" t nil)

(autoload 'message-resend "gnus/lisp/message" "\
Resend the current article to ADDRESS.

\(fn ADDRESS)" t nil)

(autoload 'message-bounce "gnus/lisp/message" "\
Re-mail the current message.
This only makes sense if the current message is a bounce message that
contains some mail you have written which has been bounced back to
you.

\(fn)" t nil)

(autoload 'message-mail-other-window "gnus/lisp/message" "\
Like `message-mail' command, but display mail buffer in another window.

\(fn &optional TO SUBJECT)" t nil)

(autoload 'message-mail-other-frame "gnus/lisp/message" "\
Like `message-mail' command, but display mail buffer in another frame.

\(fn &optional TO SUBJECT)" t nil)

(autoload 'message-news-other-window "gnus/lisp/message" "\
Start editing a news article to be sent.

\(fn &optional NEWSGROUPS SUBJECT)" t nil)

(autoload 'message-news-other-frame "gnus/lisp/message" "\
Start editing a news article to be sent.

\(fn &optional NEWSGROUPS SUBJECT)" t nil)

(autoload 'message-bold-region "gnus/lisp/message" "\
Bold all nonblank characters in the region.
Works by overstriking characters.
Called from program, takes two arguments START and END
which specify the range to operate on.

\(fn START END)" t nil)

(autoload 'message-unbold-region "gnus/lisp/message" "\
Remove all boldness (overstruck characters) in the region.
Called from program, takes two arguments START and END
which specify the range to operate on.

\(fn START END)" t nil)

;;;***

;;;### (autoloads (mm-default-file-encoding) "gnus/lisp/mm-encode"
;;;;;;  "gnus/lisp/mm-encode.el" (20803 21489 500912 151000))
;;; Generated autoloads from gnus/lisp/mm-encode.el

(autoload 'mm-default-file-encoding "gnus/lisp/mm-encode" "\
Return a default encoding for FILE.

\(fn FILE)" nil nil)

;;;***

;;;### (autoloads (mm-inline-external-body mm-extern-cache-contents)
;;;;;;  "gnus/lisp/mm-extern" "gnus/lisp/mm-extern.el" (20803 21489
;;;;;;  500912 151000))
;;; Generated autoloads from gnus/lisp/mm-extern.el

(autoload 'mm-extern-cache-contents "gnus/lisp/mm-extern" "\
Put the external-body part of HANDLE into its cache.

\(fn HANDLE)" nil nil)

(autoload 'mm-inline-external-body "gnus/lisp/mm-extern" "\
Show the external-body part of HANDLE.
This function replaces the buffer of HANDLE with a buffer contains
the entire message.
If NO-DISPLAY is nil, display it. Otherwise, do nothing after replacing.

\(fn HANDLE &optional NO-DISPLAY)" nil nil)

;;;***

;;;### (autoloads (mm-inline-partial) "gnus/lisp/mm-partial" "gnus/lisp/mm-partial.el"
;;;;;;  (20803 21489 500912 151000))
;;; Generated autoloads from gnus/lisp/mm-partial.el

(autoload 'mm-inline-partial "gnus/lisp/mm-partial" "\
Show the partial part of HANDLE.
This function replaces the buffer of HANDLE with a buffer contains
the entire message.
If NO-DISPLAY is nil, display it. Otherwise, do nothing after replacing.

\(fn HANDLE &optional NO-DISPLAY)" nil nil)

;;;***

;;;### (autoloads (mm-url-insert-file-contents-external mm-url-insert-file-contents)
;;;;;;  "gnus/lisp/mm-url" "gnus/lisp/mm-url.el" (20803 21489 500912
;;;;;;  151000))
;;; Generated autoloads from gnus/lisp/mm-url.el

(autoload 'mm-url-insert-file-contents "gnus/lisp/mm-url" "\
Insert file contents of URL.
If `mm-url-use-external' is non-nil, use `mm-url-program'.

\(fn URL)" nil nil)

(autoload 'mm-url-insert-file-contents-external "gnus/lisp/mm-url" "\
Insert file contents of URL using `mm-url-program'.

\(fn URL)" nil nil)

;;;***

;;;### (autoloads (mm-uu-dissect-text-parts mm-uu-dissect) "gnus/lisp/mm-uu"
;;;;;;  "gnus/lisp/mm-uu.el" (20803 21489 500912 151000))
;;; Generated autoloads from gnus/lisp/mm-uu.el

(autoload 'mm-uu-dissect "gnus/lisp/mm-uu" "\
Dissect the current buffer and return a list of uu handles.
The optional NOHEADER means there's no header in the buffer.
MIME-TYPE specifies a MIME type and parameters, which defaults to the
value of `mm-uu-text-plain-type'.

\(fn &optional NOHEADER MIME-TYPE)" nil nil)

(autoload 'mm-uu-dissect-text-parts "gnus/lisp/mm-uu" "\
Dissect text parts and put uu handles into HANDLE.
Assume text has been decoded if DECODED is non-nil.

\(fn HANDLE &optional DECODED)" nil nil)

;;;***

;;;### (autoloads (mml-attach-file mml-to-mime) "gnus/lisp/mml" "gnus/lisp/mml.el"
;;;;;;  (20878 23145 338104 710000))
;;; Generated autoloads from gnus/lisp/mml.el

(autoload 'mml-to-mime "gnus/lisp/mml" "\
Translate the current buffer from MML to MIME.

\(fn)" nil nil)

(autoload 'mml-attach-file "gnus/lisp/mml" "\
Attach a file to the outgoing MIME message.
The file is not inserted or encoded until you send the message with
`\\[message-send-and-exit]' or `\\[message-send]' in Message mode,
or `\\[mail-send-and-exit]' or `\\[mail-send]' in Mail mode.

FILE is the name of the file to attach.  TYPE is its
content-type, a string of the form \"type/subtype\".  DESCRIPTION
is a one-line description of the attachment.  The DISPOSITION
specifies how the attachment is intended to be displayed.  It can
be either \"inline\" (displayed automatically within the message
body) or \"attachment\" (separate from the body).

\(fn FILE &optional TYPE DESCRIPTION DISPOSITION)" t nil)

;;;***

;;;### (autoloads (mml1991-sign mml1991-encrypt) "gnus/lisp/mml1991"
;;;;;;  "gnus/lisp/mml1991.el" (20878 23145 338104 710000))
;;; Generated autoloads from gnus/lisp/mml1991.el

(autoload 'mml1991-encrypt "gnus/lisp/mml1991" "\


\(fn CONT &optional SIGN)" nil nil)

(autoload 'mml1991-sign "gnus/lisp/mml1991" "\


\(fn CONT)" nil nil)

;;;***

;;;### (autoloads (mml2015-self-encrypt mml2015-sign mml2015-encrypt
;;;;;;  mml2015-verify-test mml2015-verify mml2015-decrypt-test mml2015-decrypt)
;;;;;;  "gnus/lisp/mml2015" "gnus/lisp/mml2015.el" (20878 23145 338104
;;;;;;  710000))
;;; Generated autoloads from gnus/lisp/mml2015.el

(autoload 'mml2015-decrypt "gnus/lisp/mml2015" "\


\(fn HANDLE CTL)" nil nil)

(autoload 'mml2015-decrypt-test "gnus/lisp/mml2015" "\


\(fn HANDLE CTL)" nil nil)

(autoload 'mml2015-verify "gnus/lisp/mml2015" "\


\(fn HANDLE CTL)" nil nil)

(autoload 'mml2015-verify-test "gnus/lisp/mml2015" "\


\(fn HANDLE CTL)" nil nil)

(autoload 'mml2015-encrypt "gnus/lisp/mml2015" "\


\(fn CONT &optional SIGN)" nil nil)

(autoload 'mml2015-sign "gnus/lisp/mml2015" "\


\(fn CONT)" nil nil)

(autoload 'mml2015-self-encrypt "gnus/lisp/mml2015" "\


\(fn)" nil nil)

;;;***

;;;### (autoloads (netrc-credentials) "gnus/lisp/netrc" "gnus/lisp/netrc.el"
;;;;;;  (20803 21489 500912 151000))
;;; Generated autoloads from gnus/lisp/netrc.el

(autoload 'netrc-credentials "gnus/lisp/netrc" "\
Return a user name/password pair.
Port specifications will be prioritized in the order they are
listed in the PORTS list.

\(fn MACHINE &rest PORTS)" nil nil)

;;;***

;;;### (autoloads (nndiary-generate-nov-databases) "gnus/lisp/nndiary"
;;;;;;  "gnus/lisp/nndiary.el" (20803 21489 504912 307000))
;;; Generated autoloads from gnus/lisp/nndiary.el

(autoload 'nndiary-generate-nov-databases "gnus/lisp/nndiary" "\
Generate NOV databases in all nndiary directories.

\(fn &optional SERVER)" t nil)

;;;***

;;;### (autoloads (nndoc-add-type) "gnus/lisp/nndoc" "gnus/lisp/nndoc.el"
;;;;;;  (20803 21489 504912 307000))
;;; Generated autoloads from gnus/lisp/nndoc.el

(autoload 'nndoc-add-type "gnus/lisp/nndoc" "\
Add document DEFINITION to the list of nndoc document definitions.
If POSITION is nil or `last', the definition will be added
as the last checked definition, if t or `first', add as the
first definition, and if any other symbol, add after that
symbol in the alist.

\(fn DEFINITION &optional POSITION)" nil nil)

;;;***

;;;### (autoloads (nnfolder-generate-active-file) "gnus/lisp/nnfolder"
;;;;;;  "gnus/lisp/nnfolder.el" (20803 21489 504912 307000))
;;; Generated autoloads from gnus/lisp/nnfolder.el

(autoload 'nnfolder-generate-active-file "gnus/lisp/nnfolder" "\
Look for mbox folders in the nnfolder directory and make them into groups.
This command does not work if you use short group names.

\(fn)" t nil)

;;;***

;;;### (autoloads (nnml-generate-nov-databases) "gnus/lisp/nnml"
;;;;;;  "gnus/lisp/nnml.el" (20803 21489 508912 463000))
;;; Generated autoloads from gnus/lisp/nnml.el

(autoload 'nnml-generate-nov-databases "gnus/lisp/nnml" "\
Generate NOV databases in all nnml directories.

\(fn &optional SERVER)" t nil)

;;;***

;;;### (autoloads (parse-time-string) "gnus/lisp/parse-time" "gnus/lisp/parse-time.el"
;;;;;;  (20803 21489 512912 618000))
;;; Generated autoloads from gnus/lisp/parse-time.el
(put 'parse-time-rules 'risky-local-variable t)

(autoload 'parse-time-string "gnus/lisp/parse-time" "\
Parse the time-string STRING into (SEC MIN HOUR DAY MON YEAR DOW DST TZ).
The values are identical to those of `decode-time', but any values that are
unknown are returned as nil.

\(fn STRING)" nil nil)

;;;***

;;;### (autoloads (password-in-cache-p password-cache-expiry password-cache)
;;;;;;  "gnus/lisp/password-cache" "gnus/lisp/password-cache.el"
;;;;;;  (20803 21489 512912 618000))
;;; Generated autoloads from gnus/lisp/password-cache.el

(defvar password-cache t "\
Whether to cache passwords.")

(custom-autoload 'password-cache "gnus/lisp/password-cache" t)

(defvar password-cache-expiry 16 "\
How many seconds passwords are cached, or nil to disable expiring.
Whether passwords are cached at all is controlled by `password-cache'.")

(custom-autoload 'password-cache-expiry "gnus/lisp/password-cache" t)

(autoload 'password-in-cache-p "gnus/lisp/password-cache" "\
Check if KEY is in the cache.

\(fn KEY)" nil nil)

;;;***

;;;### (autoloads (plstore-mode plstore-open) "gnus/lisp/plstore"
;;;;;;  "gnus/lisp/plstore.el" (20803 21489 512912 618000))
;;; Generated autoloads from gnus/lisp/plstore.el

(autoload 'plstore-open "gnus/lisp/plstore" "\
Create a plstore instance associated with FILE.

\(fn FILE)" nil nil)

(autoload 'plstore-mode "gnus/lisp/plstore" "\
Major mode for editing PLSTORE files.

\(fn)" t nil)

;;;***

;;;### (autoloads (pop3-movemail) "gnus/lisp/pop3" "gnus/lisp/pop3.el"
;;;;;;  (20803 21489 512912 618000))
;;; Generated autoloads from gnus/lisp/pop3.el

(autoload 'pop3-movemail "gnus/lisp/pop3" "\
Transfer contents of a maildrop to the specified FILE.
Use streaming commands.

\(fn FILE)" nil nil)

;;;***

;;;### (autoloads (open-protocol-stream) "gnus/lisp/proto-stream"
;;;;;;  "gnus/lisp/proto-stream.el" (20803 21489 512912 618000))
;;; Generated autoloads from gnus/lisp/proto-stream.el

(autoload 'open-protocol-stream "gnus/lisp/proto-stream" "\
Open a network stream to HOST, possibly with encryption.
Normally, return a network process object; with a non-nil
:return-list parameter, return a list instead (see below).

The first four parameters, NAME, BUFFER, HOST, and SERVICE, have
the same meanings as in `open-network-stream'.  The remaining
PARAMETERS should be a sequence of keywords and values:

:type specifies the connection type, one of the following:
  nil or `network'
             -- Begin with an ordinary network connection, and if
                the parameters :success and :capability-command
                are also supplied, try to upgrade to an encrypted
                connection via STARTTLS.  Even if that
                fails (e.g. if HOST does not support TLS), retain
                an unencrypted connection.
  `plain'    -- An ordinary, unencrypted network connection.
  `starttls' -- Begin with an ordinary connection, and try
                upgrading via STARTTLS.  If that fails for any
                reason, drop the connection; in that case the
                returned object is a killed process.
  `tls'      -- A TLS connection.
  `ssl'      -- Equivalent to `tls'.
  `shell'    -- A shell connection.

:return-list specifies this function's return value.
  If omitted or nil, return a process object.  A non-nil means to
  return (PROC . PROPS), where PROC is a process object and PROPS
  is a plist of connection properties, with these keywords:
   :greeting -- the greeting returned by HOST (a string), or nil.
   :capabilities -- a string representing HOST's capabilities,
                    or nil if none could be found.
   :type -- the resulting connection type; `plain' (unencrypted)
            or `tls' (TLS-encrypted).

:end-of-command specifies a regexp matching the end of a command.
  If non-nil, it defaults to \"\\n\".

:end-of-capability specifies a regexp matching the end of the
  response to the command specified for :capability-command.
  It defaults to the regexp specified for :end-of-command.

:success specifies a regexp matching a message indicating a
  successful STARTTLS negotiation.  For instance, the default
  should be \"^3\" for an NNTP connection.

:capability-command specifies a command used to query the HOST
  for its capabilities.  For instance, for IMAP this should be
  \"1 CAPABILITY\\r\\n\".

:starttls-function specifies a function for handling STARTTLS.
  This function should take one parameter, the response to the
  capability command, and should return the command to switch on
  STARTTLS if the server supports STARTTLS, and nil otherwise.

\(fn NAME BUFFER HOST SERVICE &rest PARAMETERS)" nil nil)

;;;***

;;;### (autoloads (quoted-printable-decode-region) "gnus/lisp/qp"
;;;;;;  "gnus/lisp/qp.el" (20803 21489 512912 618000))
;;; Generated autoloads from gnus/lisp/qp.el

(autoload 'quoted-printable-decode-region "gnus/lisp/qp" "\
Decode quoted-printable in the region between FROM and TO, per RFC 2045.
If CODING-SYSTEM is non-nil, decode bytes into characters with that
coding-system.

Interactively, you can supply the CODING-SYSTEM argument
with \\[universal-coding-system-argument].

The CODING-SYSTEM argument is a historical hangover and is deprecated.
QP encodes raw bytes and should be decoded into raw bytes.  Decoding
them into characters should be done separately.

\(fn FROM TO &optional CODING-SYSTEM)" t nil)

;;;***

;;;### (autoloads (gnus-score-mode) "gnus/lisp/score-mode" "gnus/lisp/score-mode.el"
;;;;;;  (20803 21489 512912 618000))
;;; Generated autoloads from gnus/lisp/score-mode.el

(autoload 'gnus-score-mode "gnus/lisp/score-mode" "\
Mode for editing Gnus score files.
This mode is an extended emacs-lisp mode.

\\{gnus-score-mode-map}

\(fn)" t nil)

;;;***

;;;### (autoloads (sha1) "gnus/lisp/sha1" "gnus/lisp/sha1.el" (20803
;;;;;;  21489 512912 618000))
;;; Generated autoloads from gnus/lisp/sha1.el

(autoload 'sha1 "gnus/lisp/sha1" "\
Return the SHA1 (Secure Hash Algorithm) of an object.
OBJECT is either a string or a buffer.
Optional arguments BEG and END denote buffer positions for computing the
hash of a portion of OBJECT.
If BINARY is non-nil, return a string in binary form.

\(fn OBJECT &optional BEG END BINARY)" nil nil)

;;;***

;;;### (autoloads (shr-insert-document) "gnus/lisp/shr" "gnus/lisp/shr.el"
;;;;;;  (20878 23145 342104 868000))
;;; Generated autoloads from gnus/lisp/shr.el

(autoload 'shr-insert-document "gnus/lisp/shr" "\
Render the parsed document DOM into the current buffer.
DOM should be a parse tree as generated by
`libxml-parse-html-region' or similar.

\(fn DOM)" nil nil)

;;;***

;;;### (autoloads (sieve-upload-and-kill sieve-upload-and-bury sieve-upload
;;;;;;  sieve-manage) "gnus/lisp/sieve" "gnus/lisp/sieve.el" (20803
;;;;;;  21489 516912 773000))
;;; Generated autoloads from gnus/lisp/sieve.el

(autoload 'sieve-manage "gnus/lisp/sieve" "\


\(fn SERVER &optional PORT)" t nil)

(autoload 'sieve-upload "gnus/lisp/sieve" "\


\(fn &optional NAME)" t nil)

(autoload 'sieve-upload-and-bury "gnus/lisp/sieve" "\


\(fn &optional NAME)" t nil)

(autoload 'sieve-upload-and-kill "gnus/lisp/sieve" "\


\(fn &optional NAME)" t nil)

;;;***

;;;### (autoloads (sieve-mode) "gnus/lisp/sieve-mode" "gnus/lisp/sieve-mode.el"
;;;;;;  (20803 21489 516912 773000))
;;; Generated autoloads from gnus/lisp/sieve-mode.el

(autoload 'sieve-mode "gnus/lisp/sieve-mode" "\
Major mode for editing Sieve code.
This is much like C mode except for the syntax of comments.  Its keymap
inherits from C mode's and it has the same variables for customizing
indentation.  It has its own abbrev table and its own syntax table.

Turning on Sieve mode runs `sieve-mode-hook'.

\(fn)" t nil)

;;;***

;;;### (autoloads (smiley-buffer smiley-region) "gnus/lisp/smiley"
;;;;;;  "gnus/lisp/smiley.el" (20803 21489 516912 773000))
;;; Generated autoloads from gnus/lisp/smiley.el

(autoload 'smiley-region "gnus/lisp/smiley" "\
Replace in the region `smiley-regexp-alist' matches with corresponding images.
A list of images is returned.

\(fn START END)" t nil)

(autoload 'smiley-buffer "gnus/lisp/smiley" "\
Run `smiley-region' at the BUFFER, specified in the argument or
interactively.  If there's no argument, do it at the current buffer.

\(fn &optional BUFFER)" t nil)

;;;***

;;;### (autoloads (spam-initialize) "gnus/lisp/spam" "gnus/lisp/spam.el"
;;;;;;  (20878 23145 342104 868000))
;;; Generated autoloads from gnus/lisp/spam.el

(autoload 'spam-initialize "gnus/lisp/spam" "\
Install the spam.el hooks and do other initialization.
When SYMBOLS is given, set those variables to t.  This is so you
can call `spam-initialize' before you set spam-use-* variables on
explicitly, and matters only if you need the extra headers
installed through `spam-necessary-extra-headers'.

\(fn &rest SYMBOLS)" t nil)

;;;***

;;;### (autoloads (spam-report-deagentize spam-report-agentize spam-report-url-to-file
;;;;;;  spam-report-url-ping-mm-url spam-report-process-queue) "gnus/lisp/spam-report"
;;;;;;  "gnus/lisp/spam-report.el" (20878 23145 342104 868000))
;;; Generated autoloads from gnus/lisp/spam-report.el

(autoload 'spam-report-process-queue "gnus/lisp/spam-report" "\
Report all queued requests from `spam-report-requests-file'.

If FILE is given, use it instead of `spam-report-requests-file'.
If KEEP is t, leave old requests in the file.  If KEEP is the
symbol `ask', query before flushing the queue file.

\(fn &optional FILE KEEP)" t nil)

(autoload 'spam-report-url-ping-mm-url "gnus/lisp/spam-report" "\
Ping a host through HTTP, addressing a specific GET resource. Use
the external program specified in `mm-url-program' to connect to
server.

\(fn HOST REPORT)" nil nil)

(autoload 'spam-report-url-to-file "gnus/lisp/spam-report" "\
Collect spam report requests in `spam-report-requests-file'.
Customize `spam-report-url-ping-function' to use this function.

\(fn HOST REPORT)" nil nil)

(autoload 'spam-report-agentize "gnus/lisp/spam-report" "\
Add spam-report support to the Agent.
Spam reports will be queued with \\[spam-report-url-to-file] when
the Agent is unplugged, and will be submitted in a batch when the
Agent is plugged.

\(fn)" t nil)

(autoload 'spam-report-deagentize "gnus/lisp/spam-report" "\
Remove spam-report support from the Agent.
Spam reports will be queued with the method used when
\\[spam-report-agentize] was run.

\(fn)" t nil)

;;;***

;;;### (autoloads (starttls-open-stream) "gnus/lisp/starttls" "gnus/lisp/starttls.el"
;;;;;;  (20803 21489 516912 773000))
;;; Generated autoloads from gnus/lisp/starttls.el

(autoload 'starttls-open-stream "gnus/lisp/starttls" "\
Open a TLS connection for a port to a host.
Returns a subprocess object to represent the connection.
Input and output work as for subprocesses; `delete-process' closes it.
Args are NAME BUFFER HOST PORT.
NAME is name for process.  It is modified if necessary to make it unique.
BUFFER is the buffer (or `buffer-name') to associate with the process.
 Process output goes at end of that buffer, unless you specify
 an output stream or filter function to handle the output.
 BUFFER may be also nil, meaning that this process is not associated
 with any buffer
Third arg is name of the host to connect to, or its IP address.
Fourth arg PORT is an integer specifying a port to connect to.
If `starttls-use-gnutls' is nil, this may also be a service name, but
GnuTLS requires a port number.

\(fn NAME BUFFER HOST PORT)" nil nil)

;;;***

;;;### (autoloads (format-seconds safe-date-to-time time-to-days
;;;;;;  time-to-day-in-year date-leap-year-p days-between date-to-day
;;;;;;  time-add time-subtract time-since days-to-time time-less-p
;;;;;;  seconds-to-time date-to-time) "gnus/lisp/time-date" "gnus/lisp/time-date.el"
;;;;;;  (20803 21489 516912 773000))
;;; Generated autoloads from gnus/lisp/time-date.el

(autoload 'date-to-time "gnus/lisp/time-date" "\
Parse a string DATE that represents a date-time and return a time value.
If DATE lacks timezone information, GMT is assumed.

\(fn DATE)" nil nil)
(if (or (featurep 'emacs)
       (and (fboundp 'float-time)
            (subrp (symbol-function 'float-time))))
   (defalias 'time-to-seconds 'float-time)
 (autoload 'time-to-seconds "time-date"))

(autoload 'seconds-to-time "gnus/lisp/time-date" "\
Convert SECONDS (a floating point number) to a time value.

\(fn SECONDS)" nil nil)

(autoload 'time-less-p "gnus/lisp/time-date" "\
Return non-nil if time value T1 is earlier than time value T2.

\(fn T1 T2)" nil nil)

(autoload 'days-to-time "gnus/lisp/time-date" "\
Convert DAYS into a time value.

\(fn DAYS)" nil nil)

(autoload 'time-since "gnus/lisp/time-date" "\
Return the time elapsed since TIME.
TIME should be either a time value or a date-time string.

\(fn TIME)" nil nil)

(defalias 'subtract-time 'time-subtract)

(autoload 'time-subtract "gnus/lisp/time-date" "\
Subtract two time values, T1 minus T2.
Return the difference in the format of a time value.

\(fn T1 T2)" nil nil)

(autoload 'time-add "gnus/lisp/time-date" "\
Add two time values T1 and T2.  One should represent a time difference.

\(fn T1 T2)" nil nil)

(autoload 'date-to-day "gnus/lisp/time-date" "\
Return the number of days between year 1 and DATE.
DATE should be a date-time string.

\(fn DATE)" nil nil)

(autoload 'days-between "gnus/lisp/time-date" "\
Return the number of days between DATE1 and DATE2.
DATE1 and DATE2 should be date-time strings.

\(fn DATE1 DATE2)" nil nil)

(autoload 'date-leap-year-p "gnus/lisp/time-date" "\
Return t if YEAR is a leap year.

\(fn YEAR)" nil nil)

(autoload 'time-to-day-in-year "gnus/lisp/time-date" "\
Return the day number within the year corresponding to TIME.

\(fn TIME)" nil nil)

(autoload 'time-to-days "gnus/lisp/time-date" "\
The number of days between the Gregorian date 0001-12-31bce and TIME.
TIME should be a time value.
The Gregorian date Sunday, December 31, 1bce is imaginary.

\(fn TIME)" nil nil)

(autoload 'safe-date-to-time "gnus/lisp/time-date" "\
Parse a string DATE that represents a date-time and return a time value.
If DATE is malformed, return a time value of zeros.

\(fn DATE)" nil nil)

(autoload 'format-seconds "gnus/lisp/time-date" "\
Use format control STRING to format the number SECONDS.
The valid format specifiers are:
%y is the number of (365-day) years.
%d is the number of days.
%h is the number of hours.
%m is the number of minutes.
%s is the number of seconds.
%z is a non-printing control flag (see below).
%% is a literal \"%\".

Upper-case specifiers are followed by the unit-name (e.g. \"years\").
Lower-case specifiers return only the unit.

\"%\" may be followed by a number specifying a width, with an
optional leading \".\" for zero-padding.  For example, \"%.3Y\" will
return something of the form \"001 year\".

The \"%z\" specifier does not print anything.  When it is used, specifiers
must be given in order of decreasing size.  To the left of \"%z\", nothing
is output until the first non-zero unit is encountered.

This function does not work for SECONDS greater than `most-positive-fixnum'.

\(fn STRING SECONDS)" nil nil)

;;;***

;;;### (autoloads (utf7-encode) "gnus/lisp/utf7" "gnus/lisp/utf7.el"
;;;;;;  (20803 21489 520912 928000))
;;; Generated autoloads from gnus/lisp/utf7.el

(autoload 'utf7-encode "gnus/lisp/utf7" "\
Encode UTF-7 STRING.  Use IMAP modification if FOR-IMAP is non-nil.

\(fn STRING &optional FOR-IMAP)" nil nil)

;;;***

;;;### (autoloads (uudecode-decode-region uudecode-decode-region-internal
;;;;;;  uudecode-decode-region-external) "gnus/lisp/uudecode" "gnus/lisp/uudecode.el"
;;;;;;  (20803 21489 520912 928000))
;;; Generated autoloads from gnus/lisp/uudecode.el

(autoload 'uudecode-decode-region-external "gnus/lisp/uudecode" "\
Uudecode region between START and END using external program.
If FILE-NAME is non-nil, save the result to FILE-NAME.  The program
used is specified by `uudecode-decoder-program'.

\(fn START END &optional FILE-NAME)" t nil)

(autoload 'uudecode-decode-region-internal "gnus/lisp/uudecode" "\
Uudecode region between START and END without using an external program.
If FILE-NAME is non-nil, save the result to FILE-NAME.

\(fn START END &optional FILE-NAME)" t nil)

(autoload 'uudecode-decode-region "gnus/lisp/uudecode" "\
Uudecode region between START and END.
If FILE-NAME is non-nil, save the result to FILE-NAME.

\(fn START END &optional FILE-NAME)" nil nil)

;;;***

;;;### (autoloads (yenc-extract-filename yenc-decode-region) "gnus/lisp/yenc"
;;;;;;  "gnus/lisp/yenc.el" (20803 21489 520912 928000))
;;; Generated autoloads from gnus/lisp/yenc.el

(autoload 'yenc-decode-region "gnus/lisp/yenc" "\
Yenc decode region between START and END using an internal decoder.

\(fn START END)" t nil)

(autoload 'yenc-extract-filename "gnus/lisp/yenc" "\
Extract file name from an yenc header.

\(fn)" nil nil)

;;;***

;;;### (autoloads (haskell-menu) "haskell-mode/haskell-menu" "haskell-mode/haskell-menu.el"
;;;;;;  (20878 23136 81739 614000))
;;; Generated autoloads from haskell-mode/haskell-menu.el

(autoload 'haskell-menu "haskell-mode/haskell-menu" "\
Launch the Haskell sessions menu.

\(fn)" t nil)

;;;***

;;;### (autoloads (run-ruby inf-ruby inf-enh-ruby-setup-keybindings
;;;;;;  inf-ruby-setup-keybindings) "inf-ruby/inf-ruby" "inf-ruby/inf-ruby.el"
;;;;;;  (20878 23138 205823 390000))
;;; Generated autoloads from inf-ruby/inf-ruby.el

(autoload 'inf-ruby-setup-keybindings "inf-ruby/inf-ruby" "\
Set local key defs to invoke inf-ruby from ruby-mode.

\(fn)" nil nil)

(autoload 'inf-enh-ruby-setup-keybindings "inf-ruby/inf-ruby" "\
Set local key defs to invoke inf-ruby from ruby-mode.

\(fn)" nil nil)

(autoload 'inf-ruby "inf-ruby/inf-ruby" "\
Run an inferior Ruby process in a buffer.
With prefix argument, prompts for which Ruby implementation
\(from the list `inf-ruby-implementations') to use. Runs the
hooks `inf-ruby-mode-hook' (after the `comint-mode-hook' is
run).

\(fn &optional IMPL)" t nil)

(autoload 'run-ruby "inf-ruby/inf-ruby" "\
Run an inferior Ruby process, input and output via buffer *ruby*.
If there is a process already running in `*ruby*', switch to that buffer.
With argument, allows you to edit the command line (default is value
of `ruby-program-name').  Runs the hooks `inferior-ruby-mode-hook'
\(after the `comint-mode-hook' is run).
\(Type \\[describe-mode] in the process buffer for a list of commands.)

\(fn &optional COMMAND NAME)" t nil)

(eval-after-load 'ruby-mode '(inf-ruby-setup-keybindings))

(eval-after-load 'enh-ruby-mode '(inf-enh-ruby-setup-keybindings))

;;;***

;;;### (autoloads (pluralize-string singularize-string) "inflections/inflections"
;;;;;;  "inflections/inflections.el" (20878 34087 294092 752000))
;;; Generated autoloads from inflections/inflections.el

(autoload 'singularize-string "inflections/inflections" "\


\(fn STR)" nil nil)

(autoload 'pluralize-string "inflections/inflections" "\


\(fn STR)" nil nil)

;;;***

;;;### (autoloads (jedi:setup anything-jedi-related-names helm-jedi-related-names
;;;;;;  jedi:ac-setup jedi:complete jedi:start-dedicated-server)
;;;;;;  "jedi/jedi" "jedi/jedi.el" (20878 23138 557837 274000))
;;; Generated autoloads from jedi/jedi.el

(autoload 'jedi:start-dedicated-server "jedi/jedi" "\
Start Jedi server dedicated to this buffer.
This is useful, for example, when you want to use different
`sys.path' for some buffer.  When invoked as an interactive
command, it asks you how to start the Jedi server.  You can edit
the command in minibuffer to specify the way Jedi server run.

If you want to setup how Jedi server is started programmatically
per-buffer/per-project basis, make `jedi:server-command' and
`jedi:server-args' buffer local and set it in `python-mode-hook'.
See also: `jedi:server-args'.

\(fn COMMAND)" t nil)

(autoload 'jedi:complete "jedi/jedi" "\
Complete code at point.

\(fn &key (expand ac-expand-on-auto-complete))" t nil)

(autoload 'jedi:ac-setup "jedi/jedi" "\
Add Jedi AC sources to `ac-sources'.

\(fn)" t nil)

(autoload 'helm-jedi-related-names "jedi/jedi" "\
Find related names of the object at point using `helm' interface.

\(fn)" t nil)

(autoload 'anything-jedi-related-names "jedi/jedi" "\
Find related names of the object at point using `anything' interface.

\(fn)" t nil)

(autoload 'jedi:setup "jedi/jedi" "\
Fully setup jedi.el for current buffer.
It setups `ac-sources' (calls `jedi:ac-setup') and turns
`jedi-mode' on.

This function is intended to be called from `python-mode-hook',
like this::

       (add-hook 'python-mode-hook 'jedi:setup)

You can also call this function as a command, to quickly test
what jedi can do.

\(fn)" t nil)

;;;***

;;;### (autoloads (inferior-js-mode switch-to-js js-load-file-and-go
;;;;;;  js-load-file js-send-buffer-and-go js-send-buffer js-send-last-sexp
;;;;;;  js-send-last-sexp-and-go js-send-region-and-go js-send-region
;;;;;;  run-js) "js-comint/js-comint" "js-comint/js-comint.el" (20878
;;;;;;  23175 871309 318000))
;;; Generated autoloads from js-comint/js-comint.el

(autoload 'run-js "js-comint/js-comint" "\
Run an inferior Javascript process, input and output via buffer `*js*'.
If there is a process already running in `*js*', switch to that buffer.
With argument, allows you to edit the command line (default is value
of `inferior-js-program-command').
Runs the hook `inferior-js-mode-hook' (after the `comint-mode-hook'
is run).
\(Type \\[describe-mode] in the process buffer for a list of commands.)

\(fn CMD &optional DONT-SWITCH-P)" t nil)

(autoload 'js-send-region "js-comint/js-comint" "\
Send the current region to the inferior Javascript process.

\(fn START END)" t nil)

(autoload 'js-send-region-and-go "js-comint/js-comint" "\
Send the current region to the inferior Javascript process.

\(fn START END)" t nil)

(autoload 'js-send-last-sexp-and-go "js-comint/js-comint" "\
Send the previous sexp to the inferior Js process.

\(fn)" t nil)

(autoload 'js-send-last-sexp "js-comint/js-comint" "\
Send the previous sexp to the inferior Javascript process.

\(fn)" t nil)

(autoload 'js-send-buffer "js-comint/js-comint" "\
Send the buffer to the inferior Javascript process.

\(fn)" t nil)

(autoload 'js-send-buffer-and-go "js-comint/js-comint" "\
Send the buffer to the inferior Javascript process.

\(fn)" t nil)

(autoload 'js-load-file "js-comint/js-comint" "\
Load a file in the javascript interpreter.

\(fn FILENAME)" t nil)

(autoload 'js-load-file-and-go "js-comint/js-comint" "\
Load a file in the javascript interpreter.

\(fn FILENAME)" t nil)

(autoload 'switch-to-js "js-comint/js-comint" "\
Switch to the javascript process buffer.
With argument, position cursor at end of buffer.

\(fn EOB-P)" t nil)

(autoload 'inferior-js-mode "js-comint/js-comint" "\
Major mode for interacting with an inferior javascript process.

The following commands are available:
\\{inferior-js-mode-map}

A javascript process can be fired up with M-x run-js.

Customization: Entry to this mode runs the hooks on comint-mode-hook and
inferior-js-mode-hook (in that order).

You can send text to the inferior Javascript process from othber buffers containing
Javascript source.
    switch-to-js switches the current buffer to the Javascript process buffer.
    js-send-region sends the current region to the Javascript process.


\(fn)" t nil)

;;;***

;;;### (autoloads (js3-mode) "js3-mode/js3" "js3-mode/js3.el" (20878
;;;;;;  23144 38053 430000))
;;; Generated autoloads from js3-mode/js3.el
 (add-to-list 'auto-mode-alist '("\\.js$" . js3-mode))

(autoload 'js3-mode "js3-mode/js3" "\
Major mode for editing JavaScript code.

\\{js3-mode-map}

\(fn)" t nil)

;;;***

;;;### (autoloads (js3-mode) "js3-mode/js3-mode" "js3-mode/js3-mode.el"
;;;;;;  (20878 23144 34053 272000))
;;; Generated autoloads from js3-mode/js3-mode.el
 (add-to-list 'auto-mode-alist '("\\.js$" . js3-mode))

(autoload 'js3-mode "js3-mode/js3-mode" "\
Major mode for editing JavaScript code.

\\{js3-mode-map}

\(fn)" t nil)

;;;***

;;;### (autoloads (json-mode) "json-mode/json-mode" "json-mode/json-mode.el"
;;;;;;  (20771 41444 324420 539000))
;;; Generated autoloads from json-mode/json-mode.el

(autoload 'json-mode "json-mode/json-mode" "\
Major mode for editing JSON files

\(fn)" t nil)

;;;***

;;;### (autoloads (magit-view-file-history) "magit-view-file/magit-view-file"
;;;;;;  "magit-view-file/magit-view-file.el" (20878 19176 483456
;;;;;;  85000))
;;; Generated autoloads from magit-view-file/magit-view-file.el

(autoload 'magit-view-file-history "magit-view-file/magit-view-file" "\
Show history of current file.

\(fn)" t nil)

;;;***

;;;### (autoloads (turn-on-magit-flow magit-flow-mode) "magit/magit-flow"
;;;;;;  "magit/magit-flow.el" (20878 29188 222821 16000))
;;; Generated autoloads from magit/magit-flow.el

(autoload 'magit-flow-mode "magit/magit-flow" "\
FLOW support for Magit

\(fn &optional ARG)" t nil)

(autoload 'turn-on-magit-flow "magit/magit-flow" "\
Unconditionally turn on `magit-flow-mode'.

\(fn)" nil nil)

;;;***

;;;### (autoloads nil "monokai-theme/monokai-theme" "monokai-theme/monokai-theme.el"
;;;;;;  (20878 19756 504449 658000))
;;; Generated autoloads from monokai-theme/monokai-theme.el

(when load-file-name (add-to-list 'custom-theme-load-path (file-name-as-directory (file-name-directory load-file-name))) (when (not window-system) (custom-set-faces '(default ((t (:background "nil")))))))

;;;***

;;;### (autoloads (multi-web-mode) "multi-web-mode/multi-web-mode"
;;;;;;  "multi-web-mode/multi-web-mode.el" (20817 60268 792706 26000))
;;; Generated autoloads from multi-web-mode/multi-web-mode.el

(autoload 'multi-web-mode "multi-web-mode/multi-web-mode" "\
Enables the multi web mode chunk detection and indentation

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads (mc/sort-regions mc/reverse-regions mc/insert-numbers)
;;;;;;  "multiple-cursors/mc-separate-operations" "multiple-cursors/mc-separate-operations.el"
;;;;;;  (20878 23143 578035 285000))
;;; Generated autoloads from multiple-cursors/mc-separate-operations.el

(autoload 'mc/insert-numbers "multiple-cursors/mc-separate-operations" "\
Insert increasing numbers for each cursor, starting at 0 or ARG.

\(fn ARG)" t nil)

(autoload 'mc/reverse-regions "multiple-cursors/mc-separate-operations" "\


\(fn)" t nil)

(autoload 'mc/sort-regions "multiple-cursors/mc-separate-operations" "\


\(fn)" t nil)

;;;***

;;;### (autoloads (mustache-mode) "mustache-mode/mustache-mode" "mustache-mode/mustache-mode.el"
;;;;;;  (20803 13890 406136 46000))
;;; Generated autoloads from mustache-mode/mustache-mode.el

(autoload 'mustache-mode "mustache-mode/mustache-mode" "\


\(fn)" t nil)

;;;***

;;;### (autoloads (auto-complete) "auto-complete/auto-complete" "auto-complete/auto-complete.el"
;;;;;;  (20878 23071 387189 57000))
;;; Generated autoloads from auto-complete/auto-complete.el

(autoload 'auto-complete "auto-complete/auto-complete" "\
Start auto-completion at current point.

\(fn &optional SOURCES)" t nil)

;;;***

;;;### (autoloads (auto-indent-global-mode auto-indent-minor-mode-on
;;;;;;  auto-indent-minor-mode auto-indent-eol-char-newline auto-indent-eol-newline)
;;;;;;  "auto-indent-mode/auto-indent-mode" "auto-indent-mode/auto-indent-mode.el"
;;;;;;  (20878 23073 115257 158000))
;;; Generated autoloads from auto-indent-mode/auto-indent-mode.el

(autoload 'auto-indent-eol-newline "auto-indent-mode/auto-indent-mode" "\
Auto-indent function for `end-of-line' and then newline.

\(fn)" t nil)

(autoload 'auto-indent-eol-char-newline "auto-indent-mode/auto-indent-mode" "\
Auto-indent function for `end-of-line', insert `auto-indent-eol-char', and then newline.

\(fn)" t nil)

(defalias 'auto-indent-mode 'auto-indent-minor-mode)

(autoload 'auto-indent-minor-mode "auto-indent-mode/auto-indent-mode" "\
Auto Indent minor mode.

With no argument, this command toggles the mode.
positive prefix argument turns on the mode.
Negative prefix argument turns off the mode.

When auto-indent-minor-mode minor mode is enabled, yanking or pasting automatically indents

Fall back to default, non-indented yanking by preceding the yanking commands with C-u.

Based on auto-indentation posts, slightly redefined to allow it to be a minor mode

http://www.emacswiki.org/emacs/AutoIndentation

\(fn &optional ARG)" t nil)

(autoload 'auto-indent-minor-mode-on "auto-indent-mode/auto-indent-mode" "\
Turn on auto-indent minor mode.

\(fn)" t nil)

(defvar auto-indent-global-mode nil "\
Non-nil if Auto-Indent-Global mode is enabled.
See the command `auto-indent-global-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `auto-indent-global-mode'.")

(custom-autoload 'auto-indent-global-mode "auto-indent-mode/auto-indent-mode" nil)

(autoload 'auto-indent-global-mode "auto-indent-mode/auto-indent-mode" "\
Toggle Auto-Indent minor mode in all buffers.
With prefix ARG, enable Auto-Indent-Global mode if ARG is positive;
otherwise, disable it.  If called from Lisp, enable the mode if
ARG is omitted or nil.

Auto-Indent minor mode is enabled in all buffers where
`auto-indent-minor-mode-on' would do it.
See `auto-indent-minor-mode' for more information on Auto-Indent minor mode.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads (autopair-global-mode autopair-mode) "autopair/autopair"
;;;;;;  "autopair/autopair.el" (20878 23073 55254 794000))
;;; Generated autoloads from autopair/autopair.el

(autoload 'autopair-mode "autopair/autopair" "\
Automagically pair braces and quotes like in TextMate.

\(fn &optional ARG)" t nil)

(defvar autopair-global-mode nil "\
Non-nil if Autopair-Global mode is enabled.
See the command `autopair-global-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `autopair-global-mode'.")

(custom-autoload 'autopair-global-mode "autopair/autopair" nil)

(autoload 'autopair-global-mode "autopair/autopair" "\
Toggle Autopair mode in all buffers.
With prefix ARG, enable Autopair-Global mode if ARG is positive;
otherwise, disable it.  If called from Lisp, enable the mode if
ARG is omitted or nil.

Autopair mode is enabled in all buffers where
`autopair-on' would do it.
See `autopair-mode' for more information on Autopair mode.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads (clojure-mode) "clojure-mode/clojure-mode" "clojure-mode/clojure-mode.el"
;;;;;;  (20878 23079 595512 553000))
;;; Generated autoloads from clojure-mode/clojure-mode.el

(autoload 'clojure-mode "clojure-mode/clojure-mode" "\
Major mode for editing Clojure code - similar to Lisp mode.
Commands:
Delete converts tabs to spaces as it moves back.
Blank lines separate paragraphs.  Semicolons start comments.
\\{clojure-mode-map}
Note that `run-lisp' may be used either to start an inferior Lisp job
or to switch back to an existing one.

Entry to this mode calls the value of `clojure-mode-hook'
if that value is non-nil.

\(fn)" t nil)

(put 'clojure-test-ns-segment-position 'safe-local-variable 'integerp)

(put 'clojure-mode-load-command 'safe-local-variable 'stringp)

(add-to-list 'auto-mode-alist '("\\.clj\\'" . clojure-mode))

(add-to-list 'auto-mode-alist '("\\.cljs\\'" . clojure-mode))

(add-to-list 'auto-mode-alist '("\\.dtm\\'" . clojure-mode))

(add-to-list 'auto-mode-alist '("\\.edn\\'" . clojure-mode))

(add-to-list 'interpreter-mode-alist '("jark" . clojure-mode))

(add-to-list 'interpreter-mode-alist '("cake" . clojure-mode))

;;;***

;;;### (autoloads (clojure-test-mode) "clojure-mode/clojure-test-mode"
;;;;;;  "clojure-mode/clojure-test-mode.el" (20878 23079 595512 553000))
;;; Generated autoloads from clojure-mode/clojure-test-mode.el

(autoload 'clojure-test-mode "clojure-mode/clojure-test-mode" "\
A minor mode for running Clojure tests.

\\{clojure-test-mode-map}

\(fn &optional ARG)" t nil)

(defun clojure-test-maybe-enable nil "\
Enable clojure-test-mode if the current buffer contains a namespace
with a \"test.\" bit on it." (let ((ns (clojure-find-package))) (when (and ns (string-match "test\\(\\.\\|$\\)" ns)) (save-window-excursion (clojure-test-mode t)))))

(add-hook 'clojure-mode-hook 'clojure-test-maybe-enable)

;;;***

;;;### (autoloads (coffee-mode) "coffee-mode/coffee-mode" "coffee-mode/coffee-mode.el"
;;;;;;  (20878 23080 707556 382000))
;;; Generated autoloads from coffee-mode/coffee-mode.el

(autoload 'coffee-mode "coffee-mode/coffee-mode" "\
Major mode for editing CoffeeScript.

\(fn)" t nil)

(add-to-list 'auto-mode-alist '("\\.coffee\\'" . coffee-mode))

(add-to-list 'auto-mode-alist '("\\.iced\\'" . coffee-mode))

(add-to-list 'auto-mode-alist '("Cakefile\\'" . coffee-mode))

(add-to-list 'interpreter-mode-alist '("coffee" . coffee-mode))

;;;***

;;;### (autoloads (color-theme-initialize color-theme-submit color-theme-install
;;;;;;  color-theme-compare color-theme-make-snapshot color-theme-analyze-defun
;;;;;;  color-theme-print color-theme-install-at-point-for-current-frame
;;;;;;  color-theme-install-at-mouse color-theme-describe color-theme-select)
;;;;;;  "color-theme" "color-theme/color-theme.el" (17529 41105))
;;; Generated autoloads from color-theme/color-theme.el

(autoload 'color-theme-select "color-theme" "\
Displays a special buffer for selecting and installing a color theme.
With optional prefix ARG, this buffer will include color theme libraries
as well.  A color theme library is in itself not complete, it must be
used as part of another color theme to be useful.  Thus, color theme
libraries are mainly useful for color theme authors.

\(fn &optional ARG)" t nil)

(autoload 'color-theme-describe "color-theme" "\
Describe color theme listed at point.
This shows the documentation of the value of text-property color-theme
at point.  The text-property color-theme should be a color theme
function.  See `color-themes'.

\(fn)" t nil)

(autoload 'color-theme-install-at-mouse "color-theme" "\
Install color theme clicked upon using the mouse.
First argument EVENT is used to set point.  Then
`color-theme-install-at-point' is called.

\(fn EVENT)" t nil)

(autoload 'color-theme-install-at-point-for-current-frame "color-theme" "\
Install color theme at point for current frame only.
Binds `color-theme-is-global' to nil and calls
`color-theme-install-at-point'.

\(fn)" t nil)

(autoload 'color-theme-print "color-theme" "\
Print the current color theme function.

You can contribute this function to <URL:news:gnu.emacs.sources> or
paste it into your .emacs file and call it.  That should recreate all
the settings necessary for your color theme.

Example:

    (require 'color-theme)
    (defun my-color-theme ()
      \"Color theme by Alex Schroeder, created 2000-05-17.\"
      (interactive)
      (color-theme-install
       '(...
	 ...
	 ...)))
    (my-color-theme)

If you want to use a specific color theme function, you can call the
color theme function in your .emacs directly.

Example:

    (require 'color-theme)
    (color-theme-gnome2)

\(fn &optional BUF)" t nil)

(autoload 'color-theme-analyze-defun "color-theme" "\
Once you have a color-theme printed, check for missing faces.
This is used by maintainers who receive a color-theme submission
and want to make sure it follows the guidelines by the color-theme
author.

\(fn)" t nil)

(autoload 'color-theme-make-snapshot "color-theme" "\
Return the definition of the current color-theme.
The function returned will recreate the color-theme in use at the moment.

\(fn)" nil nil)

(autoload 'color-theme-compare "color-theme" "\
Compare two color themes.
This will print the differences between installing THEME-A and
installing THEME-B.  Note that the order is important: If a face is
defined in THEME-A and not in THEME-B, then this will not show up as a
difference, because there is no reset before installing THEME-B.  If a
face is defined in THEME-B and not in THEME-A, then this will show up as
a difference.

\(fn THEME-A THEME-B)" t nil)

(autoload 'color-theme-install "color-theme" "\
Install a color theme defined by frame parameters, variables and faces.

The theme is installed for all present and future frames; any missing
faces are created.  See `color-theme-install-faces'.

THEME is a color theme definition.  See below for more information.

If you want to install a color theme from your .emacs, use the output
generated by `color-theme-print'.  This produces color theme function
which you can copy to your .emacs.

A color theme definition is a list:
\([FUNCTION] FRAME-PARAMETERS VARIABLE-SETTINGS FACE-DEFINITIONS)

FUNCTION is the color theme function which called `color-theme-install'.
This is no longer used.  There was a time when this package supported
automatic factoring of color themes.  This has been abandoned.

FRAME-PARAMETERS is an alist of frame parameters.  These are installed
with `color-theme-install-frame-params'.  These are installed last such
that any changes to the default face can be changed by the frame
parameters.

VARIABLE-DEFINITIONS is an alist of variable settings.  These are
installed with `color-theme-install-variables'.

FACE-DEFINITIONS is an alist of face definitions.  These are installed
with `color-theme-install-faces'.

If `color-theme-is-cumulative' is nil, a color theme will undo face and
frame-parameter settings of previous color themes.

\(fn THEME)" nil nil)

(autoload 'color-theme-submit "color-theme" "\
Submit your color-theme to the maintainer.

\(fn)" t nil)

(autoload 'color-theme-initialize "color-theme" "\
Initialize the color theme package by loading color-theme-libraries.

\(fn)" t nil)

;;;***

;;;### (autoloads (css-mode) "css-mode/css-mode" "css-mode/css-mode.el"
;;;;;;  (20723 11640 315080 155000))
;;; Generated autoloads from css-mode/css-mode.el
(add-to-list 'auto-mode-alist '("\\.css\\'" . css-mode))

(autoload 'css-mode "css-mode/css-mode" "\
Major mode for editing CSS source code.

Key bindings:

\\{css-mode-map}

\(fn)" t nil)

;;;***

;;;### (autoloads (diff-git-default-bindings diff-git-diff-unstaged
;;;;;;  diff-git-diff-staged diff-git-buffer-stage diff-git-hunk-stage)
;;;;;;  "diff-git/diff-git" "diff-git/diff-git.el" (20731 64476 983998
;;;;;;  762000))
;;; Generated autoloads from diff-git/diff-git.el

(autoload 'diff-git-hunk-stage "diff-git/diff-git" "\
Stage the current hunk in the index using 'git apply --cached'.

\(fn)" t nil)

(autoload 'diff-git-buffer-stage "diff-git/diff-git" "\
Stage the all the hunks in the current `diff-mode' buffer using 'git apply --cached'.

\(fn)" t nil)

(autoload 'diff-git-diff-staged "diff-git/diff-git" "\
Show the diff of the index and HEAD.
Optional argument BUF is the buffer to store the diff contents
in, otherwise *vc-diff-staged*.

\(fn &optional BUF)" t nil)

(autoload 'diff-git-diff-unstaged "diff-git/diff-git" "\
Show the diff of the working tree and the index.
Optional argument BUF is the buffer to store the diff contents
in, otherwise *vc-diff-unstaged*.

\(fn &optional BUF)" t nil)

(autoload 'diff-git-default-bindings "diff-git/diff-git" "\
Add bindings to the `diff-mode' keymap.

\(fn)" nil nil)

(eval-after-load 'diff-mode '(diff-git-default-bindings))

(eval-after-load 'vc-mode '(diff-git-default-bindings))

;;;***

;;;### (autoloads (diminished-modes diminish-undo diminish) "diminish/diminish"
;;;;;;  "diminish/diminish.el" (20878 29189 446862 876000))
;;; Generated autoloads from diminish/diminish.el

(autoload 'diminish "diminish/diminish" "\
Diminish mode-line display of minor mode MODE to TO-WHAT (default \"\").

Interactively, enter (with completion) the name of any minor mode, followed
on the next line by what you want it diminished to (default empty string).
The response to neither prompt should be quoted.  However, in Lisp code,
both args must be quoted, the first as a symbol, the second as a string,
as in (diminish 'jiggle-mode \" Jgl\").

The mode-line displays of minor modes usually begin with a space, so
the modes' names appear as separate words on the mode line.  However, if
you're having problems with a cramped mode line, you may choose to use single
letters for some modes, without leading spaces.  Capitalizing them works
best; if you then diminish some mode to \"X\" but have abbrev-mode enabled as
well, you'll get a display like \"AbbrevX\".  This function prepends a space
to TO-WHAT if it's > 1 char long & doesn't already begin with a space.

\(fn MODE &optional TO-WHAT)" t nil)

(autoload 'diminish-undo "diminish/diminish" "\
Restore mode-line display of diminished mode MODE to its minor-mode value.
Do nothing if the arg is a minor mode that hasn't been diminished.

Interactively, enter (with completion) the name of any diminished mode (a
mode that was formerly a minor mode on which you invoked M-x diminish).
To restore all diminished modes to minor status, answer `diminished-modes'.
The response to the prompt shouldn't be quoted.  However, in Lisp code,
the arg must be quoted as a symbol, as in (diminish-undo 'diminished-modes).

\(fn MODE)" t nil)

(autoload 'diminished-modes "diminish/diminish" "\
Echo all active diminished or minor modes as if they were minor.
The display goes in the echo area; if it's too long even for that,
you can see the whole thing in the *Messages* buffer.
This doesn't change the status of any modes; it just lets you see
what diminished modes would be on the mode-line if they were still minor.

\(fn)" t nil)

;;;***

;;;### (autoloads (diredp-send-bug-report diredp-dired-plus-help
;;;;;;  diredp-describe-mode diredp-mouse-do-chmod diredp-mouse-do-load
;;;;;;  diredp-mouse-do-byte-compile diredp-mouse-do-compress diredp-mouse-do-grep
;;;;;;  diredp-mouse-do-print diredp-mouse-do-hardlink diredp-mouse-do-symlink
;;;;;;  diredp-mouse-do-shell-command diredp-mouse-do-delete diredp-mouse-downcase
;;;;;;  diredp-mouse-upcase diredp-mouse-do-rename diredp-mouse-do-copy
;;;;;;  diredp-mouse-flag-file-deletion diredp-mouse-mark/unmark-mark-region-files
;;;;;;  diredp-mouse-mark-region-files diredp-mouse-mark/unmark diredp-mouse-unmark
;;;;;;  diredp-mouse-mark diredp-mouse-backup-diff diredp-mouse-diff
;;;;;;  diredp-mouse-ediff diredp-mouse-view-file diredp-mouse-find-file
;;;;;;  dired-mouse-find-file-other-window diredp-mouse-find-file-other-frame
;;;;;;  diredp-find-file-other-frame diredp-mouse-3-menu diredp-toggle-marks-in-region
;;;;;;  diredp-flag-region-files-for-deletion diredp-unmark-region-files
;;;;;;  diredp-mark-region-files dired-mark-sexp diredp-chmod-this-file
;;;;;;  diredp-load-this-file diredp-byte-compile-this-file diredp-mouse-describe-file
;;;;;;  diredp-describe-file diredp-mouse-copy-tags diredp-copy-tags-this-file
;;;;;;  diredp-set-tag-value-this-file diredp-paste-replace-tags-this-file
;;;;;;  diredp-paste-add-tags-this-file diredp-remove-all-tags-this-file
;;;;;;  diredp-untag-this-file diredp-tag-this-file diredp-bookmark-this-file
;;;;;;  diredp-shell-command-this-file diredp-compress-this-file
;;;;;;  diredp-grep-this-file diredp-print-this-file diredp-hardlink-this-file
;;;;;;  diredp-symlink-this-file diredp-relsymlink-this-file diredp-copy-this-file
;;;;;;  diredp-rename-this-file diredp-upcase-this-file diredp-downcase-this-file
;;;;;;  diredp-capitalize-this-file diredp-delete-this-file diredp-capitalize
;;;;;;  dired-mark-files-regexp dired-do-delete dired-do-flagged-delete
;;;;;;  dired-goto-file dired-up-directory dired-do-find-marked-files
;;;;;;  dired-maybe-insert-subdir dired-do-load dired-do-byte-compile
;;;;;;  dired-do-compress diredp-ediff diredp-omit-unmarked diredp-omit-marked
;;;;;;  diredp-toggle-find-file-reuse-dir diredp-mouse-find-file-reuse-dir-buffer
;;;;;;  diredp-find-file-reuse-dir-buffer diredp-do-bookmark-in-bookmark-file
;;;;;;  diredp-set-bookmark-file-bookmark-for-marked diredp-mouse-do-bookmark
;;;;;;  diredp-do-bookmark diredp-mouse-do-set-tag-value diredp-do-set-tag-value
;;;;;;  diredp-mouse-do-paste-replace-tags diredp-do-paste-replace-tags
;;;;;;  diredp-mouse-do-paste-add-tags diredp-do-paste-add-tags diredp-mouse-do-remove-all-tags
;;;;;;  diredp-do-remove-all-tags diredp-mouse-do-untag diredp-do-untag
;;;;;;  diredp-mouse-do-tag diredp-do-tag diredp-unmark-files-tagged-not-all
;;;;;;  diredp-unmark-files-tagged-some diredp-unmark-files-tagged-none
;;;;;;  diredp-unmark-files-tagged-all diredp-unmark-files-tagged-regexp
;;;;;;  diredp-mark-files-tagged-regexp diredp-mark-files-tagged-not-all
;;;;;;  diredp-mark-files-tagged-some diredp-mark-files-tagged-none
;;;;;;  diredp-mark-files-tagged-all diredp-mark/unmark-extension
;;;;;;  diredp-marked-other-window diredp-marked diredp-do-redisplay-recursive
;;;;;;  diredp-do-touch-recursive diredp-do-chmod-recursive diredp-do-copy-recursive
;;;;;;  diredp-do-move-recursive diredp-downcase-recursive diredp-upcase-recursive
;;;;;;  diredp-capitalize-recursive diredp-copy-filename-as-kill-recursive
;;;;;;  diredp-list-marked-recursive diredp-marked-recursive-other-window
;;;;;;  diredp-marked-recursive diredp-do-grep-recursive diredp-do-query-replace-regexp-recursive
;;;;;;  diredp-do-find-marked-files-recursive diredp-set-bookmark-file-bookmark-for-marked-recursive
;;;;;;  diredp-do-bookmark-in-bookmark-file-recursive diredp-do-bookmark-recursive
;;;;;;  diredp-image-dired-comment-files-recursive diredp-image-dired-delete-tag-recursive
;;;;;;  diredp-image-dired-tag-files-recursive diredp-image-dired-display-thumbs-recursive
;;;;;;  diredp-do-print-recursive diredp-do-hardlink-recursive diredp-do-symlink-recursive
;;;;;;  diredp-do-shell-command-recursive diredp-insert-subdirs-recursive
;;;;;;  diredp-insert-subdirs diredp-dired-inserted-subdirs diredp-dired-this-subdir
;;;;;;  diredp-fileset diredp-dired-union-other-window diredp-dired-union
;;;;;;  diredp-dired-for-files-other-window diredp-dired-for-files
;;;;;;  diredp-dired-files-other-window diredp-dired-files diredp-w32-local-drives
;;;;;;  diredp-prompt-for-bookmark-prefix-flag diff-switches) "dired+/dired+"
;;;;;;  "dired+/dired+.el" (20878 29215 875766 883000))
;;; Generated autoloads from dired+/dired+.el

(defvar diff-switches "-c" "\
*A string or list of strings specifying switches to be passed to diff.")

(custom-autoload 'diff-switches "dired+/dired+" t)

(defvar diredp-prompt-for-bookmark-prefix-flag nil "\
*Non-nil means prompt for a prefix string for bookmark names.")

(custom-autoload 'diredp-prompt-for-bookmark-prefix-flag "dired+/dired+" t)

(defvar diredp-w32-local-drives '(("C:" "Local disk")) "\
*Local MS Windows drives that you want to use for `diredp-w32-drives'.
Each entry is a list (DRIVE DESCRIPTION), where DRIVE is the drive
name and DESCRIPTION describes DRIVE.")

(custom-autoload 'diredp-w32-local-drives "dired+/dired+" t)

(autoload 'diredp-dired-files "dired+/dired+" "\
Like `dired', but non-positive prefix arg prompts for files to list.
This is like `dired' unless you use a non-positive prefix arg.
In that case, you are prompted for names of files and directories to
list, and then you are prompted for the name of the Dired buffer that
lists them.  Use `C-g' when you are done entering file names to list.

In all cases, when inputting a file or directory name you can use
shell wildcards.

If you use Icicles, then in Icicle mode the following keys are bound
in the minibuffer during completion (`*' means the key requires
library `Bookmark+'):

  M-|       - Open Dired on the file names matching your input
  C-c +     - Create a new directory
 *C-x a +   - Add tags to the current-candidate file
 *C-x a -   - Remove tags from the current-candidate file
 *C-x m     - Access file bookmarks (not just autofiles)

\(fn ARG &optional SWITCHES)" t nil)

(autoload 'diredp-dired-files-other-window "dired+/dired+" "\
Same as `diredp-dired-files' except uses another window.

\(fn ARG &optional SWITCHES)" t nil)

(autoload 'diredp-dired-for-files "dired+/dired+" "\
Like `dired', but prompts for the specific files to list.
You are prompted for names of files and directories to list, and then
you are prompted for the name of the Dired buffer that lists them.
Use `C-g' when you are done entering file names to list.

In all cases, when inputting a file or directory name you can use
shell wildcards.

If you use Icicles, then in Icicle mode the following keys are bound
in the minibuffer during completion (`*' means the key requires
library `Bookmark+'):

  M-|       - Open Dired on the file names matching your input
  C-c +     - Create a new directory
 *C-x a +   - Add tags to the current-candidate file
 *C-x a -   - Remove tags from the current-candidate file
 *C-x m     - Access file bookmarks (not just autofiles)

\(fn ARG &optional SWITCHES)" t nil)

(autoload 'diredp-dired-for-files-other-window "dired+/dired+" "\
Same as `diredp-dired-for-files' except uses another window.

\(fn ARG &optional SWITCHES)" t nil)

(autoload 'diredp-dired-union "dired+/dired+" "\
Create a Dired buffer that is the union of some existing Dired buffers.
With a prefix arg, read `ls' switches.
You are prompted for the Dired buffers.  Use `C-g' when done choosing
them.  Then you are prompted for the name of the new Dired buffer.
Its `default-directory' is the same as the `default-directory' before
invoking the command.

The selected Dired listings are included in the order that you choose
them, and each entry is listed only once in the new Dired buffer.  The
new Dired listing respects the markings, subdirectory insertions, and
hidden subdirectories of the selected Dired listings.

However, in case of conflict between marked or unmarked status for the
same entry, the entry is marked.  Similarly, in case of conflict over
an included subdirectory between it being hidden or shown, it is
hidden, but its contained files are also listed.

\(fn DIRBUFS &optional SWITCHES)" t nil)

(autoload 'diredp-dired-union-other-window "dired+/dired+" "\
Same as `diredp-dired-union' but uses another window.

\(fn DIRBUFS &optional SWITCHES)" t nil)

(autoload 'diredp-fileset "dired+/dired+" "\
Open Dired on the files in fileset FLSET-NAME.

\(fn FLSET-NAME)" t nil)

(autoload 'diredp-dired-this-subdir "dired+/dired+" "\
Open Dired for the subdir at or above point.
If point is not on a subdir line, but is in an inserted subdir
listing, then use that subdir.

With a prefix arg:
 If the subdir is inserted and point is in the inserted listing then
 remove that listing and move to the ordinary subdir line.  In other
 words, when in an inserted listing, a prefix arg tears off the
 inserted subdir to its own Dired buffer.

\(fn &optional TEAR-OFF-P MSGP)" t nil)

(autoload 'diredp-dired-inserted-subdirs "dired+/dired+" "\
Open Dired for each of the subdirs inserted in this Dired buffer.
With a prefix arg, create the Dired buffers but do not display them.
Markings and current Dired switches are preserved.

\(fn &optional NO-SHOW-P MSGP)" t nil)

(autoload 'diredp-insert-subdirs "dired+/dired+" "\
Insert the marked subdirectories.
Like using \\<dired-mode-map>`\\[dired-maybe-insert-subdir]' at each marked directory line.

\(fn &optional SWITCHES)" t nil)

(autoload 'diredp-insert-subdirs-recursive "dired+/dired+" "\
Insert the marked subdirs, including those in marked subdirs.
Like `diredp-insert-subdirs', but act recursively on subdirs.
The subdirs inserted are those that are marked in the current Dired
buffer, or all subdirs in the directory if none are marked.  Marked
subdirectories are handled recursively in the same way (their marked
subdirs are inserted...).

With a prefix argument, ignore all marks - include all files in this
Dired buffer and all subdirs, recursively.

\(fn &optional IGNORE-MARKS-P)" t nil)

(autoload 'diredp-do-shell-command-recursive "dired+/dired+" "\
Run shell COMMAND on the marked files, including those in marked subdirs.
Like `dired-do-shell-command', but act recursively on subdirs.
The files included are those that are marked in the current Dired
buffer, or all files in the directory if none are marked.  Marked
subdirectories are handled recursively in the same way.

With a prefix argument, ignore all marks - include all files in this
Dired buffer and all subdirs, recursively.

\(fn COMMAND &optional IGNORE-MARKS-P)" t nil)

(autoload 'diredp-do-symlink-recursive "dired+/dired+" "\
Make symbolic links to marked files, including those in marked subdirs.
Like `dired-do-symlink', but act recursively on subdirs to pick up the
files to link.

The files included are those that are marked in the current Dired
buffer, or all files in the directory if none are marked.  Marked
subdirectories are handled recursively in the same way.

With a prefix argument, ignore all marks - include all files in this
Dired buffer and all subdirs, recursively.

\(fn &optional IGNORE-MARKS-P)" t nil)

(autoload 'diredp-do-hardlink-recursive "dired+/dired+" "\
Add hard links for marked files, including those in marked subdirs.
Like `dired-do-hardlink', but act recursively on subdirs to pick up the
files to link.

The files included are those that are marked in the current Dired
buffer, or all files in the directory if none are marked.  Marked
subdirectories are handled recursively in the same way.

With a prefix argument, ignore all marks - include all files in this
Dired buffer and all subdirs, recursively.

\(fn &optional IGNORE-MARKS-P)" t nil)

(autoload 'diredp-do-print-recursive "dired+/dired+" "\
Print the marked files, including those in marked subdirs.
Like `dired-do-print', but act recursively on subdirs to pick up the
files to print.

The files included are those that are marked in the current Dired
buffer, or all files in the directory if none are marked.  Marked
subdirectories are handled recursively in the same way.

With a prefix argument, ignore all marks - include all files in this
Dired buffer and all subdirs, recursively.

\(fn &optional IGNORE-MARKS-P)" t nil)

(autoload 'diredp-image-dired-display-thumbs-recursive "dired+/dired+" "\
Display thumbnails of marked files, including those in marked subdirs.
Like `image-dired-display-thumbs', but act recursively on subdirs.
Optional arguments APPEND and DO-NOT-POP are as for
`image-dired-display-thumbs'.

The files included are those that are marked in the current Dired
buffer, or all files in the directory if none are marked.  Marked
subdirectories are handled recursively in the same way.

With a prefix argument, ignore all marks - include all files in this
Dired buffer and all subdirs, recursively.

\(fn &optional IGNORE-MARKS-P APPEND DO-NOT-POP)" t nil)

(autoload 'diredp-image-dired-tag-files-recursive "dired+/dired+" "\
Tag marked file(s) in dired, including those in marked subdirs
Like `image-dired-tag-files', but act recursively on subdirs.
The files included are those that are marked in the current Dired
buffer, or all files in the directory if none are marked.  Marked
subdirectories are handled recursively in the same way.

With a prefix argument, ignore all marks - include all files in this
Dired buffer and all subdirs, recursively.

\(fn &optional IGNORE-MARKS-P)" t nil)

(autoload 'diredp-image-dired-delete-tag-recursive "dired+/dired+" "\
Remove tag for selected file(s), including those in marked subdirs.
Like `image-dired-delete-tag', but act recursively on subdirs.
The files included are those that are marked in the current Dired
buffer, or all files in the directory if none are marked.  Marked
subdirectories are handled recursively in the same way.

With a prefix argument, ignore all marks - include all files in this
Dired buffer and all subdirs, recursively.

\(fn &optional IGNORE-MARKS-P)" t nil)

(autoload 'diredp-image-dired-comment-files-recursive "dired+/dired+" "\
Add comment to marked files in dired, including those in marked subdirs.
Like `image-dired-dired-comment-files' but act recursively on subdirs.
The files included are those that are marked in the current Dired
buffer, or all files in the directory if none are marked.  Marked
subdirectories are handled recursively in the same way.

With a prefix argument, ignore all marks - include all files in this
Dired buffer and all subdirs, recursively.

\(fn &optional IGNORE-MARKS-P)" t nil)

(autoload 'diredp-do-bookmark-recursive "dired+/dired+" "\
Bookmark the marked files, including those in marked subdirs.
Like `diredp-do-bookmark', but act recursively on subdirs.
The files included are those that are marked in the current Dired
buffer, or all files in the directory if none are marked.  Marked
subdirectories are handled recursively in the same way.

With a prefix argument, ignore all marks - include all files in this
Dired buffer and all subdirs, recursively.

\(fn &optional IGNORE-MARKS-P PREFIX)" t nil)

(autoload 'diredp-do-bookmark-in-bookmark-file-recursive "dired+/dired+" "\
Bookmark files here and below in BOOKMARK-FILE and save BOOKMARK-FILE.
Like `diredp-do-bookmark-in-bookmark-file', but act recursively on
subdirs.  The files included are those that are marked in the current
Dired buffer, or all files in the directory if none are marked.
Marked subdirectories are handled recursively in the same way.

With a prefix argument, ignore all marks - include all files in this
Dired buffer and all subdirs, recursively.

\(fn BOOKMARK-FILE &optional PREFIX IGNORE-MARKS-P BFILE-BOOKMARKP)" t nil)

(autoload 'diredp-set-bookmark-file-bookmark-for-marked-recursive "dired+/dired+" "\
Bookmark the marked files and create a bookmark-file bookmark for them.
Like `diredp-set-bookmark-file-bookmark-for-marked', but act
recursively on subdirs.

The files included are those that are marked in the current Dired
buffer, or all files in the directory if none are marked.  Marked
subdirectories are handled recursively in the same way.

With a prefix argument, ignore all marks - include all files in this
Dired buffer and all subdirs, recursively.

\(fn BOOKMARK-FILE &optional PREFIX ARG)" t nil)

(autoload 'diredp-do-find-marked-files-recursive "dired+/dired+" "\
Find marked files simultaneously, including those in marked subdirs.
Like `dired-do-find-marked-files', but act recursively on subdirs.
The files included are those that are marked in the current Dired
buffer, or all files in the directory if none are marked.  Marked
subdirectories are handled recursively in the same way.

With a prefix argument, ignore all marks - include all files in this
Dired buffer and all subdirs, recursively.

\(fn &optional IGNORE-MARKS-P)" t nil)

(autoload 'diredp-do-query-replace-regexp-recursive "dired+/dired+" "\
Do `query-replace-regexp' of FROM with TO, on all marked files.
If you exit (\\[keyboard-quit], RET or q), you can resume the query replace
with the command \\[tags-loop-continue].

\(fn FROM TO &optional IGNORE-MARKS-P)" t nil)

(autoload 'diredp-do-grep-recursive "dired+/dired+" "\
Run `grep' on marked files, including those in marked subdirs.
Like `diredp-do-grep', but act recursively on subdirs.
The files included are those that are marked in the current Dired
buffer, or all files in the directory if none are marked.  Marked
subdirectories are handled recursively in the same way.

With a prefix argument, ignore all marks - include all files in this
Dired buffer and all subdirs, recursively.

\(fn COMMAND-ARGS &optional IGNORE-MARKS-P)" t nil)

(autoload 'diredp-marked-recursive "dired+/dired+" "\
Open Dired on marked files, including those in marked subdirs.
Like `diredp-marked', but act recursively on subdirs.

See `diredp-do-find-marked-files-recursive' for a description of the
files included.  In particular, if no files are marked here or in a
marked subdir, then all files in the directory are included.

\(fn DIRNAME &optional IGNORE-MARKED-P)" t nil)

(autoload 'diredp-marked-recursive-other-window "dired+/dired+" "\
Same as `diredp-marked-recursive', but uses a different window.

\(fn DIRNAME &optional IGNORE-MARKED-P)" t nil)

(autoload 'diredp-list-marked-recursive "dired+/dired+" "\
List the files marked here and in marked subdirs, recursively.
See `diredp-do-find-marked-files-recursive' for a description of the
files included.  In particular, if no files are marked here or in a
marked subdir, then all files in the directory are included.

Non-interactively, non-nil PREDICATE is a file-name predicate.  List
only the files for which it returns non-nil.

\(fn &optional IGNORE-MARKS-P PREDICATE)" t nil)

(autoload 'diredp-copy-filename-as-kill-recursive "dired+/dired+" "\
Copy names of marked files here and in marked subdirs, to `kill-ring'.
The names are separated by a space.

Like `dired-copy-filename-as-kill', but act recursively on subdirs.
\(Do not copy subdir names themselves.)

With no prefix arg, use relative file names.
With a zero prefix arg, use absolute file names.
With a plain prefix arg (`C-u'), use names relative to the current
Dired directory.  (This might contain slashes if in a subdirectory.)

If on a subdir headerline, use absolute subdir name instead - prefix
arg and marked files are ignored in this case.

The files included are those that are marked in the current Dired
buffer, or all files in the directory if none are marked.  Marked
subdirectories are handled recursively in the same way.

\(fn &optional ARG)" t nil)

(autoload 'diredp-capitalize-recursive "dired+/dired+" "\
Rename marked files, including in marked subdirs, by capitalizing them.
Like `diredp-capitalize', but act recursively on subdirs.

The files included are those that are marked in the current Dired
buffer, or all files in the directory if none are marked.  Marked
subdirectories are handled recursively in the same way.

With a prefix argument, ignore all marks - include all files in this
Dired buffer and all subdirs, recursively.

\(fn &optional IGNORE-MARKS-P)" t nil)

(autoload 'diredp-upcase-recursive "dired+/dired+" "\
Rename marked files, including in marked subdirs, making them uppercase.
Like `dired-upcase', but act recursively on subdirs.

The files included are those that are marked in the current Dired
buffer, or all files in the directory if none are marked.  Marked
subdirectories are handled recursively in the same way.

With a prefix argument, ignore all marks - include all files in this
Dired buffer and all subdirs, recursively.

\(fn &optional IGNORE-MARKS-P)" t nil)

(autoload 'diredp-downcase-recursive "dired+/dired+" "\
Rename marked files, including in marked subdirs, making them lowercase.
Like `dired-downcase', but act recursively on subdirs.

The files included are those that are marked in the current Dired
buffer, or all files in the directory if none are marked.  Marked
subdirectories are handled recursively in the same way.

With a prefix argument, ignore all marks - include all files in this
Dired buffer and all subdirs, recursively.

\(fn &optional IGNORE-MARKS-P)" t nil)

(autoload 'diredp-do-move-recursive "dired+/dired+" "\
Move marked files, including in marked subdirs, to a given directory.
Like `dired-do-rename', but act recursively on subdirs to pick up the
files to move.

The files included are those that are marked in the current Dired
buffer, or all files in the directory if none are marked.  Marked
subdirectories are handled recursively in the same way.

This means move the marked files of marked subdirs and their marked
subdirs, etc.  It does not mean move or rename the subdirs themselves
recursively.

With a prefix argument, ignore all marks - include all files in this
Dired buffer and all subdirs, recursively.

Renames any buffers that are visiting the files.

The default suggested for the target directory depends on the value of
`dired-dwim-target', which see.

\(fn &optional IGNORE-MARKS-P)" t nil)

(autoload 'diredp-do-copy-recursive "dired+/dired+" "\
Copy marked files, including in marked subdirs, to a given directory.
Like `dired-do-copy', but act recursively on subdirs to pick up the
files to copy.

The files included are those that are marked in the current Dired
buffer, or all files in the directory if none are marked.  Marked
subdirectories are handled recursively in the same way.

This means copy the marked files of marked subdirs and their marked
subdirs, etc.  It does not mean copy the subdirs themselves
recursively.

With a prefix argument, ignore all marks - include all files in this
Dired buffer and all subdirs, recursively.

Preserves the last-modified date when copying, unless
`dired-copy-preserve-time' is nil.

The default suggested for the target directory depends on the value of
`dired-dwim-target', which see.

This command copies symbolic links by creating new ones, like UNIX
command `cp -d'.

\(fn &optional IGNORE-MARKS-P)" t nil)

(autoload 'diredp-do-chmod-recursive "dired+/dired+" "\
Change the mode of the marked files, including those in marked subdirs.
Symbolic modes like `g+w' are allowed.

Note that marked subdirs are not changed.  Their markings are used only
to indicate that some of their files are to be changed.

\(fn &optional IGNORE-MARKS-P)" t nil)

(autoload 'diredp-do-touch-recursive "dired+/dired+" "\
Change the timestamp of marked files, including those in marked subdirs.
This calls `touch'.  Like `dired-do-touch', but act recursively on
subdirs.  The subdirs inserted are those that are marked in the
current Dired buffer, or all subdirs in the directory if none are
marked.  Marked subdirectories are handled recursively in the same
way.

With a prefix argument, ignore all marks - include all files in this
Dired buffer and all subdirs, recursively.

\(fn &optional IGNORE-MARKS-P)" t nil)

(autoload 'diredp-do-redisplay-recursive "dired+/dired+" "\
Redisplay marked file lines, including those in marked subdirs.
Like `dired-do-redisplay' with no args, but act recursively on
subdirs.

\(fn &optional MSGP)" t nil)

(autoload 'diredp-marked "dired+/dired+" "\
Open Dired on only the marked files or the next N files.
With a non-zero numeric prefix arg N, use the next abs(N) files.
A plain (`C-u'), zero, or negative prefix arg prompts for listing
switches as in command `dired'.

Note that the marked files can include files in inserted
subdirectories, so the Dired buffer that is opened can contain files
from multiple directories in the same tree.

\(fn DIRNAME &optional N SWITCHES)" t nil)

(autoload 'diredp-marked-other-window "dired+/dired+" "\
Same as `diredp-marked', but uses a different window.

\(fn DIRNAME &optional N SWITCHES)" t nil)

(autoload 'diredp-mark/unmark-extension "dired+/dired+" "\
Mark all files with a certain EXTENSION for use in later commands.
A `.' is not automatically prepended to the string entered.
Non-nil prefix argument UNMARK-P means unmark instead of mark.

\(fn EXTENSION &optional UNMARK-P)" t nil)

(autoload 'diredp-mark-files-tagged-all "dired+/dired+" "\
Mark all files that are tagged with *each* tag in TAGS.
As a special case, if TAGS is empty, then mark the files that have
 any tags at all (i.e., at least one tag).
With a prefix arg, mark all that are *not* tagged with *any* TAGS.
You need library `bookmark+.el' to use this command.

\(fn TAGS &optional NONE-P PREFIX)" t nil)

(autoload 'diredp-mark-files-tagged-none "dired+/dired+" "\
Mark all files that are not tagged with *any* tag in TAGS.
As a special case, if TAGS is empty, then mark the files that have
 no tags at all.
With a prefix arg, mark all that are tagged with *each* tag in TAGS.
You need library `bookmark+.el' to use this command.

\(fn TAGS &optional ALLP PREFIX)" t nil)

(autoload 'diredp-mark-files-tagged-some "dired+/dired+" "\
Mark all files that are tagged with *some* tag in TAGS.
As a special case, if TAGS is empty, then mark the files that have
 any tags at all (i.e., at least one tag).
With a prefix arg, mark all that are *not* tagged with *all* TAGS.
You need library `bookmark+.el' to use this command.

\(fn TAGS &optional SOMENOTP PREFIX)" t nil)

(autoload 'diredp-mark-files-tagged-not-all "dired+/dired+" "\
Mark all files that are not tagged with *all* TAGS.
As a special case, if TAGS is empty, then mark the files that have
 no tags at all.
With a prefix arg, mark all that are tagged with *some* TAGS.
You need library `bookmark+.el' to use this command.

\(fn TAGS &optional SOMEP PREFIX)" t nil)

(autoload 'diredp-mark-files-tagged-regexp "dired+/dired+" "\
Mark files that have at least one tag that matches REGEXP.
With a prefix arg, mark all that are tagged but have no matching tags.
You need library `bookmark+.el' to use this command.

\(fn REGEXP &optional NOTP PREFIX)" t nil)

(autoload 'diredp-unmark-files-tagged-regexp "dired+/dired+" "\
Unmark files that have at least one tag that matches REGEXP.
With a prefix arg, unmark all that are tagged but have no matching tags.
You need library `bookmark+.el' to use this command.

\(fn REGEXP &optional NOTP PREFIX)" t nil)

(autoload 'diredp-unmark-files-tagged-all "dired+/dired+" "\
Unmark all files that are tagged with *each* tag in TAGS.
As a special case, if TAGS is empty, then unmark the files that have
 any tags at all (i.e., at least one tag).
With a prefix arg, unmark all that are *not* tagged with *any* TAGS.
You need library `bookmark+.el' to use this command.

\(fn TAGS &optional NONE-P PREFIX)" t nil)

(autoload 'diredp-unmark-files-tagged-none "dired+/dired+" "\
Unmark all files that are *not* tagged with *any* tag in TAGS.
As a special case, if TAGS is empty, then unmark the files that have
 no tags at all.
With a prefix arg, unmark all that are tagged with *each* tag in TAGS.
You need library `bookmark+.el' to use this command.

\(fn TAGS &optional ALLP PREFIX)" t nil)

(autoload 'diredp-unmark-files-tagged-some "dired+/dired+" "\
Unmark all files that are tagged with *some* tag in TAGS.
As a special case, if TAGS is empty, then unmark the files that have
 any tags at all.
With a prefix arg, unmark all that are *not* tagged with *all* TAGS.
You need library `bookmark+.el' to use this command.

\(fn TAGS &optional SOMENOTP PREFIX)" t nil)

(autoload 'diredp-unmark-files-tagged-not-all "dired+/dired+" "\
Unmark all files that are *not* tagged with *all* TAGS.
As a special case, if TAGS is empty, then unmark the files that have
 no tags at all.
With a prefix arg, unmark all that are tagged with *some* TAGS.
You need library `bookmark+.el' to use this command.

\(fn TAGS &optional SOMEP PREFIX)" t nil)

(autoload 'diredp-do-tag "dired+/dired+" "\
Tag the marked (or the next prefix argument) files.
You need library `bookmark+.el' to use this command.

Hit `RET' to enter each tag, then hit `RET' again after the last tag.
You can use completion to enter each tag.  Completion is lax: you are
not limited to existing tags.

TAGS is a list of strings.  PREFIX is as for `diredp-do-bookmark'.

A prefix argument ARG specifies files to use instead of those marked.
 An integer means use the next ARG files (previous -ARG, if < 0).
 `C-u': Use the current file (whether or not any are marked).
 `C-u C-u': Use all files in Dired, except directories.
 `C-u C-u C-u': Use all files and directories, except `.' and `..'.
 `C-u C-u C-u C-u': Use all files and all directories.

\(fn TAGS &optional PREFIX ARG)" t nil)

(autoload 'diredp-mouse-do-tag "dired+/dired+" "\
In Dired, add some tags to this file.
You need library `bookmark+.el' to use this command.

\(fn EVENT)" t nil)

(autoload 'diredp-do-untag "dired+/dired+" "\
Remove some tags from the marked (or the next prefix arg) files.
You need library `bookmark+.el' to use this command.

Hit `RET' to enter each tag, then hit `RET' again after the last tag.
You can use completion to enter each tag.  Completion is lax: you are
not limited to existing tags.

TAGS is a list of strings.  PREFIX is as for `diredp-do-bookmark'.

A prefix argument ARG specifies files to use instead of those marked.
 An integer means use the next ARG files (previous -ARG, if < 0).
 `C-u': Use the current file (whether or not any are marked).
 `C-u C-u': Use all files in Dired, except directories.
 `C-u C-u C-u': Use all files and directories, except `.' and `..'.
 `C-u C-u C-u C-u': Use all files and all directories.

\(fn TAGS &optional PREFIX ARG)" t nil)

(autoload 'diredp-mouse-do-untag "dired+/dired+" "\
In Dired, remove some tags from this file.
You need library `bookmark+.el' to use this command.

\(fn EVENT)" t nil)

(autoload 'diredp-do-remove-all-tags "dired+/dired+" "\
Remove all tags from the marked (or the next prefix arg) files.
You need library `bookmark+.el' to use this command.

PREFIX is as for `diredp-do-bookmark'.

A prefix argument ARG specifies files to use instead of those marked.
 An integer means use the next ARG files (previous -ARG, if < 0).
 `C-u': Use the current file (whether or not any are marked).
 `C-u C-u': Use all files in Dired, except directories.
 `C-u C-u C-u': Use all files and directories, except `.' and `..'.
 `C-u C-u C-u C-u': Use all files and all directories.

\(fn &optional PREFIX ARG)" t nil)

(autoload 'diredp-mouse-do-remove-all-tags "dired+/dired+" "\
In Dired, remove all tags from the marked (or next prefix arg) files.
You need library `bookmark+.el' to use this command.

\(fn EVENT)" t nil)

(autoload 'diredp-do-paste-add-tags "dired+/dired+" "\
Add previously copied tags to the marked (or next prefix arg) files.
The tags were previously copied from a file to `bmkp-copied-tags'.
You need library `bookmark+.el' to use this command.

A prefix argument ARG specifies files to use instead of those marked.
 An integer means use the next ARG files (previous -ARG, if < 0).
 `C-u': Use the current file (whether or not any are marked).
 `C-u C-u': Use all files in Dired, except directories.
 `C-u C-u C-u': Use all files and directories, except `.' and `..'.
 `C-u C-u C-u C-u': Use all files and all directories.

\(fn &optional PREFIX ARG)" t nil)

(autoload 'diredp-mouse-do-paste-add-tags "dired+/dired+" "\
In Dired, add previously copied tags to this file.
The tags were previously copied from a file to `bmkp-copied-tags'.
You need library `bookmark+.el' to use this command.

\(fn EVENT)" t nil)

(autoload 'diredp-do-paste-replace-tags "dired+/dired+" "\
Replace tags for marked (or next prefix arg) files with copied tags.
The tags were previously copied from a file to `bmkp-copied-tags'.
You need library `bookmark+.el' to use this command.

A prefix argument ARG specifies files to use instead of those marked.
 An integer means use the next ARG files (previous -ARG, if < 0).
 `C-u': Use the current file (whether or not any are marked).
 `C-u C-u': Use all files in Dired, except directories.
 `C-u C-u C-u': Use all files and directories, except `.' and `..'.
 `C-u C-u C-u C-u': Use all files and all directories.

\(fn &optional PREFIX ARG)" t nil)

(autoload 'diredp-mouse-do-paste-replace-tags "dired+/dired+" "\
In Dired, replace tags for this file with tags copied previously.
The tags were previously copied from a file to `bmkp-copied-tags'.
You need library `bookmark+.el' to use this command.

\(fn EVENT)" t nil)

(autoload 'diredp-do-set-tag-value "dired+/dired+" "\
Set TAG value to VALUE, for the marked (or next prefix arg) files.
This does not change the TAG name.
You need library `bookmark+.el' to use this command.

PREFIX is as for `diredp-do-bookmark'.

A prefix argument ARG specifies files to use instead of those marked.
 An integer means use the next ARG files (previous -ARG, if < 0).
 `C-u': Use the current file (whether or not any are marked).
 `C-u C-u': Use all files in Dired, except directories.
 `C-u C-u C-u': Use all files and directories, except `.' and `..'.
 `C-u C-u C-u C-u': Use all files and all directories.

\(fn TAG VALUE &optional PREFIX ARG)" t nil)

(autoload 'diredp-mouse-do-set-tag-value "dired+/dired+" "\
In Dired, set the value of a tag for this file.
This does not change the tag name.
You need library `bookmark+.el' to use this command.

\(fn EVENT)" t nil)

(autoload 'diredp-do-bookmark "dired+/dired+" "\
Bookmark the marked (or the next prefix argument) files.
Each bookmark name is the non-directory portion of the file name,
 prefixed by PREFIX if it is non-nil.
Interactively, you are prompted for the PREFIX if
 `diredp-prompt-for-bookmark-prefix-flag' is non-nil.
The bookmarked position is the beginning of the file.
If you use library `bookmark+.el' then the bookmark is an autofile.

A prefix argument ARG specifies files to use instead of those marked.
 An integer means use the next ARG files (previous -ARG, if < 0).
 `C-u': Use the current file (whether or not any are marked).
 `C-u C-u': Use all files in Dired, except directories.
 `C-u C-u C-u': Use all files and directories, except `.' and `..'.
 `C-u C-u C-u C-u': Use all files and all directories.

\(fn &optional PREFIX ARG)" t nil)

(autoload 'diredp-mouse-do-bookmark "dired+/dired+" "\
In Dired, bookmark this file.  See `diredp-do-bookmark'.

\(fn EVENT)" t nil)

(autoload 'diredp-set-bookmark-file-bookmark-for-marked "dired+/dired+" "\
Bookmark the marked files and create a bookmark-file bookmark for them.
The bookmarked position is the beginning of the file.
Jumping to the bookmark-file bookmark loads the set of file bookmarks.
You need library `bookmark+.el' to use this command.

Each bookmark name is the non-directory portion of the file name,
 prefixed by PREFIX if it is non-nil.
Interactively, you are prompted for PREFIX if
 `diredp-prompt-for-bookmark-prefix-flag' is non-nil.

A prefix argument ARG specifies files to use instead of those marked.
 An integer means use the next ARG files (previous -ARG, if < 0).
 `C-u': Use the current file (whether or not any are marked).
 `C-u C-u': Use all files in Dired, except directories.
 `C-u C-u C-u': Use all files and directories, except `.' and `..'.
 `C-u C-u C-u C-u': Use all files and all directories.

You are also prompted for the bookmark file, BOOKMARK-FILE.  The
default is `.emacs.bmk' in the current directory, but you can enter
any file name, anywhere.

The marked-file bookmarks are added to file BOOKMARK-FILE, but this
command does not make BOOKMARK-FILE the current bookmark file.  To
make it current, just jump to the bookmark-file bookmark created by
this command.  That bookmark (which bookmarks BOOKMARK-FILE) is
defined in that current bookmark file.

Example:

 Bookmark file `~/.emacs.bmk' is current before invoking this command.
 The current (Dired) directory is `/foo/bar'.
 The marked files are bookmarked in the (possibly new) bookmark file
   `/foo/bar/.emacs.bmk'.
 The bookmarks for the marked files have names prefixed by `FOOBAR '.
 The name of the bookmark-file bookmark is `Foobar Files'.
 Bookmark `Foobar Files' is itself in bookmark file `~/.emacs.bmk'.
 Bookmark file `~/.emacs.bmk' is current after invoking this command.

You are prompted for the name of the bookmark-file bookmark, the
BOOKMARK-FILE for the marked-file bookmarks, and a PREFIX string for
each of the marked-file bookmarks.

See also command `diredp-do-bookmark-in-bookmark-file'.

\(fn BOOKMARK-FILE &optional PREFIX ARG)" t nil)

(autoload 'diredp-do-bookmark-in-bookmark-file "dired+/dired+" "\
Bookmark files in BOOKMARK-FILE and save BOOKMARK-FILE.
The files bookmarked are the marked files, by default.
The bookmarked position is the beginning of the file.
You are prompted for BOOKMARK-FILE.  The default is `.emacs.bmk' in
the current directory, but you can enter any file name, anywhere.
You need library `bookmark+.el' to use this command.

The marked files are bookmarked in file BOOKMARK-FILE, but this
command does not make BOOKMARK-FILE the current bookmark file.  To
make it current, use `\\[bmkp-switch-bookmark-file]' (`bmkp-switch-bookmark-file').

Each bookmark name is the non-directory portion of the file name,
 prefixed by PREFIX if it is non-nil.
Interactively, you are prompted for PREFIX if
 `diredp-prompt-for-bookmark-prefix-flag' is non-nil.

Interactively, a prefix argument ARG specifies the files to use
instead of those marked.

 An integer means use the next ARG files (previous -ARG, if < 0).
 `C-u': Use the current file (whether or not any are marked).
 `C-u C-u': Use all files in Dired, except directories.
 `C-u C-u C-u': Use all files and directories, except `.' and `..'.
 `C-u C-u C-u C-u': Use all files and all directories.

See also command `diredp-set-bookmark-file-bookmark-for-marked'.

Non-interactively:

 * Non-nil BFILE-BOOKMARKP means create a bookmark-file bookmark for
   BOOKMARK-FILE.
 * Non-nil FILES is the list of files to bookmark.

\(fn BOOKMARK-FILE &optional PREFIX ARG BFILE-BOOKMARKP FILES)" t nil)

(autoload 'diredp-find-file-reuse-dir-buffer "dired+/dired+" "\
Like `dired-find-file', but reuse Dired buffers.
Unlike `dired-find-alternate-file' this does not use
`find-alternate-file' if the target is not a directory.

\(fn)" t nil)

(autoload 'diredp-mouse-find-file-reuse-dir-buffer "dired+/dired+" "\
Like `diredp-mouse-find-file', but reuse Dired buffers.
Unlike `dired-find-alternate-file' this does not use
`find-alternate-file' if the target is not a directory.

\(fn EVENT)" t nil)

(defalias 'toggle-diredp-find-file-reuse-dir 'diredp-toggle-find-file-reuse-dir)

(autoload 'diredp-toggle-find-file-reuse-dir "dired+/dired+" "\
Toggle whether Dired `find-file' commands reuse directories.
A prefix arg specifies directly whether or not to reuse.
 If its numeric value is non-negative then reuse; else do not reuse.

To set the behavior as a preference (default behavior), put this in
your ~/.emacs, where VALUE is 1 to reuse or -1 to not reuse:

 (diredp-toggle-find-file-reuse-dir VALUE)

\(fn FORCE-P)" t nil)

(autoload 'diredp-omit-marked "dired+/dired+" "\
Omit lines of marked files.  Return the number of lines omitted.

\(fn)" t nil)

(autoload 'diredp-omit-unmarked "dired+/dired+" "\
Omit lines of unmarked files.  Return the number of lines omitted.

\(fn)" t nil)

(autoload 'diredp-ediff "dired+/dired+" "\
Compare file at cursor with file FILE2 using `ediff'.
FILE2 defaults to the file at the cursor as well.  If you enter just a
directory name for FILE2, then the file at the cursor is compared with
a file of the same name in that directory.  FILE2 is the second file
given to `ediff'; the file at the cursor is the first.

Try to guess a useful default value for FILE2, as follows:

* If the mark is active, use the file at mark.
* Else if the file at cursor is a autosave file or a backup file, use
  the corresponding base file.
* Else if there is any backup file for the file at point, use the
  newest backup file for it.
* Else use the file at point.

\(fn FILE2)" t nil)

(autoload 'dired-do-compress "dired+/dired+" "\
Compress or uncompress marked (or next prefix argument) files.
A prefix argument ARG specifies files to use instead of marked.
 An integer means use the next ARG files (previous -ARG, if < 0).
 `C-u': Use the current file (whether or not any are marked).
 `C-u C-u': Use all files in Dired, except directories.
 `C-u C-u C-u': Use all files and directories, except `.' and `..'.
 `C-u C-u C-u C-u': Use all files and all directories.

\(fn &optional ARG)" t nil)

(autoload 'dired-do-byte-compile "dired+/dired+" "\
Byte compile marked (or next prefix argument) Emacs Lisp files.
A prefix argument ARG specifies files to use instead of marked.
 An integer means use the next ARG files (previous -ARG, if < 0).
 `C-u': Use the current file (whether or not any are marked).
 `C-u C-u': Use all files in Dired, except directories.
 `C-u C-u C-u': Use all files and directories, except `.' and `..'.
 `C-u C-u C-u C-u': Use all files and all directories.

\(fn &optional ARG)" t nil)

(autoload 'dired-do-load "dired+/dired+" "\
Load the marked (or next prefix argument) Emacs Lisp files.
A prefix argument ARG specifies files to use instead of marked.
 An integer means use the next ARG files (previous -ARG, if < 0).
 `C-u': Use the current file (whether or not any are marked).
 `C-u C-u': Use all files in Dired, except directories.
 `C-u C-u C-u': Use all files and directories, except `.' and `..'.
 `C-u C-u C-u C-u': Use all files and all directories.

\(fn &optional ARG)" t nil)

(autoload 'dired-maybe-insert-subdir "dired+/dired+" "\
Move to Dired subdirectory line or subdirectory listing.
This bounces you back and forth between a subdirectory line and its
inserted listing header line.  Using it on a non-directory line in a
subdirectory listing acts the same as using it on the subdirectory
header line.

* If on a subdirectory line, then go to the subdirectory's listing,
  creating it if not yet present.

* If on a subdirectory listing header line or a non-directory file in
  a subdirectory listing, then go to the line for the subdirectory in
  the parent directory listing.

* If on a non-directory file in the top Dired directory listing, do
  nothing.

Subdirectories are listed in the same position as for `ls -lR' output.

With a prefix arg, you can edit the `ls' switches used for this
listing.  Add `R' to the switches to expand the directory tree under a
subdirectory.

Dired remembers the switches you specify with a prefix arg, so
reverting the buffer does not reset them.  However, you might
sometimes need to reset some subdirectory switches after a
`dired-undo'.  You can reset all subdirectory switches to the
default value using \\<dired-mode-map>\\[dired-reset-subdir-switches].  See Info node
`(emacs)Subdir switches' for more details.

\(fn DIRNAME &optional SWITCHES NO-ERROR-IF-NOT-DIR-P)" t nil)

(autoload 'dired-do-find-marked-files "dired+/dired+" "\
Find marked files, displaying all of them simultaneously.
With a prefix ARG >= 0, just find files but do not select them.

If no prefix ARG, and variable `pop-up-frames' is non-nil, or
if prefix ARG < 0, then each file is displayed in a separate frame.

Otherwise (no prefix ARG and nil `pop-up-frames'), the current window
is split across all marked files, as evenly as possible.  Remaining
lines go to the bottom-most window.  The number of files that can be
displayed this way is restricted by the height of the current window
and `window-min-height'.

A prefix argument also behaves according to the ARG argument of
`dired-get-marked-files'.  In particular, `C-u C-u' operates on all
files in the Dired buffer.

To keep the Dired buffer displayed, type \\[split-window-vertically] first.
To display just the marked files, type \\[delete-other-windows] first.

\(fn &optional ARG)" t nil)

(autoload 'dired-up-directory "dired+/dired+" "\
Run Dired on parent directory of current directory.
Find the parent directory either in this buffer or another buffer.
Creates a buffer if necessary.

On MS Windows, if you already at the root directory, invoke
`diredp-w32-drives' to visit a navigable list of Windows drives.

\(fn &optional OTHER-WINDOW)" t nil)

(autoload 'dired-goto-file "dired+/dired+" "\
Go to line describing file FILE in this dired buffer.

\(fn FILE)" t nil)

(autoload 'dired-do-flagged-delete "dired+/dired+" "\
In Dired, delete the files flagged for deletion.
NOTE: This deletes flagged, not marked, files.
If arg NO-MSG is non-nil, no message is displayed.

User option `dired-recursive-deletes' controls whether deletion of
non-empty directories is allowed.

\(fn &optional NO-MSG)" t nil)

(autoload 'dired-do-delete "dired+/dired+" "\
Delete all marked (or next ARG) files.
NOTE: This deletes marked, not flagged, files.
`dired-recursive-deletes' controls whether deletion of
non-empty directories is allowed.

\(fn &optional ARG)" t nil)

(autoload 'dired-mark-files-regexp "dired+/dired+" "\
Mark all files matching REGEXP for use in later commands.
A prefix argument means to unmark them instead.
`.' and `..' are never marked.

REGEXP is an Emacs regexp, not a shell wildcard.  Thus, use `\\.o$' for
object files--just `.o' will mark more than you might think.

REGEXP is added to `regexp-search-ring', for regexp search.

\(fn REGEXP &optional MARKER-CHAR)" t nil)

(autoload 'diredp-capitalize "dired+/dired+" "\
Rename all marked (or next ARG) files by capitalizing them.
Makes the first char of the name uppercase and the others lowercase.

\(fn &optional ARG)" t nil)

(autoload 'diredp-delete-this-file "dired+/dired+" "\
In Dired, delete the file on the cursor line, upon confirmation.

\(fn)" t nil)

(autoload 'diredp-capitalize-this-file "dired+/dired+" "\
In Dired, rename the file on the cursor line by capitalizing it.
Makes the first char of the name uppercase and the others lowercase.

\(fn)" t nil)

(autoload 'diredp-downcase-this-file "dired+/dired+" "\
In Dired, rename the file on the cursor line to lower case.

\(fn)" t nil)

(autoload 'diredp-upcase-this-file "dired+/dired+" "\
In Dired, rename the file on the cursor line to upper case.

\(fn)" t nil)

(autoload 'diredp-rename-this-file "dired+/dired+" "\
In Dired, rename the file on the cursor line.

\(fn)" t nil)

(autoload 'diredp-copy-this-file "dired+/dired+" "\
In Dired, copy the file on the cursor line.

\(fn)" t nil)

(autoload 'diredp-relsymlink-this-file "dired+/dired+" "\
In Dired, make a relative symbolic link to file on cursor line.

\(fn)" t nil)

(autoload 'diredp-symlink-this-file "dired+/dired+" "\
In Dired, make a symbolic link to the file on the cursor line.

\(fn)" t nil)

(autoload 'diredp-hardlink-this-file "dired+/dired+" "\
In Dired, add a name (hard link) to the file on the cursor line.

\(fn)" t nil)

(autoload 'diredp-print-this-file "dired+/dired+" "\
In Dired, print the file on the cursor line.

\(fn)" t nil)

(autoload 'diredp-grep-this-file "dired+/dired+" "\
In Dired, grep the file on the cursor line.

\(fn)" t nil)

(autoload 'diredp-compress-this-file "dired+/dired+" "\
In Dired, compress or uncompress the file on the cursor line.

\(fn)" t nil)

(autoload 'diredp-shell-command-this-file "dired+/dired+" "\
In Dired, run a shell COMMAND on the file on the cursor line.

\(fn COMMAND)" t nil)

(autoload 'diredp-bookmark-this-file "dired+/dired+" "\
In Dired, bookmark the file on the cursor line.
See `diredp-do-bookmark'.

\(fn &optional PREFIX)" t nil)

(autoload 'diredp-tag-this-file "dired+/dired+" "\
In Dired, add some tags to the file on the cursor line.
You need library `bookmark+.el' to use this command.

\(fn TAGS &optional PREFIX)" t nil)

(autoload 'diredp-untag-this-file "dired+/dired+" "\
In Dired, remove some tags from the file on the cursor line.
With a prefix arg, remove all tags from the file.
You need library `bookmark+.el' to use this command.

\(fn TAGS &optional PREFIX ARG)" t nil)

(autoload 'diredp-remove-all-tags-this-file "dired+/dired+" "\
In Dired, remove all tags from this file.
You need library `bookmark+.el' to use this command.

\(fn &optional PREFIX MSGP)" t nil)

(autoload 'diredp-paste-add-tags-this-file "dired+/dired+" "\
In Dired, add previously copied tags to this file.
See `diredp-paste-add-tags'.
You need library `bookmark+.el' to use this command.

\(fn &optional PREFIX MSGP)" t nil)

(autoload 'diredp-paste-replace-tags-this-file "dired+/dired+" "\
In Dired, replace tags for this file with previously copied tags.
See `diredp-paste-replace-tags'.
You need library `bookmark+.el' to use this command.

\(fn &optional PREFIX MSGP)" t nil)

(autoload 'diredp-set-tag-value-this-file "dired+/dired+" "\
In Dired, Set value of TAG to VALUE for this file.
See `diredp-set-tag-value'.
You need library `bookmark+.el' to use this command.

\(fn TAG VALUE &optional PREFIX MSGP)" t nil)

(autoload 'diredp-copy-tags-this-file "dired+/dired+" "\
In Dired, copy the tags from this file, so you can paste them to another.
See `diredp-copy-tags'.
You need library `bookmark+.el' to use this command.

\(fn &optional PREFIX MSGP)" t nil)

(autoload 'diredp-mouse-copy-tags "dired+/dired+" "\
In Dired, copy the tags from this file, so you can paste them to another.
You need library `bookmark+.el' to use this command.

\(fn EVENT)" t nil)

(autoload 'diredp-describe-file "dired+/dired+" "\
In Dired, describe this file or directory.
You need library `help-fns+.el' to use this command.
If the file has an autofile bookmark and you use library `Bookmark+',
then show also the bookmark information (tags etc.).  In this case, a
prefix arg shows the internal form of the bookmark.

\(fn &optional INTERNAL-FORM-P)" t nil)

(autoload 'diredp-mouse-describe-file "dired+/dired+" "\
Describe the clicked file.
You need library `help-fns+.el' to use this command.
If the file has an autofile bookmark and you use library `Bookmark+',
then show also the bookmark information (tags etc.).  In this case, a
prefix arg shows the internal form of the bookmark.

\(fn EVENT &optional INTERNAL-FORM-P)" t nil)

(autoload 'diredp-byte-compile-this-file "dired+/dired+" "\
In Dired, byte compile the (Lisp source) file on the cursor line.

\(fn)" t nil)

(autoload 'diredp-load-this-file "dired+/dired+" "\
In Dired, load the file on the cursor line.

\(fn)" t nil)

(autoload 'diredp-chmod-this-file "dired+/dired+" "\
In Dired, change the mode of the file on the cursor line.

\(fn)" t nil)

(autoload 'dired-mark-sexp "dired+/dired+" "\
Mark files for which PREDICATE returns non-nil.
With non-nil prefix arg UNMARK-P, unmark those files instead.

PREDICATE is a lisp sexp that can refer to the following variables:

    `mode'   [string]  file permission bits, e.g. \"-rw-r--r--\"
    `nlink'  [integer] number of links to file
    `size'   [integer] file size in bytes
    `uid'    [string]  owner
    `gid'    [string]  group (If the gid is not displayed by `ls',
                       this will still be set (to the same as uid))
    `time'   [string]  the time that `ls' displays, e.g. \"Feb 12 14:17\"
    `name'   [string]  the name of the file
    `sym'    [string]  if file is a symbolic link, the linked-to name,
                       else \"\"
    `inode'  [integer] the inode of the file (only for `ls -i' output)
    `blks'   [integer] the size of the file for `ls -s' output
                       (ususally in blocks or, with `-k', in Kbytes)
Examples:
  Mark zero-length files: `(equal 0 size)'
  Mark files last modified on Feb 2: `(string-match \"Feb  2\" time)'
  Mark uncompiled Emacs Lisp files (`.el' file without a `.elc' file):
     First, dired just the source files: `dired *.el'.
     Then, use \\[dired-mark-sexp] with this sexp:
          (not (file-exists-p (concat name \"c\")))

\(fn PREDICATE &optional UNMARK-P)" t nil)

(autoload 'diredp-mark-region-files "dired+/dired+" "\
Mark all of the files in the current region (if it is active).
With non-nil prefix arg, unmark them instead.

\(fn &optional UNMARK-P)" t nil)

(autoload 'diredp-unmark-region-files "dired+/dired+" "\
Unmark all of the files in the current region (if it is active).
With non-nil prefix arg, mark them instead.

\(fn &optional MARK-P)" t nil)

(autoload 'diredp-flag-region-files-for-deletion "dired+/dired+" "\
Flag all of the files in the current region (if it is active) for deletion.

\(fn)" t nil)

(autoload 'diredp-toggle-marks-in-region "dired+/dired+" "\
Toggle marks in the region.

\(fn START END)" t nil)

(autoload 'diredp-mouse-3-menu "dired+/dired+" "\
Dired pop-up `mouse-3' menu, for files in selection or current line.

\(fn EVENT)" t nil)

(autoload 'diredp-find-file-other-frame "dired+/dired+" "\
In Dired, visit this file or directory in another frame.

\(fn)" t nil)

(autoload 'diredp-mouse-find-file-other-frame "dired+/dired+" "\
In Dired, visit file or directory clicked on in another frame.

\(fn EVENT)" t nil)

(autoload 'dired-mouse-find-file-other-window "dired+/dired+" "\
In Dired, visit the file or directory name you click on.

\(fn EVENT)" t nil)

(autoload 'diredp-mouse-find-file "dired+/dired+" "\
Replace dired in its window by this file or directory.

\(fn EVENT)" t nil)

(autoload 'diredp-mouse-view-file "dired+/dired+" "\
Examine this file in view mode, returning to dired when done.
When file is a directory, show it in this buffer if it is inserted;
otherwise, display it in another buffer.

\(fn EVENT)" t nil)

(autoload 'diredp-mouse-ediff "dired+/dired+" "\
Compare this file (pointed by mouse) with file FILE2 using `ediff'.
FILE2 defaults to this file as well.  If you enter just a directory
name for FILE2, then this file is compared with a file of the same
name in that directory.  FILE2 is the second file given to `ediff';
this file is the first given to it.

\(fn EVENT)" t nil)

(autoload 'diredp-mouse-diff "dired+/dired+" "\
Compare this file (pointed by mouse) with file FILE2 using `diff'.
FILE2 defaults to the file at the mark.  This file is the first file
given to `diff'.  With prefix arg, prompt for second arg SWITCHES,
which are options for `diff'.

\(fn EVENT &optional SWITCHES)" t nil)

(autoload 'diredp-mouse-backup-diff "dired+/dired+" "\
Diff this file with its backup file or vice versa.
Use the latest backup, if there are several numerical backups.
If this file is a backup, diff it with its original.
The backup file is the first file given to `diff'.
With prefix arg, prompt for SWITCHES which are the options for `diff'.

\(fn EVENT)" t nil)

(autoload 'diredp-mouse-mark "dired+/dired+" "\
In Dired, mark this file.
If on a subdir headerline, mark all its files except `.' and `..'.

Use \\[dired-unmark-all-files] to remove all marks,
and \\[dired-unmark] on a subdir to remove the marks in this subdir.

\(fn EVENT)" t nil)

(autoload 'diredp-mouse-unmark "dired+/dired+" "\
In Dired, unmark this file.
If looking at a subdir, unmark all its files except `.' and `..'.

\(fn EVENT)" t nil)

(autoload 'diredp-mouse-mark/unmark "dired+/dired+" "\
Mark/unmark file or directory at mouse EVENT.

\(fn EVENT)" t nil)

(autoload 'diredp-mouse-mark-region-files "dired+/dired+" "\
Mark files between point and the mouse.

\(fn EVENT)" t nil)

(autoload 'diredp-mouse-mark/unmark-mark-region-files "dired+/dired+" "\
Mark/unmark file or mark files in region.
If the file the cursor is on is marked, then mark all files between it
 and the line clicked (included).
Otherwise (cursor's file is unmarked):
 If the file clicked is marked, then unmark it.
 If it is unmarked, then mark it.

\(fn EVENT)" t nil)

(autoload 'diredp-mouse-flag-file-deletion "dired+/dired+" "\
In Dired, flag this file for deletion.
If on a subdir headerline, mark all its files except `.' and `..'.

\(fn EVENT)" t nil)

(autoload 'diredp-mouse-do-copy "dired+/dired+" "\
In Dired, copy this file.
This normally preserves the last-modified date when copying.

\(fn EVENT)" t nil)

(autoload 'diredp-mouse-do-rename "dired+/dired+" "\
In Dired, rename this file.

\(fn EVENT)" t nil)

(autoload 'diredp-mouse-upcase "dired+/dired+" "\
In Dired, rename this file to upper case.

\(fn EVENT)" t nil)

(autoload 'diredp-mouse-downcase "dired+/dired+" "\
In Dired, rename this file to lower case.

\(fn EVENT)" t nil)

(autoload 'diredp-mouse-do-delete "dired+/dired+" "\
In Dired, delete this file, upon confirmation.

\(fn EVENT)" t nil)

(autoload 'diredp-mouse-do-shell-command "dired+/dired+" "\
Run a shell COMMAND on this file.
If there is output, it goes to a separate buffer.

No automatic redisplay of dired buffers is attempted, as there's no
telling what files the command may have changed.  Type
\\[dired-do-redisplay] to redisplay.

The shell command has the top level directory as working directory, so
output files usually are created there instead of in a subdir.

\(fn EVENT)" t nil)

(autoload 'diredp-mouse-do-symlink "dired+/dired+" "\
Make symbolic link to this file.

\(fn EVENT)" t nil)

(autoload 'diredp-mouse-do-hardlink "dired+/dired+" "\
Make hard link (alias) to this file.

\(fn EVENT)" t nil)

(autoload 'diredp-mouse-do-print "dired+/dired+" "\
Print this file.
Uses the shell command coming from variables `lpr-command' and
`lpr-switches' as default.

\(fn EVENT)" t nil)

(autoload 'diredp-mouse-do-grep "dired+/dired+" "\
Run grep against this file.

\(fn EVENT)" t nil)

(autoload 'diredp-mouse-do-compress "dired+/dired+" "\
Compress or uncompress this file.

\(fn EVENT)" t nil)

(autoload 'diredp-mouse-do-byte-compile "dired+/dired+" "\
Byte compile this file.

\(fn EVENT)" t nil)

(autoload 'diredp-mouse-do-load "dired+/dired+" "\
Load this Emacs Lisp file.

\(fn EVENT)" t nil)

(autoload 'diredp-mouse-do-chmod "dired+/dired+" "\
Change the mode of this file.
This calls chmod, so symbolic modes like `g+w' are allowed.

\(fn EVENT)" t nil)

(autoload 'diredp-describe-mode "dired+/dired+" "\
Describe Dired mode, including Dired+ features.
This is `describe-mode' plus a description of Dired+ features.
For just the latter, use \\<dired-mode-map>`\\[diredp-dired-plus-help]'.

\(fn &optional BUFFER)" t nil)

(autoload 'diredp-dired-plus-help "dired+/dired+" "\
Describe Dired+.

\(fn)" t nil)

(autoload 'diredp-send-bug-report "dired+/dired+" "\
Send a bug report about a Dired+ problem.

\(fn)" t nil)

;;;***

;;;### (autoloads (drag-stuff-global-mode turn-off-drag-stuff-mode
;;;;;;  turn-on-drag-stuff-mode drag-stuff-mode) "drag-stuff/drag-stuff"
;;;;;;  "drag-stuff/drag-stuff.el" (20878 29189 70850 17000))
;;; Generated autoloads from drag-stuff/drag-stuff.el

(autoload 'drag-stuff-mode "drag-stuff/drag-stuff" "\
Drag stuff around.

\(fn &optional ARG)" t nil)

(autoload 'turn-on-drag-stuff-mode "drag-stuff/drag-stuff" "\
Turn on `drag-stuff-mode'.

\(fn)" t nil)

(autoload 'turn-off-drag-stuff-mode "drag-stuff/drag-stuff" "\
Turn off `drag-stuff-mode'.

\(fn)" t nil)

(defvar drag-stuff-global-mode nil "\
Non-nil if Drag-Stuff-Global mode is enabled.
See the command `drag-stuff-global-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `drag-stuff-global-mode'.")

(custom-autoload 'drag-stuff-global-mode "drag-stuff/drag-stuff" nil)

(autoload 'drag-stuff-global-mode "drag-stuff/drag-stuff" "\
Toggle Drag-Stuff mode in all buffers.
With prefix ARG, enable Drag-Stuff-Global mode if ARG is positive;
otherwise, disable it.  If called from Lisp, enable the mode if
ARG is omitted or nil.

Drag-Stuff mode is enabled in all buffers where
`turn-on-drag-stuff-mode' would do it.
See `drag-stuff-mode' for more information on Drag-Stuff mode.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads (ein:connect-to-default-notebook ein:connect-buffer-to-notebook
;;;;;;  ein:connect-to-notebook-buffer ein:connect-to-notebook ein:connect-to-notebook-command)
;;;;;;  "ein/lisp/ein-connect" "ein/lisp/ein-connect.el" (20770 4876
;;;;;;  106488 32000))
;;; Generated autoloads from ein/lisp/ein-connect.el

(autoload 'ein:connect-to-notebook-command "ein/lisp/ein-connect" "\
Connect to notebook.  When the prefix argument is given,
you can choose any notebook on your server including the ones
not yet opened.  Otherwise, already chose from already opened
notebooks.

\(fn &optional NOT-YET-OPENED)" t nil)

(autoload 'ein:connect-to-notebook "ein/lisp/ein-connect" "\
Connect any buffer to notebook and its kernel.

\(fn NBPATH &optional BUFFER NO-RECONNECTION)" t nil)

(autoload 'ein:connect-to-notebook-buffer "ein/lisp/ein-connect" "\
Connect any buffer to opened notebook and its kernel.

\(fn BUFFER-OR-NAME)" t nil)

(autoload 'ein:connect-buffer-to-notebook "ein/lisp/ein-connect" "\
Connect BUFFER to NOTEBOOK.

\(fn NOTEBOOK &optional BUFFER NO-RECONNECTION)" nil nil)

(autoload 'ein:connect-to-default-notebook "ein/lisp/ein-connect" "\
Connect to the default notebook specified by
`ein:connect-default-notebook'.  Set this to `python-mode-hook'
to automatically connect any python-mode buffer to the
notebook.

\(fn)" nil nil)

;;;***

;;;### (autoloads (ein:console-open) "ein/lisp/ein-console" "ein/lisp/ein-console.el"
;;;;;;  (20770 4876 106488 32000))
;;; Generated autoloads from ein/lisp/ein-console.el

(autoload 'ein:console-open "ein/lisp/ein-console" "\
Open IPython console.
To use this function, `ein:console-security-dir' and
`ein:console-args' must be set properly.
This function works best with the new python.el_ which is shipped
with Emacs 24.2 or later.  If you don't have it, this function
opens a \"plain\" command line interpreter (comint) buffer where
you cannot use fancy stuff such as TAB completion.
It should be possible to support python-mode.el.  Patches are welcome!

.. _python.el: https://github.com/fgallina/python.el

\(fn)" t nil)

;;;***

;;;### (autoloads (ein:dev-bug-report-template ein:dev-stop-debug
;;;;;;  ein:dev-start-debug ein:dev-insert-mode-map) "ein/lisp/ein-dev"
;;;;;;  "ein/lisp/ein-dev.el" (20878 23131 241548 720000))
;;; Generated autoloads from ein/lisp/ein-dev.el

(autoload 'ein:dev-insert-mode-map "ein/lisp/ein-dev" "\
Insert mode-map into rst document.  For README.rst.

\(fn MAP-STRING)" nil nil)

(autoload 'ein:dev-start-debug "ein/lisp/ein-dev" "\
Enable EIN debugging support.
When the prefix argument is given, debugging support for websocket
callback (`websocket-callback-debug-on-error') is enabled.

\(fn &optional WS-CALLBACK)" t nil)

(autoload 'ein:dev-stop-debug "ein/lisp/ein-dev" "\
Disable debugging support enabled by `ein:dev-start-debug'.

\(fn)" t nil)

(autoload 'ein:dev-bug-report-template "ein/lisp/ein-dev" "\
Open a buffer with bug report template.

\(fn)" t nil)

;;;***

;;;### (autoloads (helm-ein-notebook-buffers anything-ein-notebook-buffers
;;;;;;  helm-ein-kernel-history anything-ein-kernel-history) "ein/lisp/ein-helm"
;;;;;;  "ein/lisp/ein-helm.el" (20770 4876 106488 32000))
;;; Generated autoloads from ein/lisp/ein-helm.el

(autoload 'anything-ein-kernel-history "ein/lisp/ein-helm" "\
Search kernel execution history then insert the selected one.

\(fn)" t nil)

(autoload 'helm-ein-kernel-history "ein/lisp/ein-helm" "\
Search kernel execution history then insert the selected one.

\(fn)" t nil)

(autoload 'anything-ein-notebook-buffers "ein/lisp/ein-helm" "\
Choose opened notebook using anything.el interface.

\(fn)" t nil)

(autoload 'helm-ein-notebook-buffers "ein/lisp/ein-helm" "\
Choose opened notebook using helm interface.

\(fn)" t nil)

;;;***

;;;### (autoloads (ein:iexec-mode) "ein/lisp/ein-iexec" "ein/lisp/ein-iexec.el"
;;;;;;  (20770 4876 106488 32000))
;;; Generated autoloads from ein/lisp/ein-iexec.el

(autoload 'ein:iexec-mode "ein/lisp/ein-iexec" "\
Instant cell execution minor mode.
Code cell at point will be automatically executed after any
change in its input area.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads (ein:ipynb-mode) "ein/lisp/ein-ipynb-mode" "ein/lisp/ein-ipynb-mode.el"
;;;;;;  (20770 4876 106488 32000))
;;; Generated autoloads from ein/lisp/ein-ipynb-mode.el

(autoload 'ein:ipynb-mode "ein/lisp/ein-ipynb-mode" "\
A simple mode for ipynb file.

\(fn)" t nil)

(add-to-list 'auto-mode-alist '(".*\\.ipynb\\'" . ein:ipynb-mode))

;;;***

;;;### (autoloads (ein:jedi-setup ein:jedi-dot-complete ein:jedi-complete)
;;;;;;  "ein/lisp/ein-jedi" "ein/lisp/ein-jedi.el" (20770 4876 106488
;;;;;;  32000))
;;; Generated autoloads from ein/lisp/ein-jedi.el

(autoload 'ein:jedi-complete "ein/lisp/ein-jedi" "\
Run completion using candidates calculated by EIN and Jedi.

\(fn &key (expand ac-expand-on-auto-complete))" t nil)

(autoload 'ein:jedi-dot-complete "ein/lisp/ein-jedi" "\
Insert \".\" and run `ein:jedi-complete'.

\(fn)" t nil)

(autoload 'ein:jedi-setup "ein/lisp/ein-jedi" "\
Setup auto-completion using EIN and Jedi.el_ together.

Jedi.el_ is a Python auto-completion library for Emacs.
To use EIN and Jedi together, add the following in your Emacs setup.::

  (add-hook 'ein:connect-mode-hook 'ein:jedi-setup)

.. _Jedi.el: https://github.com/tkf/emacs-jedi

\(fn)" nil nil)

;;;***

;;;### (autoloads (ein:junk-rename ein:junk-new) "ein/lisp/ein-junk"
;;;;;;  "ein/lisp/ein-junk.el" (20770 4876 106488 32000))
;;; Generated autoloads from ein/lisp/ein-junk.el

(autoload 'ein:junk-new "ein/lisp/ein-junk" "\
Open a notebook to try random thing.
Notebook name is determined based on
`ein:junk-notebook-name-template'.

When prefix argument is given, it asks URL or port to use.

\(fn NAME URL-OR-PORT)" t nil)

(autoload 'ein:junk-rename "ein/lisp/ein-junk" "\
Rename the current notebook based on `ein:junk-notebook-name-template'
and save it immediately.

\(fn NAME)" t nil)

;;;***

;;;### (autoloads nil "ein/lisp/ein-kernel" "ein/lisp/ein-kernel.el"
;;;;;;  (20770 4876 106488 32000))
;;; Generated autoloads from ein/lisp/ein-kernel.el

(defalias 'ein:kernel-url-or-port 'ein:$kernel-url-or-port)

(defalias 'ein:kernel-id 'ein:$kernel-kernel-id)

;;;***

;;;### (autoloads (ein:notebook-multilang-mode) "ein/lisp/ein-multilang"
;;;;;;  "ein/lisp/ein-multilang.el" (20770 4876 106488 32000))
;;; Generated autoloads from ein/lisp/ein-multilang.el

(autoload 'ein:notebook-multilang-mode "ein/lisp/ein-multilang" "\
Notebook mode with multiple language fontification.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "ein/lisp/ein-notebook" "ein/lisp/ein-notebook.el"
;;;;;;  (20878 23131 241548 720000))
;;; Generated autoloads from ein/lisp/ein-notebook.el

(defalias 'ein:notebook-name 'ein:$notebook-notebook-name)

;;;***

;;;### (autoloads (ein:notebooklist-load ein:notebooklist-open-notebook-global
;;;;;;  ein:notebooklist-list-notebooks ein:notebooklist-new-notebook-with-name
;;;;;;  ein:notebooklist-new-notebook ein:notebooklist-reload ein:notebooklist-open)
;;;;;;  "ein/lisp/ein-notebooklist" "ein/lisp/ein-notebooklist.el"
;;;;;;  (20770 4876 106488 32000))
;;; Generated autoloads from ein/lisp/ein-notebooklist.el

(autoload 'ein:notebooklist-open "ein/lisp/ein-notebooklist" "\
Open notebook list buffer.

\(fn &optional URL-OR-PORT NO-POPUP)" t nil)

(autoload 'ein:notebooklist-reload "ein/lisp/ein-notebooklist" "\
Reload current Notebook list.

\(fn)" t nil)

(autoload 'ein:notebooklist-new-notebook "ein/lisp/ein-notebooklist" "\
Ask server to create a new notebook and open it in a new buffer.

\(fn &optional URL-OR-PORT CALLBACK CBARGS)" t nil)

(autoload 'ein:notebooklist-new-notebook-with-name "ein/lisp/ein-notebooklist" "\
Open new notebook and rename the notebook.

\(fn NAME &optional URL-OR-PORT)" t nil)

(autoload 'ein:notebooklist-list-notebooks "ein/lisp/ein-notebooklist" "\
Return a list of notebook path (NBPATH).  Each element NBPATH
is a string of the format \"URL-OR-PORT/NOTEBOOK-NAME\".

\(fn)" nil nil)

(autoload 'ein:notebooklist-open-notebook-global "ein/lisp/ein-notebooklist" "\
Choose notebook from all opened notebook list and open it.
Notebook is specified by a string NBPATH whose format is
\"URL-OR-PORT/NOTEBOOK-NAME\".

When used in lisp, CALLBACK and CBARGS are passed to `ein:notebook-open'.

\(fn NBPATH &optional CALLBACK CBARGS)" t nil)

(autoload 'ein:notebooklist-load "ein/lisp/ein-notebooklist" "\
Load notebook list but do not pop-up the notebook list buffer.

For example, if you want to load notebook list when Emacs starts,
add this in the Emacs initialization file::

  (add-to-hook 'after-init-hook 'ein:notebooklist-load)

or even this (if you want fast Emacs start-up)::

  ;; load notebook list if Emacs is idle for 3 sec after start-up
  (run-with-idle-timer 3 nil #'ein:notebooklist-load)

You should setup `ein:url-or-port' or `ein:default-url-or-port'
in order to make this code work.

See also:
`ein:connect-to-default-notebook', `ein:connect-default-notebook'.

\(fn &optional URL-OR-PORT)" nil nil)

;;;***

;;;### (autoloads (ein:org-store-link ein:org-open) "ein/lisp/ein-org"
;;;;;;  "ein/lisp/ein-org.el" (20770 4876 106488 32000))
;;; Generated autoloads from ein/lisp/ein-org.el

(autoload 'ein:org-open "ein/lisp/ein-org" "\
Open IPython notebook specified by LINK-PATH.
This function is to be used for FOLLOW function of
`org-add-link-type'.

\(fn LINK-PATH)" nil nil)

(autoload 'ein:org-store-link "ein/lisp/ein-org" "\
Call `org-store-link-props' when in notebook buffer.
This function is to be used for `org-store-link-functions'.

Examples::

  ipynb:(:url-or-port 8888 :name \"My_Notebook\")
  ipynb:(:url-or-port \"http://notebook-server\" :name \"My_Notebook\")

Note that spaces will be escaped in org files.

As how IPython development team supports multiple directory in
IPython notebook server is unclear, it is not easy to decide the
format for notebook links.  Current approach is to use
S-expression based (rather verbose) serialization, so that
extending link spec without loosing backward compatibility is
easier.  For the examples of link format in general, see Info
node `(org) External links' and Info node `(org) Search options'

\(fn)" nil nil)

(eval-after-load "org" '(progn (org-add-link-type "ipynb" 'ein:org-open) (add-hook 'org-store-link-functions 'ein:org-store-link)))

;;;***

;;;### (autoloads (ein:pseudo-console-mode) "ein/lisp/ein-pseudo-console"
;;;;;;  "ein/lisp/ein-pseudo-console.el" (20770 4876 106488 32000))
;;; Generated autoloads from ein/lisp/ein-pseudo-console.el

(autoload 'ein:pseudo-console-mode "ein/lisp/ein-pseudo-console" "\
Pseudo console mode.  Hit RET to execute code.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads (ein:shared-output-eval-string ein:shared-output-show-code-cell-at-point
;;;;;;  ein:shared-output-pop-to-buffer) "ein/lisp/ein-shared-output"
;;;;;;  "ein/lisp/ein-shared-output.el" (20878 23131 241548 720000))
;;; Generated autoloads from ein/lisp/ein-shared-output.el

(autoload 'ein:shared-output-pop-to-buffer "ein/lisp/ein-shared-output" "\
Open shared output buffer.

\(fn)" t nil)

(autoload 'ein:shared-output-show-code-cell-at-point "ein/lisp/ein-shared-output" "\
Show code cell at point in shared-output buffer.
It is useful when the output of the cell at point is truncated.
See also `ein:cell-max-num-outputs'.

\(fn)" t nil)

(autoload 'ein:shared-output-eval-string "ein/lisp/ein-shared-output" "\
Evaluate a piece of code.  Prompt will appear asking the code to run.
This is handy when you want to execute something quickly without
making a cell.  If the code outputs something, it will go to the
shared output buffer.  You can open the buffer by the command
`ein:shared-output-pop-to-buffer'.

.. ARGS is passed to `ein:kernel-execute'.  Unlike `ein:kernel-execute',
   `:silent' is `nil' by default.

\(fn CODE &optional POPUP VERBOSE KERNEL &rest ARGS)" t nil)

;;;***

;;;### (autoloads (ein:tb-show) "ein/lisp/ein-traceback" "ein/lisp/ein-traceback.el"
;;;;;;  (20770 4876 110488 143000))
;;; Generated autoloads from ein/lisp/ein-traceback.el

(autoload 'ein:tb-show "ein/lisp/ein-traceback" "\
Show full traceback in traceback viewer.

\(fn)" t nil)

;;;***

;;;### (autoloads (el-get-checksum el-get-make-recipes el-get-cd
;;;;;;  el-get-self-update el-get-update-all el-get-version) "el-get/el-get"
;;;;;;  "el-get/el-get.el" (20878 23054 430520 888000))
;;; Generated autoloads from el-get/el-get.el

(autoload 'el-get-version "el-get/el-get" "\
Message the current el-get version

\(fn)" t nil)

(autoload 'el-get-update-all "el-get/el-get" "\
Performs update of all installed packages.

\(fn &optional NO-PROMPT)" t nil)

(autoload 'el-get-self-update "el-get/el-get" "\
Update el-get itself.  The standard recipe takes care of reloading the code.

\(fn)" t nil)

(autoload 'el-get-cd "el-get/el-get" "\
Open dired in the package directory.

\(fn PACKAGE)" t nil)

(autoload 'el-get-make-recipes "el-get/el-get" "\
Loop over `el-get-sources' and write a recipe file for each
entry which is not a symbol and is not already a known recipe.

\(fn &optional DIR)" t nil)

(autoload 'el-get-checksum "el-get/el-get" "\
Compute the checksum of the given package, and put it in the kill-ring

\(fn PACKAGE &optional PACKAGE-STATUS-ALIST)" t nil)

;;;***

;;;### (autoloads (el-get-list-packages) "el-get/el-get-list-packages"
;;;;;;  "el-get/el-get-list-packages.el" (20878 23054 418520 415000))
;;; Generated autoloads from el-get/el-get-list-packages.el

(autoload 'el-get-list-packages "el-get/el-get-list-packages" "\
Display a list of packages.

\(fn)" t nil)

;;;***

;;;### (autoloads (julia julia-mode) "ess/lisp/ess-julia" "ess/lisp/ess-julia.el"
;;;;;;  (20878 23131 773569 702000))
;;; Generated autoloads from ess/lisp/ess-julia.el

(autoload 'julia-mode "ess/lisp/ess-julia" "\
Major mode for editing julia source.  See `ess-mode' for more help.

\(fn &optional PROC-NAME)" t nil)

(autoload 'julia "ess/lisp/ess-julia" "\
Call 'julia',
Optional prefix (C-u) allows to set command line arguments, such as
--load=<file>.  This should be OS agnostic.
If you have certain command line arguments that should always be passed
to julia, put them in the variable `inferior-julia-args'.

\(fn &optional START-ARGS)" t nil)

;;;***

;;;### (autoloads (Rd-mode) "ess/lisp/ess-rd" "ess/lisp/ess-rd.el"
;;;;;;  (20731 63572 21018 841000))
;;; Generated autoloads from ess/lisp/ess-rd.el

(autoload 'Rd-mode "ess/lisp/ess-rd" "\
Major mode for editing R documentation source files.

This mode makes it easier to write R documentation by helping with
indentation, doing some of the typing for you (with Abbrev mode) and by
showing keywords, strings, etc. in different faces (with Font Lock mode
on terminals that support it).

Type \\[list-abbrevs] to display the built-in abbrevs for Rd keywords.

Keybindings
===========

\\{Rd-mode-map}

Variables you can use to customize Rd mode
==========================================

`Rd-indent-level'
  Indentation of Rd code with respect to containing blocks.
  Default is 2.

Turning on Rd mode runs the hook `Rd-mode-hook'.

To automatically turn on the abbrev(iate) features, add the
following lines to your `.emacs' file:

  (add-hook 'Rd-mode-hook
            (lambda ()
              (abbrev-mode 1)))

\(fn)" t nil)

;;;***

;;;### (autoloads (mouse-me) "ess/lisp/mouseme" "ess/lisp/mouseme.el"
;;;;;;  (20731 63572 17018 31000))
;;; Generated autoloads from ess/lisp/mouseme.el

(autoload 'mouse-me "ess/lisp/mouseme" "\
Popup a menu of functions to run on selected string or region.

\(fn EVENT)" t nil)

;;;***

;;;### (autoloads (google-contacts) "google-contacts/google-contacts"
;;;;;;  "google-contacts/google-contacts.el" (20878 23134 349671
;;;;;;  301000))
;;; Generated autoloads from google-contacts/google-contacts.el

(autoload 'google-contacts "google-contacts/google-contacts" "\


\(fn &optional QUERY-STRING FORCE-REFRESH)" t nil)

;;;***

;;;### (autoloads (google-oauth-auth-and-store google-oauth-auth)
;;;;;;  "google-contacts/google-oauth" "google-contacts/google-oauth.el"
;;;;;;  (20878 23134 349671 301000))
;;; Generated autoloads from google-contacts/google-oauth.el

(autoload 'google-oauth-auth "google-contacts/google-oauth" "\
Request access to a resource.

\(fn RESOURCE-URL CLIENT-ID CLIENT-SECRET)" nil nil)

(autoload 'google-oauth-auth-and-store "google-contacts/google-oauth" "\
Request access to a Google resource and store it using `auth-source'.

\(fn RESOURCE-URL CLIENT-ID CLIENT-SECRET)" nil nil)

;;;***

;;;### (autoloads (haml-mode) "haml-mode/haml-mode" "haml-mode/haml-mode.el"
;;;;;;  (20878 23136 401752 236000))
;;; Generated autoloads from haml-mode/haml-mode.el

(autoload 'haml-mode "haml-mode/haml-mode" "\
Major mode for editing Haml files.

\\{haml-mode-map}

\(fn)" t nil)

(add-to-list 'auto-mode-alist '("\\.haml\\'" . haml-mode))

;;;***

;;;### (autoloads (ghc-core-mode ghc-core-create-core) "haskell-mode/ghc-core"
;;;;;;  "haskell-mode/ghc-core.el" (20878 23136 77739 456000))
;;; Generated autoloads from haskell-mode/ghc-core.el

(autoload 'ghc-core-create-core "haskell-mode/ghc-core" "\
Compiled and load the current buffer as tidy core

\(fn)" t nil)

(add-to-list 'auto-mode-alist '("\\.hcr\\'" . ghc-core-mode))

(autoload 'ghc-core-mode "haskell-mode/ghc-core" "\
Major mode for GHC Core files.

\(fn)" t nil)

;;;***

;;;### (autoloads (haskell-align-imports) "haskell-mode/haskell-align-imports"
;;;;;;  "haskell-mode/haskell-align-imports.el" (20723 11690 185197
;;;;;;  249000))
;;; Generated autoloads from haskell-mode/haskell-align-imports.el

(autoload 'haskell-align-imports "haskell-mode/haskell-align-imports" "\
Align all the imports in the buffer.

\(fn)" t nil)

;;;***

;;;### (autoloads (haskell-c-mode) "haskell-mode/haskell-c" "haskell-mode/haskell-c.el"
;;;;;;  (20723 11690 185197 249000))
;;; Generated autoloads from haskell-mode/haskell-c.el

(add-to-list 'auto-mode-alist '("\\.hsc\\'" . haskell-c-mode))

(autoload 'haskell-c-mode "haskell-mode/haskell-c" "\
Major mode for Haskell FFI files.

\(fn)" t nil)

;;;***

;;;### (autoloads (haskell-cabal-get-dir haskell-cabal-mode) "haskell-mode/haskell-cabal"
;;;;;;  "haskell-mode/haskell-cabal.el" (20878 23136 77739 456000))
;;; Generated autoloads from haskell-mode/haskell-cabal.el

(add-to-list 'auto-mode-alist '("\\.cabal\\'" . haskell-cabal-mode))

(autoload 'haskell-cabal-mode "haskell-mode/haskell-cabal" "\
Major mode for Cabal package description files.

\(fn)" t nil)

(autoload 'haskell-cabal-get-dir "haskell-mode/haskell-cabal" "\
Get the Cabal dir for a new project. Various ways of figuring this out,
   and indeed just prompting the user. Do them all.

\(fn)" nil nil)

;;;***

;;;### (autoloads (haskell-decl-scan-mode) "haskell-mode/haskell-decl-scan"
;;;;;;  "haskell-mode/haskell-decl-scan.el" (20878 23136 77739 456000))
;;; Generated autoloads from haskell-mode/haskell-decl-scan.el

(autoload 'haskell-decl-scan-mode "haskell-mode/haskell-decl-scan" "\
Minor mode for declaration scanning for Haskell mode.
Top-level declarations are scanned and listed in the menu item \"Declarations\".
Selecting an item from this menu will take point to the start of the
declaration.

\\[haskell-ds-forward-decl] and \\[haskell-ds-backward-decl] move forward and backward to the start of a declaration.

Under XEmacs, the following keys are also defined:

\\[fume-list-functions] lists the declarations of the current buffer,
\\[fume-prompt-function-goto] prompts for a declaration to move to, and
\\[fume-mouse-function-goto] moves to the declaration whose name is at point.

This may link with `haskell-doc' (only for Emacs currently).

For non-literate and LaTeX-style literate scripts, we assume the
common convention that top-level declarations start at the first
column.  For Bird-style literate scripts, we assume the common
convention that top-level declarations start at the third column,
ie. after \"> \".

Anything in `font-lock-comment-face' is not considered for a
declaration.  Therefore, using Haskell font locking with comments
coloured in `font-lock-comment-face' improves declaration scanning.

To turn on declaration scanning for all Haskell buffers, add this to
.emacs:

  (add-hook 'haskell-mode-hook 'turn-on-haskell-decl-scan)

To turn declaration scanning on for the current buffer, call
`turn-on-haskell-decl-scan'.

Literate Haskell scripts are supported: If the value of
`haskell-literate' (automatically set by the Haskell mode of
Moss&Thorn) is `bird', a Bird-style literate script is assumed.  If it
is nil or `tex', a non-literate or LaTeX-style literate script is
assumed, respectively.

Invokes `haskell-decl-scan-mode-hook'.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads (haskell-doc-show-type haskell-doc-mode) "haskell-mode/haskell-doc"
;;;;;;  "haskell-mode/haskell-doc.el" (20878 23136 81739 614000))
;;; Generated autoloads from haskell-mode/haskell-doc.el

(autoload 'haskell-doc-mode "haskell-mode/haskell-doc" "\
Enter `haskell-doc-mode' for showing fct types in the echo area.
See variable docstring.

\(fn &optional ARG)" t nil)

(defalias 'turn-on-haskell-doc-mode 'haskell-doc-mode)

(autoload 'haskell-doc-show-type "haskell-mode/haskell-doc" "\
Show the type of the function near point.
For the function under point, show the type in the echo area.
This information is extracted from the `haskell-doc-prelude-types' alist
of prelude functions and their types, or from the local functions in the
current buffer.

\(fn &optional SYM)" t nil)

;;;***

;;;### (autoloads (haskell-indent-mode) "haskell-mode/haskell-indent"
;;;;;;  "haskell-mode/haskell-indent.el" (20878 23136 81739 614000))
;;; Generated autoloads from haskell-mode/haskell-indent.el

(autoload 'haskell-indent-mode "haskell-mode/haskell-indent" "\
``Intelligent'' Haskell indentation mode.
This deals with the layout rule of Haskell.
\\[haskell-indent-cycle] starts the cycle which proposes new
possibilities as long as the TAB key is pressed.  Any other key
or mouse click terminates the cycle and is interpreted except for
RET which merely exits the cycle.
Other special keys are:
    \\[haskell-indent-insert-equal]
      inserts an =
    \\[haskell-indent-insert-guard]
      inserts an |
    \\[haskell-indent-insert-otherwise]
      inserts an | otherwise =
these functions also align the guards and rhs of the current definition
    \\[haskell-indent-insert-where]
      inserts a where keyword
    \\[haskell-indent-align-guards-and-rhs]
      aligns the guards and rhs of the region
    \\[haskell-indent-put-region-in-literate]
      makes the region a piece of literate code in a literate script

Invokes `haskell-indent-hook' if not nil.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads (haskell-indentation-mode) "haskell-mode/haskell-indentation"
;;;;;;  "haskell-mode/haskell-indentation.el" (20878 23136 81739
;;;;;;  614000))
;;; Generated autoloads from haskell-mode/haskell-indentation.el

(autoload 'haskell-indentation-mode "haskell-mode/haskell-indentation" "\
Haskell indentation mode that deals with the layout rule.
It rebinds RET, DEL and BACKSPACE, so that indentations can be
set and deleted as if they were real tabs.  It supports
autofill-mode.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads (haskell-interactive-mode-echo haskell-interactive-switch
;;;;;;  haskell-interactive-bring haskell-interactive-mode) "haskell-mode/haskell-interactive-mode"
;;;;;;  "haskell-mode/haskell-interactive-mode.el" (20878 23136 81739
;;;;;;  614000))
;;; Generated autoloads from haskell-mode/haskell-interactive-mode.el

(autoload 'haskell-interactive-mode "haskell-mode/haskell-interactive-mode" "\
Interactive mode for Haskell.

Key bindings:
\\{haskell-interactive-mode-map}

\(fn SESSION)" t nil)

(autoload 'haskell-interactive-bring "haskell-mode/haskell-interactive-mode" "\
Bring up the interactive mode for this session.

\(fn)" t nil)

(autoload 'haskell-interactive-switch "haskell-mode/haskell-interactive-mode" "\
Switch to the interactive mode for this session.

\(fn)" t nil)

(autoload 'haskell-interactive-mode-echo "haskell-mode/haskell-interactive-mode" "\
Echo a read only piece of text before the prompt.

\(fn SESSION MESSAGE)" nil nil)

;;;***

;;;### (autoloads (haskell-hayoo haskell-hoogle literate-haskell-mode
;;;;;;  haskell-mode) "haskell-mode/haskell-mode" "haskell-mode/haskell-mode.el"
;;;;;;  (20878 23136 81739 614000))
;;; Generated autoloads from haskell-mode/haskell-mode.el

(when load-file-name (add-to-list 'load-path (file-name-directory load-file-name)))

(autoload 'haskell-mode "haskell-mode/haskell-mode" "\
Major mode for editing Haskell programs.
Blank lines separate paragraphs, comments start with `-- '.
\\<haskell-mode-map>
Literate scripts are supported via `literate-haskell-mode'.
The variable `haskell-literate' indicates the style of the script in the
current buffer.  See the documentation on this variable for more details.

Modules can hook in via `haskell-mode-hook'.  The following modules
are supported with an `autoload' command:

   `haskell-decl-scan', Graeme E Moss
     Scans top-level declarations, and places them in a menu.

   `haskell-doc', Hans-Wolfgang Loidl
     Echoes types of functions or syntax of keywords when the cursor is idle.

   `haskell-indentation', Kristof Bastiaensen
     Intelligent semi-automatic indentation Mk2

   `haskell-indent', Guy Lapalme
     Intelligent semi-automatic indentation.

   `haskell-simple-indent', Graeme E Moss and Heribert Schuetz
     Simple indentation.

Module X is activated using the command `turn-on-X'.  For example,
`haskell-indent' is activated using `turn-on-haskell-indent'.
For more information on a module, see the help for its `X-mode'
function.  Some modules can be deactivated using `turn-off-X'.  (Note
that `haskell-doc' is irregular in using `turn-(on/off)-haskell-doc-mode'.)

Use `haskell-version' to find out what version this is.

Invokes `haskell-mode-hook'.

\(fn)" t nil)

(autoload 'literate-haskell-mode "haskell-mode/haskell-mode" "\
As `haskell-mode' but for literate scripts.

\(fn)" t nil)
(add-to-list 'auto-mode-alist        '("\\.\\(?:[gh]s\\|hi\\)\\'" . haskell-mode))
(add-to-list 'auto-mode-alist        '("\\.l[gh]s\\'" . literate-haskell-mode))
(add-to-list 'interpreter-mode-alist '("runghc" . haskell-mode))
(add-to-list 'interpreter-mode-alist '("runhaskell" . haskell-mode))

(autoload 'haskell-hoogle "haskell-mode/haskell-mode" "\
Do a Hoogle search for QUERY.

\(fn QUERY)" t nil)

(defalias 'hoogle 'haskell-hoogle)

(autoload 'haskell-hayoo "haskell-mode/haskell-mode" "\
Do a Hayoo search for QUERY.

\(fn QUERY)" t nil)

(defalias 'hayoo 'haskell-hayoo)

;;;***

;;;### (autoloads (haskell-move-nested) "haskell-mode/haskell-move-nested"
;;;;;;  "haskell-mode/haskell-move-nested.el" (20723 11690 189197
;;;;;;  419000))
;;; Generated autoloads from haskell-mode/haskell-move-nested.el

(autoload 'haskell-move-nested "haskell-mode/haskell-move-nested" "\


\(fn COLUMNS)" nil nil)

;;;***

;;;### (autoloads (haskell-navigate-imports-return haskell-navigate-imports-go
;;;;;;  haskell-navigate-imports) "haskell-mode/haskell-navigate-imports"
;;;;;;  "haskell-mode/haskell-navigate-imports.el" (20723 11690 189197
;;;;;;  419000))
;;; Generated autoloads from haskell-mode/haskell-navigate-imports.el

(autoload 'haskell-navigate-imports "haskell-mode/haskell-navigate-imports" "\
Cycle the Haskell import lines or return to point (with prefix arg).

\(fn &optional RETURN)" t nil)

(autoload 'haskell-navigate-imports-go "haskell-mode/haskell-navigate-imports" "\
Go to the first line of a list of consequtive import lines. Cycles.

\(fn)" t nil)

(autoload 'haskell-navigate-imports-return "haskell-mode/haskell-navigate-imports" "\
Return to the non-import point we were at before going to the module list.
   If we were originally at an import list, we can just cycle through easily.

\(fn)" t nil)

;;;***

;;;### (autoloads (haskell-process haskell-process-start haskell-process-cabal
;;;;;;  haskell-process-cabal-build haskell-process-load-or-reload
;;;;;;  haskell-process-reload-file haskell-process-load-file haskell-process-generate-tags)
;;;;;;  "haskell-mode/haskell-process" "haskell-mode/haskell-process.el"
;;;;;;  (20878 23136 81739 614000))
;;; Generated autoloads from haskell-mode/haskell-process.el

(autoload 'haskell-process-generate-tags "haskell-mode/haskell-process" "\
Regenerate the TAGS table.

\(fn &optional AND-THEN-FIND-THIS-TAG)" t nil)

(autoload 'haskell-process-load-file "haskell-mode/haskell-process" "\
Load the current buffer file.

\(fn)" t nil)

(autoload 'haskell-process-reload-file "haskell-mode/haskell-process" "\
Re-load the current buffer file.

\(fn)" t nil)

(autoload 'haskell-process-load-or-reload "haskell-mode/haskell-process" "\
Load or reload. Universal argument toggles which.

\(fn &optional TOGGLE)" t nil)

(autoload 'haskell-process-cabal-build "haskell-mode/haskell-process" "\
Build the Cabal project.

\(fn)" t nil)

(autoload 'haskell-process-cabal "haskell-mode/haskell-process" "\
Prompts for a Cabal command to run.

\(fn)" t nil)

(autoload 'haskell-process-start "haskell-mode/haskell-process" "\
Start the inferior Haskell process.

\(fn SESSION)" nil nil)

(autoload 'haskell-process "haskell-mode/haskell-process" "\
Get the current process from the current session.

\(fn)" nil nil)

;;;***

;;;### (autoloads (haskell-session-process haskell-session) "haskell-mode/haskell-session"
;;;;;;  "haskell-mode/haskell-session.el" (20878 23136 81739 614000))
;;; Generated autoloads from haskell-mode/haskell-session.el

(autoload 'haskell-session "haskell-mode/haskell-session" "\
Get the Haskell session, prompt if there isn't one or fail.

\(fn)" nil nil)

(autoload 'haskell-session-process "haskell-mode/haskell-session" "\
Get the session process.

\(fn S)" nil nil)

;;;***

;;;### (autoloads (haskell-show-parse haskell-show-parse-and-insert
;;;;;;  haskell-show-replace) "haskell-mode/haskell-show" "haskell-mode/haskell-show.el"
;;;;;;  (20723 11690 189197 419000))
;;; Generated autoloads from haskell-mode/haskell-show.el

(autoload 'haskell-show-replace "haskell-mode/haskell-show" "\
Replace the given region containing a Show value with a pretty
  printed collapsible version.

\(fn START END)" nil nil)

(autoload 'haskell-show-parse-and-insert "haskell-mode/haskell-show" "\
Parse a `string' containing a Show instance value and insert
  it pretty printed into the current buffer.

\(fn GIVEN)" nil nil)

(autoload 'haskell-show-parse "haskell-mode/haskell-show" "\
Parse the given input into a tree.

\(fn GIVEN)" nil nil)

;;;***

;;;### (autoloads (haskell-sort-imports) "haskell-mode/haskell-sort-imports"
;;;;;;  "haskell-mode/haskell-sort-imports.el" (20723 11690 189197
;;;;;;  419000))
;;; Generated autoloads from haskell-mode/haskell-sort-imports.el

(autoload 'haskell-sort-imports "haskell-mode/haskell-sort-imports" "\
Sort the import list at the point.

\(fn)" t nil)

;;;***

;;;### (autoloads (haskell-is-prefix-of haskell-string-take haskell-trim)
;;;;;;  "haskell-mode/haskell-string" "haskell-mode/haskell-string.el"
;;;;;;  (20723 11690 189197 419000))
;;; Generated autoloads from haskell-mode/haskell-string.el

(autoload 'haskell-trim "haskell-mode/haskell-string" "\


\(fn STRING)" nil nil)

(autoload 'haskell-string-take "haskell-mode/haskell-string" "\
Take n chars from string.

\(fn STRING N)" nil nil)

(autoload 'haskell-is-prefix-of "haskell-mode/haskell-string" "\
Is x string a prefix of y string?

\(fn X Y)" nil nil)

;;;***

;;;### (autoloads (inferior-haskell-find-haddock inferior-haskell-find-definition
;;;;;;  inferior-haskell-info inferior-haskell-kind inferior-haskell-type
;;;;;;  inferior-haskell-send-decl inferior-haskell-load-and-run
;;;;;;  inferior-haskell-load-file switch-to-haskell) "haskell-mode/inf-haskell"
;;;;;;  "haskell-mode/inf-haskell.el" (20878 23136 81739 614000))
;;; Generated autoloads from haskell-mode/inf-haskell.el

(defalias 'run-haskell 'switch-to-haskell)

(autoload 'switch-to-haskell "haskell-mode/inf-haskell" "\
Show the inferior-haskell buffer.  Start the process if needed.

\(fn &optional ARG)" t nil)

(autoload 'inferior-haskell-load-file "haskell-mode/inf-haskell" "\
Pass the current buffer's file to the inferior haskell process.
If prefix arg \\[universal-argument] is given, just reload the previous file.

\(fn &optional RELOAD)" t nil)

(autoload 'inferior-haskell-load-and-run "haskell-mode/inf-haskell" "\
Pass the current buffer's file to haskell and then run a COMMAND.

\(fn COMMAND)" t nil)

(autoload 'inferior-haskell-send-decl "haskell-mode/inf-haskell" "\
Send current declaration to inferior-haskell process.

\(fn)" t nil)

(autoload 'inferior-haskell-type "haskell-mode/inf-haskell" "\
Query the haskell process for the type of the given expression.
If optional argument `insert-value' is non-nil, insert the type above point
in the buffer.  This can be done interactively with the \\[universal-argument] prefix.
The returned info is cached for reuse by `haskell-doc-mode'.

\(fn EXPR &optional INSERT-VALUE)" t nil)

(autoload 'inferior-haskell-kind "haskell-mode/inf-haskell" "\
Query the haskell process for the kind of the given expression.

\(fn TYPE)" t nil)

(autoload 'inferior-haskell-info "haskell-mode/inf-haskell" "\
Query the haskell process for the info of the given expression.

\(fn SYM)" t nil)

(autoload 'inferior-haskell-find-definition "haskell-mode/inf-haskell" "\
Attempt to locate and jump to the definition of the given expression.

\(fn SYM)" t nil)

(autoload 'inferior-haskell-find-haddock "haskell-mode/inf-haskell" "\
Find and open the Haddock documentation of SYM.
Make sure to load the file into GHCi or Hugs first by using C-c C-l.
Only works for functions in a package installed with ghc-pkg, or
whatever the value of `haskell-package-manager-name' is.

This function needs to find which package a given module belongs
to.  In order to do this, it computes a module-to-package lookup
alist, which is expensive to compute (it takes upwards of five
seconds with more than about thirty installed packages).  As a
result, we cache it across sessions using the cache file
referenced by `inferior-haskell-module-alist-file'. We test to
see if this is newer than `haskell-package-conf-file' every time
we load it.

\(fn SYM)" t nil)

;;;***

;;;### (autoloads (helm-follow-mode helm-kill-selection-and-quit
;;;;;;  helm-yank-selection helm-prev-visible-mark helm-next-visible-mark
;;;;;;  helm-display-all-visible-marks helm-toggle-all-marks helm-unmark-all
;;;;;;  helm-mark-all helm-toggle-visible-mark helm-reposition-window-other-window
;;;;;;  helm-recenter-top-bottom-other-window helm-scroll-other-window-down
;;;;;;  helm-scroll-other-window helm-execute-persistent-action helm-select-2nd-action-or-end-of-line
;;;;;;  helm-select-4th-action helm-select-3rd-action helm-select-2nd-action
;;;;;;  helm-swap-windows helm-enlarge-window helm-narrow-window
;;;;;;  helm-toggle-resplit-window helm-delete-minibuffer-contents
;;;;;;  helm-delete-current-selection helm-debug-output helm-keyboard-quit
;;;;;;  helm-exit-minibuffer helm-confirm-and-exit-minibuffer helm-next-source
;;;;;;  helm-previous-source helm-end-of-buffer helm-beginning-of-buffer
;;;;;;  helm-next-page helm-previous-page helm-next-line helm-previous-line
;;;;;;  helm-select-action helm-force-update helm-toggle-suspend-update
;;;;;;  helm-other-buffer helm-resume-previous-session-after-quit
;;;;;;  helm-resume helm-open-last-log helm-define-multi-key) "helm/helm"
;;;;;;  "helm/helm.el" (20878 23136 313748 765000))
;;; Generated autoloads from helm/helm.el

(autoload 'helm-define-multi-key "helm/helm" "\
In KEYMAP, define key sequence KEY for function list FUNCTIONS.
Each function run sequentialy each time the key KEY is pressed.
If DELAY is specified switch back to initial function of FUNCTIONS list
after DELAY seconds.
The functions in FUNCTIONS list are functions with no args.
e.g
  (defun foo ()
    (message \"Run foo\"))
  (defun bar ()
    (message \"Run bar\"))
  (defun baz ()
    (message \"Run baz\"))

\(helm-define-multi-key global-map \"<f5> q\" '(foo bar baz) 2)

Each time \"<f5> q\" is pressed the next function is executed, if you wait
More than 2 seconds, next hit will run again the first function and so on.

\(fn KEYMAP KEY FUNCTIONS &optional DELAY)" nil nil)

(autoload 'helm-open-last-log "helm/helm" "\
Open helm log file of last helm session.
If `helm-last-log-file' is nil, switch to `helm-debug-buffer' .

\(fn)" t nil)

(autoload 'helm-resume "helm/helm" "\
Resurrect previously invoked `helm'.
Called with a prefix arg, allow choosing among all existing
helm buffers.  i.e choose among various helm sessions.
Called from lisp, you can specify a buffer-name as a string with ARG.

\(fn ARG)" t nil)

(autoload 'helm-resume-previous-session-after-quit "helm/helm" "\
Resume previous helm session within running helm.

\(fn ARG)" t nil)

(autoload 'helm-other-buffer "helm/helm" "\
Simplified interface of `helm' with other `helm-buffer'.
Call `helm' with only ANY-SOURCES and ANY-BUFFER as args.

\(fn ANY-SOURCES ANY-BUFFER)" nil nil)

(autoload 'helm-toggle-suspend-update "helm/helm" "\
Enable or disable update of display in helm.
This can be useful for e.g writing quietly a complex regexp.

\(fn)" t nil)

(autoload 'helm-force-update "helm/helm" "\
Force recalculation and update of candidates.
The difference with `helm-update' is this function is reevaling
the `init' and `update' attributes functions when present
before updating candidates according to pattern i.e calling `helm-update'.
Selection is preserved to current candidate or moved to PRESELECT
if specified.

\(fn &optional PRESELECT)" t nil)

(autoload 'helm-select-action "helm/helm" "\
Select an action for the currently selected candidate.
If action buffer is selected, back to the helm buffer.

\(fn)" t nil)

(autoload 'helm-previous-line "helm/helm" "\
Move selection to the previous line.

\(fn)" t nil)

(autoload 'helm-next-line "helm/helm" "\
Move selection to the next line.

\(fn)" t nil)

(autoload 'helm-previous-page "helm/helm" "\
Move selection back with a pageful.

\(fn)" t nil)

(autoload 'helm-next-page "helm/helm" "\
Move selection forward with a pageful.

\(fn)" t nil)

(autoload 'helm-beginning-of-buffer "helm/helm" "\
Move selection at the top.

\(fn)" t nil)

(autoload 'helm-end-of-buffer "helm/helm" "\
Move selection at the bottom.

\(fn)" t nil)

(autoload 'helm-previous-source "helm/helm" "\
Move selection to the previous source.

\(fn)" t nil)

(autoload 'helm-next-source "helm/helm" "\
Move selection to the next source.

\(fn)" t nil)

(autoload 'helm-confirm-and-exit-minibuffer "helm/helm" "\
Maybe ask for confirmation when exiting helm.
It is similar to `minibuffer-complete-and-exit' adapted to helm.
If `minibuffer-completion-confirm' value is 'confirm,
send in minibuffer confirm message and exit on next hit.
If `minibuffer-completion-confirm' value is t,
don't exit and send message 'no match'.

\(fn)" t nil)

(autoload 'helm-exit-minibuffer "helm/helm" "\
Select the current candidate by exiting the minibuffer.

\(fn)" t nil)

(autoload 'helm-keyboard-quit "helm/helm" "\
Quit minibuffer in helm.
If action buffer is displayed, kill it.

\(fn)" t nil)

(autoload 'helm-debug-output "helm/helm" "\
Show all helm-related variables at this time.

\(fn)" t nil)

(autoload 'helm-delete-current-selection "helm/helm" "\
Delete the currently selected item.

\(fn)" t nil)

(autoload 'helm-delete-minibuffer-contents "helm/helm" "\
Delete minibuffer contents.
When called with a prefix arg or when
`helm-delete-minibuffer-contents-from-point' is non--nil,
delete minibuffer contents from point instead of deleting all.

\(fn &optional ARG)" t nil)

(autoload 'helm-toggle-resplit-window "helm/helm" "\
Toggle resplit helm window, vertically or horizontally.

\(fn)" t nil)

(autoload 'helm-narrow-window "helm/helm" "\
Narrow helm window.

\(fn)" t nil)

(autoload 'helm-enlarge-window "helm/helm" "\
Enlarge helm window.

\(fn)" t nil)

(autoload 'helm-swap-windows "helm/helm" "\
Swap window holding `helm-buffer' with other window.

\(fn)" t nil)

(autoload 'helm-select-2nd-action "helm/helm" "\
Select the 2nd action for the currently selected candidate.

\(fn)" t nil)

(autoload 'helm-select-3rd-action "helm/helm" "\
Select the 3rd action for the currently selected candidate.

\(fn)" t nil)

(autoload 'helm-select-4th-action "helm/helm" "\
Select the 4th action for the currently selected candidate.

\(fn)" t nil)

(autoload 'helm-select-2nd-action-or-end-of-line "helm/helm" "\
Select the 2nd action for the currently selected candidate.
This happen when point is at the end of minibuffer.
Otherwise goto the end of minibuffer.

\(fn)" t nil)

(autoload 'helm-execute-persistent-action "helm/helm" "\
Perform the associated action ATTR without quitting helm.
ATTR default is 'persistent-action', but it can be anything else.
In this case you have to add this new attribute to your source.

When `helm-full-frame' or SPLIT-ONEWINDOW are non--nil,
and `helm-buffer' is displayed in only one window,
the helm window is splitted to display
`helm-select-persistent-action-window' in other window
and keep its visibility.

\(fn &optional (attr (quote persistent-action)) SPLIT-ONEWINDOW)" t nil)

(autoload 'helm-scroll-other-window "helm/helm" "\
Scroll other window (not *Helm* window) upward.

\(fn)" t nil)

(autoload 'helm-scroll-other-window-down "helm/helm" "\
Scroll other window (not *Helm* window) downward.

\(fn)" t nil)

(autoload 'helm-recenter-top-bottom-other-window "helm/helm" "\
`recenter-top-bottom' in other window (not *Helm* window).

\(fn)" t nil)

(autoload 'helm-reposition-window-other-window "helm/helm" "\
`helm-reposition-window' in other window (not *Helm* window).

\(fn)" t nil)

(autoload 'helm-toggle-visible-mark "helm/helm" "\
Toggle helm visible mark at point.

\(fn)" t nil)

(autoload 'helm-mark-all "helm/helm" "\
Mark all visible unmarked candidates in current source.

\(fn)" t nil)

(autoload 'helm-unmark-all "helm/helm" "\
Unmark all candidates in all sources of current helm session.

\(fn)" t nil)

(autoload 'helm-toggle-all-marks "helm/helm" "\
Toggle all marks.
Mark all visible candidates of current source or unmark all candidates
visible or invisible in all sources of current helm session

\(fn)" t nil)

(autoload 'helm-display-all-visible-marks "helm/helm" "\
Show all `helm' visible marks strings.
Only useful for debugging.

\(fn)" t nil)

(autoload 'helm-next-visible-mark "helm/helm" "\
Move next helm visible mark.
If PREV is non-nil move to precedent.

\(fn &optional PREV)" t nil)

(autoload 'helm-prev-visible-mark "helm/helm" "\
Move previous helm visible mark.

\(fn)" t nil)

(autoload 'helm-yank-selection "helm/helm" "\
Set minibuffer contents to current display selection.
With a prefix arg set to real value of current selection.

\(fn ARG)" t nil)

(autoload 'helm-kill-selection-and-quit "helm/helm" "\
Store current selection to kill ring.
With a prefix arg set to real value of current selection.

\(fn ARG)" t nil)

(autoload 'helm-follow-mode "helm/helm" "\
Execute persistent action everytime the cursor is moved when enabled.
The mode is enabled for the current source only, you will have to turn it
on again when you go to next source if you want it there also.
This mode can be enabled or disabled interactively at anytime during
helm session or enabled specifically by source by adding the `follow'
attribute to this source.
Even when the attribute `follow' exists in source, it is still possible
to disable/enable this mode interactively.
Note that when you disable it interactively and `follow' attribute exists,
`helm-follow-mode' will be disabled on next helm session even if `follow'
attribute is specified in source. To avoid this set your `follow' attribute
in source in `helm-before-initialize-hook'.

e.g:

\(add-hook 'helm-before-initialize-hook
          #'(lambda () (helm-attrset 'follow 1 helm-source-buffers-list)))

This will enable `helm-follow-mode' automatically in `helm-source-buffers-list'.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads (helm-reset-adaptative-history) "helm/helm-adaptative"
;;;;;;  "helm/helm-adaptative.el" (20878 23136 261746 714000))
;;; Generated autoloads from helm/helm-adaptative.el

(autoload 'helm-reset-adaptative-history "helm/helm-adaptative" "\
Delete all `helm-adaptive-history' and his file.
Useful when you have a old or corrupted `helm-adaptive-history-file'.

\(fn)" t nil)

;;;***

;;;### (autoloads (helm-apt helm-apt-show-all helm-apt-show-only-deinstalled
;;;;;;  helm-apt-show-only-not-installed helm-apt-show-only-installed)
;;;;;;  "helm/helm-apt" "helm/helm-apt.el" (20878 23136 261746 714000))
;;; Generated autoloads from helm/helm-apt.el

(autoload 'helm-apt-show-only-installed "helm/helm-apt" "\


\(fn)" t nil)

(autoload 'helm-apt-show-only-not-installed "helm/helm-apt" "\


\(fn)" t nil)

(autoload 'helm-apt-show-only-deinstalled "helm/helm-apt" "\


\(fn)" t nil)

(autoload 'helm-apt-show-all "helm/helm-apt" "\


\(fn)" t nil)

(autoload 'helm-apt "helm/helm-apt" "\
Preconfigured `helm' : frontend of APT package manager.
With a prefix arg reload cache.

\(fn ARG)" t nil)

;;;***

;;;### (autoloads (helm-bbdb) "helm/helm-bbdb" "helm/helm-bbdb.el"
;;;;;;  (20878 23136 265746 871000))
;;; Generated autoloads from helm/helm-bbdb.el

(autoload 'helm-bbdb "helm/helm-bbdb" "\
Preconfigured `helm' for BBDB.

Needs BBDB.

http://bbdb.sourceforge.net/

\(fn)" t nil)

;;;***

;;;### (autoloads (helm-bookmark-ext helm-bmkext-run-edit) "helm/helm-bmkext"
;;;;;;  "helm/helm-bmkext.el" (20878 23136 265746 871000))
;;; Generated autoloads from helm/helm-bmkext.el

(autoload 'helm-bmkext-run-edit "helm/helm-bmkext" "\
Run `bmkext-edit-bookmark' from keyboard.

\(fn)" t nil)

(autoload 'helm-bookmark-ext "helm/helm-bmkext" "\
Preconfigured `helm' for bookmark-extensions sources.
Needs bookmark-ext.el:
<http://mercurial.intuxication.org/hg/emacs-bookmark-extension>.
Contain also `helm-source-google-suggest'.

\(fn)" t nil)

;;;***

;;;### (autoloads (helm-pp-bookmarks helm-bookmarks helm-bookmark-run-delete
;;;;;;  helm-bookmark-run-jump-other-window helm-bookmark-toggle-filename)
;;;;;;  "helm/helm-bookmark" "helm/helm-bookmark.el" (20878 23136
;;;;;;  265746 871000))
;;; Generated autoloads from helm/helm-bookmark.el

(autoload 'helm-bookmark-toggle-filename "helm/helm-bookmark" "\
Toggle bookmark location visibility.

\(fn)" t nil)

(autoload 'helm-bookmark-run-jump-other-window "helm/helm-bookmark" "\
Jump to bookmark from keyboard.

\(fn)" t nil)

(autoload 'helm-bookmark-run-delete "helm/helm-bookmark" "\
Delete bookmark from keyboard.

\(fn)" t nil)

(autoload 'helm-bookmarks "helm/helm-bookmark" "\
Preconfigured `helm' for bookmarks.

\(fn)" t nil)

(autoload 'helm-pp-bookmarks "helm/helm-bookmark" "\
Preconfigured `helm' for bookmarks (pretty-printed).

\(fn)" t nil)

;;;***

;;;### (autoloads (helm-buffers-list helm-buffers-run-multi-occur
;;;;;;  helm-buffer-run-ediff helm-buffer-switch-to-elscreen helm-buffer-switch-other-frame
;;;;;;  helm-buffer-switch-other-window helm-buffer-run-query-replace
;;;;;;  helm-buffer-run-query-replace-regexp helm-buffer-run-zgrep
;;;;;;  helm-buffer-run-grep helm-buffer-run-kill-buffers helm-buffer-save-persistent
;;;;;;  helm-buffer-revert-persistent helm-buffer-diff-persistent)
;;;;;;  "helm/helm-buffers" "helm/helm-buffers.el" (20878 23136 265746
;;;;;;  871000))
;;; Generated autoloads from helm/helm-buffers.el

(autoload 'helm-buffer-diff-persistent "helm/helm-buffers" "\
Toggle diff buffer without quitting helm.

\(fn)" t nil)

(autoload 'helm-buffer-revert-persistent "helm/helm-buffers" "\
Revert buffer without quitting helm.

\(fn)" t nil)

(autoload 'helm-buffer-save-persistent "helm/helm-buffers" "\
Save buffer without quitting helm.

\(fn)" t nil)

(autoload 'helm-buffer-run-kill-buffers "helm/helm-buffers" "\
Run kill buffer action from `helm-source-buffers-list'.

\(fn)" t nil)

(autoload 'helm-buffer-run-grep "helm/helm-buffers" "\
Run Grep action from `helm-source-buffers-list'.

\(fn)" t nil)

(autoload 'helm-buffer-run-zgrep "helm/helm-buffers" "\
Run Grep action from `helm-source-buffers-list'.

\(fn)" t nil)

(autoload 'helm-buffer-run-query-replace-regexp "helm/helm-buffers" "\
Run Query replace regexp action from `helm-source-buffers-list'.

\(fn)" t nil)

(autoload 'helm-buffer-run-query-replace "helm/helm-buffers" "\
Run Query replace action from `helm-source-buffers-list'.

\(fn)" t nil)

(autoload 'helm-buffer-switch-other-window "helm/helm-buffers" "\
Run switch to other window action from `helm-source-buffers-list'.

\(fn)" t nil)

(autoload 'helm-buffer-switch-other-frame "helm/helm-buffers" "\
Run switch to other frame action from `helm-source-buffers-list'.

\(fn)" t nil)

(autoload 'helm-buffer-switch-to-elscreen "helm/helm-buffers" "\
Run switch to elscreen  action from `helm-source-buffers-list'.

\(fn)" t nil)

(autoload 'helm-buffer-run-ediff "helm/helm-buffers" "\
Run ediff action from `helm-source-buffers-list'.

\(fn)" t nil)

(autoload 'helm-buffers-run-multi-occur "helm/helm-buffers" "\
Run `helm-multi-occur-as-action' by key.

\(fn)" t nil)

(autoload 'helm-buffers-list "helm/helm-buffers" "\
Preconfigured `helm' to list buffers.
It is an enhanced version of `helm-for-buffers'.

\(fn)" t nil)

;;;***

;;;### (autoloads (helm-simple-call-tree) "helm/helm-call-tree" "helm/helm-call-tree.el"
;;;;;;  (20878 23136 265746 871000))
;;; Generated autoloads from helm/helm-call-tree.el

(autoload 'helm-simple-call-tree "helm/helm-call-tree" "\
Preconfigured `helm' for simple-call-tree. List function relationships.

Needs simple-call-tree.el.
http://www.emacswiki.org/cgi-bin/wiki/download/simple-call-tree.el

\(fn)" t nil)

;;;***

;;;### (autoloads (helm-colors) "helm/helm-color" "helm/helm-color.el"
;;;;;;  (20878 23136 265746 871000))
;;; Generated autoloads from helm/helm-color.el

(autoload 'helm-colors "helm/helm-color" "\
Preconfigured `helm' for color.

\(fn)" t nil)

;;;***

;;;### (autoloads (helm-M-x) "helm/helm-command" "helm/helm-command.el"
;;;;;;  (20878 23136 265746 871000))
;;; Generated autoloads from helm/helm-command.el

(autoload 'helm-M-x "helm/helm-command" "\
Preconfigured `helm' for Emacs commands.
It is `helm' replacement of regular `M-x' `execute-extended-command'.

\(fn)" t nil)

;;;***

;;;### (autoloads (helm-configuration) "helm/helm-config" "helm/helm-config.el"
;;;;;;  (20878 23136 265746 871000))
;;; Generated autoloads from helm/helm-config.el

(autoload 'helm-configuration "helm/helm-config" "\
Customize `helm'.

\(fn)" t nil)

;;;***

;;;### (autoloads (helm-complex-command-history helm-timers helm-manage-advice
;;;;;;  helm-apropos helm-lisp-completion-or-file-name-at-point helm-lisp-indent
;;;;;;  helm-complete-file-name-at-point helm-lisp-completion-at-point)
;;;;;;  "helm/helm-elisp" "helm/helm-elisp.el" (20878 23136 265746
;;;;;;  871000))
;;; Generated autoloads from helm/helm-elisp.el

(autoload 'helm-lisp-completion-at-point "helm/helm-elisp" "\
Helm lisp symbol completion at point.

\(fn)" t nil)

(autoload 'helm-complete-file-name-at-point "helm/helm-elisp" "\
Complete file name at point.

\(fn &optional FORCE)" t nil)

(autoload 'helm-lisp-indent "helm/helm-elisp" "\


\(fn)" t nil)

(autoload 'helm-lisp-completion-or-file-name-at-point "helm/helm-elisp" "\
Complete lisp symbol or filename at point.
Filename completion happen if string start after or between a double quote.

\(fn)" t nil)

(autoload 'helm-apropos "helm/helm-elisp" "\
Preconfigured helm to describe commands, functions, variables and faces.

\(fn)" t nil)

(autoload 'helm-manage-advice "helm/helm-elisp" "\
Preconfigured `helm' to disable/enable function advices.

\(fn)" t nil)

(autoload 'helm-timers "helm/helm-elisp" "\
Preconfigured `helm' for timers.

\(fn)" t nil)

(autoload 'helm-complex-command-history "helm/helm-elisp" "\


\(fn)" t nil)

;;;***

;;;### (autoloads (helm-elscreen) "helm/helm-elscreen" "helm/helm-elscreen.el"
;;;;;;  (20878 23136 265746 871000))
;;; Generated autoloads from helm/helm-elscreen.el

(autoload 'helm-elscreen "helm/helm-elscreen" "\
Preconfigured helm to list elscreen.

\(fn)" t nil)

;;;***

;;;### (autoloads (helm-emms) "helm/helm-emms" "helm/helm-emms.el"
;;;;;;  (20878 23136 265746 871000))
;;; Generated autoloads from helm/helm-emms.el

(autoload 'helm-emms "helm/helm-emms" "\
Preconfigured `helm' for emms sources.

\(fn)" t nil)

;;;***

;;;### (autoloads (helm-eshell-history helm-esh-pcomplete) "helm/helm-eshell"
;;;;;;  "helm/helm-eshell.el" (20878 23136 265746 871000))
;;; Generated autoloads from helm/helm-eshell.el

(autoload 'helm-esh-pcomplete "helm/helm-eshell" "\
Preconfigured helm to provide helm completion in eshell.

\(fn)" t nil)

(autoload 'helm-eshell-history "helm/helm-eshell" "\
Preconfigured helm for eshell history.

\(fn)" t nil)

;;;***

;;;### (autoloads (helm-calcul-expression helm-eval-expression-with-eldoc
;;;;;;  helm-eval-expression) "helm/helm-eval" "helm/helm-eval.el"
;;;;;;  (20878 23136 265746 871000))
;;; Generated autoloads from helm/helm-eval.el

(autoload 'helm-eval-expression "helm/helm-eval" "\
Preconfigured helm for `helm-source-evaluation-result'.

\(fn ARG)" t nil)

(autoload 'helm-eval-expression-with-eldoc "helm/helm-eval" "\
Preconfigured helm for `helm-source-evaluation-result' with `eldoc' support.

\(fn)" t nil)

(autoload 'helm-calcul-expression "helm/helm-eval" "\
Preconfigured helm for `helm-source-calculation-result'.

\(fn)" t nil)

;;;***

;;;### (autoloads (helm-run-external-command) "helm/helm-external"
;;;;;;  "helm/helm-external.el" (20878 23136 265746 871000))
;;; Generated autoloads from helm/helm-external.el

(autoload 'helm-run-external-command "helm/helm-external" "\
Preconfigured `helm' to run External PROGRAM asyncronously from Emacs.
If program is already running exit with error.
You can set your own list of commands with
`helm-external-commands-list'.

\(fn PROGRAM)" t nil)

;;;***

;;;### (autoloads (helm-recentf helm-for-files helm-find-files helm-find
;;;;;;  helm-ff-run-find-sh-command helm-ff-run-browse-project helm-browse-project
;;;;;;  helm-ff-file-name-history helm-ff-rotate-right-persistent
;;;;;;  helm-ff-rotate-left-persistent helm-ff-run-kill-buffer-persistent
;;;;;;  helm-ff-persistent-delete helm-ff-properties-persistent helm-find-files-down-one-level
;;;;;;  helm-ff-run-toggle-basename helm-ff-run-print-file helm-ff-run-etags
;;;;;;  helm-ff-run-gnus-attach-files helm-ff-run-find-file-as-root
;;;;;;  helm-ff-run-locate helm-ff-run-open-file-with-default-tool
;;;;;;  helm-ff-run-open-file-externally helm-ff-run-switch-other-frame
;;;;;;  helm-ff-run-switch-other-window helm-ff-run-switch-to-eshell
;;;;;;  helm-ff-run-complete-fn-at-point helm-ff-run-delete-file
;;;;;;  helm-ff-run-hardlink-file helm-ff-run-symlink-file helm-ff-run-ediff-merge-file
;;;;;;  helm-ff-run-ediff-file helm-ff-run-eshell-command-on-file
;;;;;;  helm-ff-run-load-file helm-ff-run-byte-compile-file helm-ff-run-rename-file
;;;;;;  helm-ff-run-copy-file helm-ff-run-zgrep helm-ff-run-pdfgrep
;;;;;;  helm-ff-run-grep helm-ff-run-switch-to-history helm-ff-run-toggle-auto-update)
;;;;;;  "helm/helm-files" "helm/helm-files.el" (20878 23136 265746
;;;;;;  871000))
;;; Generated autoloads from helm/helm-files.el

(autoload 'helm-ff-run-toggle-auto-update "helm/helm-files" "\


\(fn)" t nil)

(autoload 'helm-ff-run-switch-to-history "helm/helm-files" "\
Run Switch to history action from `helm-source-find-files'.

\(fn)" t nil)

(autoload 'helm-ff-run-grep "helm/helm-files" "\
Run Grep action from `helm-source-find-files'.

\(fn)" t nil)

(autoload 'helm-ff-run-pdfgrep "helm/helm-files" "\
Run Pdfgrep action from `helm-source-find-files'.

\(fn)" t nil)

(autoload 'helm-ff-run-zgrep "helm/helm-files" "\
Run Grep action from `helm-source-find-files'.

\(fn)" t nil)

(autoload 'helm-ff-run-copy-file "helm/helm-files" "\
Run Copy file action from `helm-source-find-files'.

\(fn)" t nil)

(autoload 'helm-ff-run-rename-file "helm/helm-files" "\
Run Rename file action from `helm-source-find-files'.

\(fn)" t nil)

(autoload 'helm-ff-run-byte-compile-file "helm/helm-files" "\
Run Byte compile file action from `helm-source-find-files'.

\(fn)" t nil)

(autoload 'helm-ff-run-load-file "helm/helm-files" "\
Run Load file action from `helm-source-find-files'.

\(fn)" t nil)

(autoload 'helm-ff-run-eshell-command-on-file "helm/helm-files" "\
Run eshell command on file action from `helm-source-find-files'.

\(fn)" t nil)

(autoload 'helm-ff-run-ediff-file "helm/helm-files" "\
Run Ediff file action from `helm-source-find-files'.

\(fn)" t nil)

(autoload 'helm-ff-run-ediff-merge-file "helm/helm-files" "\
Run Ediff merge file action from `helm-source-find-files'.

\(fn)" t nil)

(autoload 'helm-ff-run-symlink-file "helm/helm-files" "\
Run Symlink file action from `helm-source-find-files'.

\(fn)" t nil)

(autoload 'helm-ff-run-hardlink-file "helm/helm-files" "\
Run Hardlink file action from `helm-source-find-files'.

\(fn)" t nil)

(autoload 'helm-ff-run-delete-file "helm/helm-files" "\
Run Delete file action from `helm-source-find-files'.

\(fn)" t nil)

(autoload 'helm-ff-run-complete-fn-at-point "helm/helm-files" "\
Run complete file name action from `helm-source-find-files'.

\(fn)" t nil)

(autoload 'helm-ff-run-switch-to-eshell "helm/helm-files" "\
Run switch to eshell action from `helm-source-find-files'.

\(fn)" t nil)

(autoload 'helm-ff-run-switch-other-window "helm/helm-files" "\
Run switch to other window action from `helm-source-find-files'.

\(fn)" t nil)

(autoload 'helm-ff-run-switch-other-frame "helm/helm-files" "\
Run switch to other frame action from `helm-source-find-files'.

\(fn)" t nil)

(autoload 'helm-ff-run-open-file-externally "helm/helm-files" "\
Run open file externally command action from `helm-source-find-files'.

\(fn)" t nil)

(autoload 'helm-ff-run-open-file-with-default-tool "helm/helm-files" "\
Run open file externally command action from `helm-source-find-files'.

\(fn)" t nil)

(autoload 'helm-ff-run-locate "helm/helm-files" "\
Run locate action from `helm-source-find-files'.

\(fn)" t nil)

(autoload 'helm-ff-run-find-file-as-root "helm/helm-files" "\


\(fn)" t nil)

(autoload 'helm-ff-run-gnus-attach-files "helm/helm-files" "\
Run gnus attach files command action from `helm-source-find-files'.

\(fn)" t nil)

(autoload 'helm-ff-run-etags "helm/helm-files" "\
Run Etags command action from `helm-source-find-files'.

\(fn)" t nil)

(autoload 'helm-ff-run-print-file "helm/helm-files" "\
Run Print file action from `helm-source-find-files'.

\(fn)" t nil)

(autoload 'helm-ff-run-toggle-basename "helm/helm-files" "\


\(fn)" t nil)

(autoload 'helm-find-files-down-one-level "helm/helm-files" "\
Go down one level like unix command `cd ..'.
If prefix numeric arg is given go ARG level down.

\(fn ARG)" t nil)

(autoload 'helm-ff-properties-persistent "helm/helm-files" "\
Show properties without quitting helm.

\(fn)" t nil)

(autoload 'helm-ff-persistent-delete "helm/helm-files" "\
Delete current candidate without quitting.

\(fn)" t nil)

(autoload 'helm-ff-run-kill-buffer-persistent "helm/helm-files" "\
Execute `helm-ff-kill-buffer-fname' whitout quitting.

\(fn)" t nil)

(autoload 'helm-ff-rotate-left-persistent "helm/helm-files" "\
Rotate image left without quitting helm.

\(fn)" t nil)

(autoload 'helm-ff-rotate-right-persistent "helm/helm-files" "\
Rotate image right without quitting helm.

\(fn)" t nil)

(autoload 'helm-ff-file-name-history "helm/helm-files" "\
Switch to `file-name-history' without quitting `helm-find-files'.

\(fn)" t nil)

(autoload 'helm-browse-project "helm/helm-files" "\
Browse files and see status of project with its vcs.
Only hg and git are supported for now.
Fall back to `helm-find-files' if directory is not under
control of one of those vcs.
Need dependencies:
<https://github.com/emacs-helm/helm-ls-git.git>
and
<https://github.com/emacs-helm/helm-mercurial-queue/blob/master/helm-ls-hg.el>.

\(fn)" t nil)

(autoload 'helm-ff-run-browse-project "helm/helm-files" "\


\(fn)" t nil)

(autoload 'helm-ff-run-find-sh-command "helm/helm-files" "\
Run find shell command action with key from `helm-find-files'.

\(fn)" t nil)

(autoload 'helm-find "helm/helm-files" "\
Preconfigured `helm' for the find shell command.

\(fn ARG)" t nil)

(autoload 'helm-find-files "helm/helm-files" "\
Preconfigured `helm' for helm implementation of `find-file'.
Called with a prefix arg show history if some.
Don't call it from programs, use `helm-find-files-1' instead.
This is the starting point for nearly all actions you can do on files.

\(fn ARG)" t nil)

(autoload 'helm-for-files "helm/helm-files" "\
Preconfigured `helm' for opening files.
Run all sources defined in `helm-for-files-preferred-list'.

\(fn)" t nil)

(autoload 'helm-recentf "helm/helm-files" "\
Preconfigured `helm' for `recentf'.

\(fn)" t nil)

;;;***

;;;### (autoloads (helm-firefox-bookmarks) "helm/helm-firefox" "helm/helm-firefox.el"
;;;;;;  (20878 23136 265746 871000))
;;; Generated autoloads from helm/helm-firefox.el

(autoload 'helm-firefox-bookmarks "helm/helm-firefox" "\
Preconfigured `helm' for firefox bookmark.
You will have to enable html bookmarks in firefox:
open about:config in firefox and double click on this line to enable value to true:

user_pref(\"browser.bookmarks.autoExportHTML\", false);

You should have now:

user_pref(\"browser.bookmarks.autoExportHTML\", true);

After closing firefox, you will be able to browse you bookmarks.

\(fn)" t nil)

;;;***

;;;### (autoloads (helm-ucs helm-select-xfont) "helm/helm-font" "helm/helm-font.el"
;;;;;;  (20878 23136 265746 871000))
;;; Generated autoloads from helm/helm-font.el

(autoload 'helm-select-xfont "helm/helm-font" "\
Preconfigured `helm' to select Xfont.

\(fn)" t nil)

(autoload 'helm-ucs "helm/helm-font" "\
Preconfigured helm for `ucs-names' math symbols.

\(fn)" t nil)

;;;***

;;;### (autoloads (helm-gentoo) "helm/helm-gentoo" "helm/helm-gentoo.el"
;;;;;;  (20878 23136 265746 871000))
;;; Generated autoloads from helm/helm-gentoo.el

(autoload 'helm-gentoo "helm/helm-gentoo" "\
Preconfigured `helm' for gentoo linux.

\(fn)" t nil)

;;;***

;;;### (autoloads (helm-do-pdfgrep helm-do-zgrep helm-do-grep helm-grep-mode-jump-other-window
;;;;;;  helm-grep-mode-jump-other-window-backward helm-grep-mode-jump-other-window-forward
;;;;;;  helm-grep-mode-jump helm-grep-mode-quit helm-gm-precedent-file
;;;;;;  helm-gm-next-file helm-grep-mode helm-grep-run-save-buffer
;;;;;;  helm-grep-run-other-frame-action helm-grep-run-other-window-action
;;;;;;  helm-grep-run-default-action helm-grep-run-persistent-action
;;;;;;  helm-goto-next-file helm-goto-precedent-file) "helm/helm-grep"
;;;;;;  "helm/helm-grep.el" (20878 23136 265746 871000))
;;; Generated autoloads from helm/helm-grep.el

(autoload 'helm-goto-precedent-file "helm/helm-grep" "\
Go to precedent file in helm grep/etags buffers.

\(fn)" t nil)

(autoload 'helm-goto-next-file "helm/helm-grep" "\
Go to precedent file in helm grep/etags buffers.

\(fn)" t nil)

(autoload 'helm-grep-run-persistent-action "helm/helm-grep" "\
Run grep persistent action from `helm-do-grep-1'.

\(fn)" t nil)

(autoload 'helm-grep-run-default-action "helm/helm-grep" "\
Run grep default action from `helm-do-grep-1'.

\(fn)" t nil)

(autoload 'helm-grep-run-other-window-action "helm/helm-grep" "\
Run grep goto other window action from `helm-do-grep-1'.

\(fn)" t nil)

(autoload 'helm-grep-run-other-frame-action "helm/helm-grep" "\
Run grep goto other frame action from `helm-do-grep-1'.

\(fn)" t nil)

(autoload 'helm-grep-run-save-buffer "helm/helm-grep" "\
Run grep save results action from `helm-do-grep-1'.

\(fn)" t nil)

(autoload 'helm-grep-mode "helm/helm-grep" "\
Major mode to provide actions in helm grep saved buffer.

Special commands:
\\{helm-grep-mode-map}

\(fn)" t nil)

(autoload 'helm-gm-next-file "helm/helm-grep" "\


\(fn)" t nil)

(autoload 'helm-gm-precedent-file "helm/helm-grep" "\


\(fn)" t nil)

(autoload 'helm-grep-mode-quit "helm/helm-grep" "\


\(fn)" t nil)

(autoload 'helm-grep-mode-jump "helm/helm-grep" "\


\(fn)" t nil)

(autoload 'helm-grep-mode-jump-other-window-forward "helm/helm-grep" "\


\(fn)" t nil)

(autoload 'helm-grep-mode-jump-other-window-backward "helm/helm-grep" "\


\(fn)" t nil)

(autoload 'helm-grep-mode-jump-other-window "helm/helm-grep" "\


\(fn)" t nil)

(autoload 'helm-do-grep "helm/helm-grep" "\
Preconfigured helm for grep.
Contrarily to Emacs `grep', no default directory is given, but
the full path of candidates in ONLY.
That allow to grep different files not only in `default-directory' but anywhere
by marking them (C-<SPACE>). If one or more directory is selected
grep will search in all files of these directories.
You can also use wildcard in the base name of candidate.
If a prefix arg is given use the -r option of grep (recurse).
The prefix arg can be passed before or after start file selection.
See also `helm-do-grep-1'.

\(fn)" t nil)

(autoload 'helm-do-zgrep "helm/helm-grep" "\
Preconfigured helm for zgrep.

\(fn)" t nil)

(autoload 'helm-do-pdfgrep "helm/helm-grep" "\
Preconfigured helm for pdfgrep.

\(fn)" t nil)

;;;***

;;;### (autoloads (helm-describe-helm-attribute helm-apt-help helm-top-help
;;;;;;  helm-moccur-help helm-buffers-ido-virtual-help helm-esh-help
;;;;;;  helm-bookmark-help helm-ucs-help helm-etags-help helm-pdfgrep-help
;;;;;;  helm-grep-help helm-generic-file-help helm-read-file-name-help
;;;;;;  helm-ff-help helm-buffer-help helm-help) "helm/helm-help"
;;;;;;  "helm/helm-help.el" (20878 23136 265746 871000))
;;; Generated autoloads from helm/helm-help.el

(defvar helm-mode-line-string "\\<helm-map>\\[helm-help]:Help \\[helm-select-action]:Act \\[helm-exit-minibuffer]/\\[helm-select-2nd-action-or-end-of-line]/\\[helm-select-3rd-action]:NthAct" "\
Help string displayed in mode-line in `helm'.
It can be a string or a list of two args, in this case,
first arg is a string that will be used as name for candidates number,
second arg any string to display in mode line.
If nil, use default `mode-line-format'.")

(autoload 'helm-help "helm/helm-help" "\
Help of `helm'.

\(fn)" t nil)

(autoload 'helm-buffer-help "helm/helm-help" "\
Help command for helm buffers.

\(fn)" t nil)

(autoload 'helm-ff-help "helm/helm-help" "\
Help command for `helm-find-files'.

\(fn)" t nil)

(autoload 'helm-read-file-name-help "helm/helm-help" "\


\(fn)" t nil)

(autoload 'helm-generic-file-help "helm/helm-help" "\


\(fn)" t nil)

(autoload 'helm-grep-help "helm/helm-help" "\


\(fn)" t nil)

(autoload 'helm-pdfgrep-help "helm/helm-help" "\


\(fn)" t nil)

(autoload 'helm-etags-help "helm/helm-help" "\
The help function for etags.

\(fn)" t nil)

(autoload 'helm-ucs-help "helm/helm-help" "\
Help command for `helm-ucs'.

\(fn)" t nil)

(autoload 'helm-bookmark-help "helm/helm-help" "\
Help command for bookmarks.

\(fn)" t nil)

(autoload 'helm-esh-help "helm/helm-help" "\
Help command for `helm-find-files-eshell-command-on-file'.

\(fn)" t nil)

(autoload 'helm-buffers-ido-virtual-help "helm/helm-help" "\
Help command for ido virtual buffers.

\(fn)" t nil)

(autoload 'helm-moccur-help "helm/helm-help" "\


\(fn)" t nil)

(autoload 'helm-top-help "helm/helm-help" "\


\(fn)" t nil)

(autoload 'helm-apt-help "helm/helm-help" "\


\(fn)" t nil)

(defvar helm-buffer-mode-line-string '("Buffer(s)" "\\<helm-buffer-map>\\[helm-buffer-help]:Help \\<helm-map>\\[helm-select-action]:Act \\[helm-exit-minibuffer]/\\[helm-select-2nd-action-or-end-of-line]/\\[helm-select-3rd-action]:NthAct" "String displayed in mode-line in `helm-source-buffers-list'"))

(defvar helm-buffers-ido-virtual-mode-line-string '("Killed Buffer(s)" "\\<helm-buffers-ido-virtual-map>\\[helm-buffers-ido-virtual-help]:Help \\<helm-map>\\[helm-select-action]:Act \\[helm-exit-minibuffer]/\\[helm-select-2nd-action-or-end-of-line]/\\[helm-select-3rd-action]:NthAct" "String displayed in mode-line in `helm-source-buffers-list'"))

(defvar helm-ff-mode-line-string "\\<helm-find-files-map>\\[helm-ff-help]:Help \\<helm-map>\\[helm-select-action]:Act \\[helm-exit-minibuffer]/\\[helm-select-2nd-action-or-end-of-line]/\\[helm-select-3rd-action]:NthAct" "\
String displayed in mode-line in `helm-source-find-files'")

(defvar helm-read-file-name-mode-line-string "\\<helm-read-file-map>\\[helm-read-file-name-help]:Help \\[helm-cr-empty-string]:Empty \\<helm-map>\\[helm-select-action]:Act \\[helm-exit-minibuffer]/\\[helm-select-2nd-action-or-end-of-line]/\\[helm-select-3rd-action]:NthAct" "\
String displayed in mode-line in `helm-source-find-files'.")

(defvar helm-generic-file-mode-line-string "\\<helm-generic-files-map>\\[helm-generic-file-help]:Help \\<helm-map>\\[helm-select-action]:Act \\[helm-exit-minibuffer]/\\[helm-select-2nd-action-or-end-of-line]/\\[helm-select-3rd-action]:NthAct \\[helm-toggle-suspend-update]:Tog.suspend" "\
String displayed in mode-line in Locate.")

(defvar helm-grep-mode-line-string "\\<helm-grep-map>\\[helm-grep-help]:Help \\<helm-map>\\[helm-select-action]:Act \\[helm-exit-minibuffer]/\\[helm-select-2nd-action-or-end-of-line]/\\[helm-select-3rd-action]:NthAct \\[helm-toggle-suspend-update]:Tog.suspend" "\
String displayed in mode-line in `helm-do-grep'.")

(defvar helm-pdfgrep-mode-line-string "\\<helm-pdfgrep-map>\\[helm-pdfgrep-help]:Help \\<helm-map>\\[helm-select-action]:Act \\[helm-exit-minibuffer]/\\[helm-select-2nd-action-or-end-of-line]/\\[helm-select-3rd-action]:NthAct \\[helm-toggle-suspend-update]:Tog.suspend" "\
String displayed in mode-line in `helm-do-pdfgrep'.")

(defvar helm-etags-mode-line-string "\\<helm-etags-map>\\[helm-etags-help]:Help \\<helm-map>\\[helm-select-action]:Act \\[helm-exit-minibuffer]/\\[helm-select-2nd-action-or-end-of-line]/\\[helm-select-3rd-action]:NthAct" "\
String displayed in mode-line in `helm-etags-select'.")

(defvar helm-ucs-mode-line-string "\\<helm-ucs-map>\\[helm-ucs-help]:Help \\<helm-map>\\[helm-select-action]:Act \\[helm-exit-minibuffer]/\\[helm-select-2nd-action-or-end-of-line]/\\[helm-select-3rd-action]:NthAct" "\
String displayed in mode-line in `helm-ucs'.")

(defvar helm-bookmark-mode-line-string '("Bookmark(s)" "\\<helm-bookmark-map>\\[helm-bookmark-help]:Help \\<helm-map>\\[helm-select-action]:Act \\[helm-exit-minibuffer]/\\[helm-select-2nd-action-or-end-of-line]/\\[helm-select-3rd-action]:NthAct") "\
String displayed in mode-line in `helm-source-buffers-list'")

(defvar helm-occur-mode-line "\\<helm-map>\\[helm-help]:Help \\<helm-occur-map>\\[helm-occur-run-query-replace-regexp]:Query replace regexp \\<helm-map>\\[helm-select-action]:Act \\[helm-exit-minibuffer]/\\[helm-select-2nd-action-or-end-of-line]/\\[helm-select-3rd-action]:NthAct \\[helm-toggle-suspend-update]:Tog.suspend")

(defvar helm-moccur-mode-line "\\<helm-moccur-map>\\[helm-moccur-help]:Help \\<helm-map>\\[helm-select-action]:Act \\[helm-exit-minibuffer]/\\[helm-select-2nd-action-or-end-of-line]/\\[helm-select-3rd-action]:NthAct \\[helm-toggle-suspend-update]:Tog.suspend")

(defvar helm-comp-read-mode-line "\\<helm-comp-read-map>\\[helm-cr-empty-string]:Empty \\<helm-map>\\[helm-help]:Help \\[helm-select-action]:Act \\[helm-exit-minibuffer]/\\[helm-select-2nd-action-or-end-of-line]/\\[helm-select-3rd-action]:NthAct")

(defvar helm-top-mode-line "\\<helm-top-map>\\[helm-top-help]:Help \\<helm-map>\\[helm-select-action]:Act \\[helm-exit-minibuffer]/\\[helm-select-2nd-action-or-end-of-line]/\\[helm-select-3rd-action]:NthAct \\[helm-toggle-suspend-update]:Tog.suspend")

(defvar helm-apt-mode-line "\\<helm-apt-map>\\[helm-apt-help]:Help \\<helm-map>\\[helm-select-action]:Act \\[helm-exit-minibuffer]/\\[helm-select-2nd-action-or-end-of-line]/\\[helm-select-3rd-action]:NthAct \\[helm-toggle-suspend-update]:Tog.suspend")

(autoload 'helm-describe-helm-attribute "helm/helm-help" "\
Display the full documentation of HELM-ATTRIBUTE.
HELM-ATTRIBUTE should be a symbol.

\(fn HELM-ATTRIBUTE)" t nil)

;;;***

;;;### (autoloads (helm-imenu) "helm/helm-imenu" "helm/helm-imenu.el"
;;;;;;  (20878 23136 265746 871000))
;;; Generated autoloads from helm/helm-imenu.el

(autoload 'helm-imenu "helm/helm-imenu" "\
Preconfigured `helm' for `imenu'.

\(fn)" t nil)

;;;***

;;;### (autoloads (helm-info-at-point) "helm/helm-info" "helm/helm-info.el"
;;;;;;  (20878 23136 269747 29000))
;;; Generated autoloads from helm/helm-info.el

(autoload 'helm-info-at-point "helm/helm-info" "\
Preconfigured `helm' for searching info at point.
With a prefix-arg insert symbol at point.

\(fn)" t nil)

;;;***

;;;### (autoloads (helm-locate) "helm/helm-locate" "helm/helm-locate.el"
;;;;;;  (20878 23136 269747 29000))
;;; Generated autoloads from helm/helm-locate.el

(autoload 'helm-locate "helm/helm-locate" "\
Preconfigured `helm' for Locate.
Note: you can add locate options after entering pattern.
See 'man locate' for valid options and also `helm-locate-command'.

You can specify a local database with prefix argument ARG.
With two prefix arg, refresh the current local db or create it
if it doesn't exists.
Many databases can be used: navigate and mark them.
See also `helm-locate-with-db'.

To create a user specific db, use
\"updatedb -l 0 -o db_path -U directory\".
Where db_path is a filename matched by
`helm-locate-db-file-regexp'.

\(fn ARG)" t nil)

;;;***

;;;### (autoloads (helm-man-woman) "helm/helm-man" "helm/helm-man.el"
;;;;;;  (20878 23136 269747 29000))
;;; Generated autoloads from helm/helm-man.el

(autoload 'helm-man-woman "helm/helm-man" "\
Preconfigured `helm' for Man and Woman pages.
With a prefix arg reinitialize the cache.

\(fn ARG)" t nil)

;;;***

;;;### (autoloads (helm-match-plugin-mode) "helm/helm-match-plugin"
;;;;;;  "helm/helm-match-plugin.el" (20878 23136 269747 29000))
;;; Generated autoloads from helm/helm-match-plugin.el

(defvar helm-match-plugin-mode nil "\
Non-nil if Helm-Match-Plugin mode is enabled.
See the command `helm-match-plugin-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `helm-match-plugin-mode'.")

(custom-autoload 'helm-match-plugin-mode "helm/helm-match-plugin" nil)

(autoload 'helm-match-plugin-mode "helm/helm-match-plugin" "\
Add more flexible regexp matching for helm.
See `helm-mp-matching-method' for the behavior of each method.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads (helm-minibuffer-history helm-mini helm-stumpwm-commands
;;;;;;  helm-ratpoison-commands helm-eev-anchors helm-insert-latex-math
;;;;;;  helm-world-time) "helm/helm-misc" "helm/helm-misc.el" (20878
;;;;;;  23136 269747 29000))
;;; Generated autoloads from helm/helm-misc.el

(autoload 'helm-world-time "helm/helm-misc" "\
Preconfigured `helm' to show world time.

\(fn)" t nil)

(autoload 'helm-insert-latex-math "helm/helm-misc" "\
Preconfigured helm for latex math symbols completion.

\(fn)" t nil)

(autoload 'helm-eev-anchors "helm/helm-misc" "\
Preconfigured `helm' for eev anchors.

\(fn)" t nil)

(autoload 'helm-ratpoison-commands "helm/helm-misc" "\
Preconfigured `helm' to execute ratpoison commands.

\(fn)" t nil)

(autoload 'helm-stumpwm-commands "helm/helm-misc" "\


\(fn)" t nil)

(autoload 'helm-mini "helm/helm-misc" "\
Preconfigured `helm' lightweight version (buffer -> recentf).

\(fn)" t nil)

(autoload 'helm-minibuffer-history "helm/helm-misc" "\
Preconfigured `helm' for `minibuffer-history'.

\(fn)" t nil)

;;;***

;;;### (autoloads (helm-mode helm-comp-read helm-cr-empty-string)
;;;;;;  "helm/helm-mode" "helm/helm-mode.el" (20878 23136 269747
;;;;;;  29000))
;;; Generated autoloads from helm/helm-mode.el

(autoload 'helm-cr-empty-string "helm/helm-mode" "\
Return empty string.

\(fn)" t nil)

(autoload 'helm-comp-read "helm/helm-mode" "\
Read a string in the minibuffer, with helm completion.

It is helm `completing-read' equivalent.

- PROMPT is the prompt name to use.

- COLLECTION can be a list, vector, obarray or hash-table.
  It can be also a function that receives three arguments:
  the values string, predicate and t. See `all-completions' for more details.

Keys description:

- TEST: A predicate called with one arg i.e candidate.

- INITIAL-INPUT: Same as input arg in `helm'.

- PRESELECT: See preselect arg of `helm'.

- DEFAULT: This option is used only for compatibility with regular
  Emacs `completing-read' (Same as DEFAULT arg of `completing-read').

- BUFFER: Name of helm-buffer.

- MUST-MATCH: Candidate selected must be one of COLLECTION.

- REQUIRES-PATTERN: Same as helm attribute, default is 0.

- HISTORY: A list containing specific history, default is nil.
  When it is non--nil, all elements of HISTORY are displayed in
  a special source before COLLECTION.

- INPUT-HISTORY: A symbol. the minibuffer input history will be
  stored there, if nil or not provided, `minibuffer-history'
  will be used instead.

- CASE-FOLD: Same as `helm-case-fold-search'.

- DEL-INPUT: Boolean, when non--nil (default) remove the partial
  minibuffer input from HISTORY is present.

- PERSISTENT-ACTION: A function called with one arg i.e candidate.

- PERSISTENT-HELP: A string to document PERSISTENT-ACTION.

- MODE-LINE: A string or list to display in mode line.
  (See `helm-mode-line-string')

- KEYMAP: A keymap to use in this `helm-comp-read'.
  (The keymap will be shared with history source)

- NAME: The name related to this local source.

- EXEC-WHEN-ONLY-ONE: Bound `helm-execute-action-at-once-if-one'
  to non--nil. (possibles values are t or nil).

- VOLATILE: Use volatile attribute (enabled by default).

- SORT: A predicate to give to `sort' e.g `string-lessp'.

- FC-TRANSFORMER: A `filtered-candidate-transformer' function.

- MARKED-CANDIDATES: If non--nil return candidate or marked candidates as a list.

- ALISTP: (default is non--nil) See `helm-comp-read-get-candidates'.

- CANDIDATES-IN-BUFFER: when non--nil use a source build with
  `helm-candidates-in-buffer' which is much faster.
  Argument VOLATILE have no effect when CANDIDATES-IN-BUFFER is non--nil.

Any prefix args passed during `helm-comp-read' invocation will be recorded
in `helm-current-prefix-arg', otherwise if prefix args were given before
`helm-comp-read' invocation, the value of `current-prefix-arg' will be used.
That's mean you can pass prefix args before or after calling a command
that use `helm-comp-read' See `helm-M-x' for example.

\(fn PROMPT COLLECTION &key TEST INITIAL-INPUT DEFAULT PRESELECT (buffer \"*Helm Completions*\") MUST-MATCH (requires-pattern 0) (history nil) INPUT-HISTORY (case-fold helm-comp-read-case-fold-search) (del-input t) (persistent-action nil) (persistent-help \"DoNothing\") (mode-line helm-comp-read-mode-line) (keymap helm-comp-read-map) (name \"Helm Completions\") CANDIDATES-IN-BUFFER EXEC-WHEN-ONLY-ONE (volatile t) SORT (fc-transformer (quote helm-cr-default-transformer)) (marked-candidates nil) (alistp t))" nil nil)

(defvar helm-mode nil "\
Non-nil if Helm mode is enabled.
See the command `helm-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `helm-mode'.")

(custom-autoload 'helm-mode "helm/helm-mode" nil)

(autoload 'helm-mode "helm/helm-mode" "\
Toggle generic helm completion.

All functions in Emacs that use `completing-read'
or `read-file-name' and friends will use helm interface
when this mode is turned on.
However you can modify this behavior for functions of your choice
with `helm-completing-read-handlers-alist'.

Called with a positive arg, turn on unconditionally, with a
negative arg turn off.
You can turn it on with `helm-mode'.

Some crap emacs functions may not be supported,
e.g `ffap-alternate-file' and maybe others
You can add such functions to `helm-completing-read-handlers-alist'
with a nil value.

Note: This mode is incompatible with Emacs23.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads (helm-yahoo-suggest helm-google-suggest helm-surfraw)
;;;;;;  "helm/helm-net" "helm/helm-net.el" (20878 23136 269747 29000))
;;; Generated autoloads from helm/helm-net.el

(autoload 'helm-surfraw "helm/helm-net" "\
Preconfigured `helm' to search PATTERN with search ENGINE.

\(fn PATTERN ENGINE)" t nil)

(autoload 'helm-google-suggest "helm/helm-net" "\
Preconfigured `helm' for google search with google suggest.

\(fn)" t nil)

(autoload 'helm-yahoo-suggest "helm/helm-net" "\
Preconfigured `helm' for Yahoo searching with Yahoo suggest.

\(fn)" t nil)

;;;***

;;;### (autoloads (helm-org-headlines helm-org-keywords) "helm/helm-org"
;;;;;;  "helm/helm-org.el" (20878 23136 269747 29000))
;;; Generated autoloads from helm/helm-org.el

(autoload 'helm-org-keywords "helm/helm-org" "\
Preconfigured `helm' for org keywords.

\(fn)" t nil)

(autoload 'helm-org-headlines "helm/helm-org" "\
Preconfigured helm to show org headlines.

\(fn)" t nil)

;;;***

;;;### (autoloads (helm-browse-code helm-multi-occur-from-isearch
;;;;;;  helm-multi-occur helm-occur-from-isearch helm-occur helm-regexp)
;;;;;;  "helm/helm-regexp" "helm/helm-regexp.el" (20878 23136 269747
;;;;;;  29000))
;;; Generated autoloads from helm/helm-regexp.el

(autoload 'helm-regexp "helm/helm-regexp" "\
Preconfigured helm to build regexps.
`query-replace-regexp' can be run from there against found regexp.

\(fn)" t nil)

(autoload 'helm-occur "helm/helm-regexp" "\
Preconfigured helm for Occur.

\(fn)" t nil)

(autoload 'helm-occur-from-isearch "helm/helm-regexp" "\
Invoke `helm-occur' from isearch.

\(fn)" t nil)

(autoload 'helm-multi-occur "helm/helm-regexp" "\
Preconfigured helm for multi occur.

  BUFFERS is a list of buffers to search through.
With a prefix arg, reverse the behavior of
`helm-moccur-always-search-in-current'.
The prefix arg can be set before calling `helm-multi-occur'
or during the buffer selection.

\(fn BUFFERS)" t nil)

(autoload 'helm-multi-occur-from-isearch "helm/helm-regexp" "\
Invoke `helm-multi-occur' from isearch.

With a prefix arg, reverse the behavior of
`helm-moccur-always-search-in-current'.
The prefix arg can be set before calling
`helm-multi-occur-from-isearch' or during the buffer selection.

\(fn &optional ARG)" t nil)

(autoload 'helm-browse-code "helm/helm-regexp" "\
Preconfigured helm to browse code.

\(fn)" t nil)

;;;***

;;;### (autoloads (helm-show-kill-ring helm-register helm-all-mark-rings
;;;;;;  helm-global-mark-ring helm-mark-ring) "helm/helm-ring" "helm/helm-ring.el"
;;;;;;  (20878 23136 269747 29000))
;;; Generated autoloads from helm/helm-ring.el

(autoload 'helm-mark-ring "helm/helm-ring" "\
Preconfigured `helm' for `helm-source-mark-ring'.

\(fn)" t nil)

(autoload 'helm-global-mark-ring "helm/helm-ring" "\
Preconfigured `helm' for `helm-source-global-mark-ring'.

\(fn)" t nil)

(autoload 'helm-all-mark-rings "helm/helm-ring" "\
Preconfigured `helm' for `helm-source-global-mark-ring' and `helm-source-mark-ring'.

\(fn)" t nil)

(autoload 'helm-register "helm/helm-ring" "\
Preconfigured `helm' for Emacs registers.

\(fn)" t nil)

(autoload 'helm-show-kill-ring "helm/helm-ring" "\
Preconfigured `helm' for `kill-ring'.
It is drop-in replacement of `yank-pop'.

First call open the kill-ring browser, next calls move to next line.

\(fn)" t nil)

;;;***

;;;### (autoloads (helm-semantic-or-imenu helm-semantic) "helm/helm-semantic"
;;;;;;  "helm/helm-semantic.el" (20878 23136 269747 29000))
;;; Generated autoloads from helm/helm-semantic.el

(autoload 'helm-semantic "helm/helm-semantic" "\
Preconfigured `helm' for `semantic'.

\(fn)" t nil)

(autoload 'helm-semantic-or-imenu "helm/helm-semantic" "\
Run `helm' with `semantic' or `imenu'.

If `semantic-mode' is active in the current buffer, then use
semantic for generating tags, otherwise fall back to `imenu'.
Fill in the symbol at point by default.

\(fn)" t nil)

;;;***

;;;### (autoloads (helm-xrandr-set helm-list-emacs-process helm-top
;;;;;;  helm-top-run-sort-by-user helm-top-run-sort-by-mem helm-top-run-sort-by-cpu
;;;;;;  helm-top-run-sort-by-com) "helm/helm-sys" "helm/helm-sys.el"
;;;;;;  (20878 23136 269747 29000))
;;; Generated autoloads from helm/helm-sys.el

(autoload 'helm-top-run-sort-by-com "helm/helm-sys" "\


\(fn)" t nil)

(autoload 'helm-top-run-sort-by-cpu "helm/helm-sys" "\


\(fn)" t nil)

(autoload 'helm-top-run-sort-by-mem "helm/helm-sys" "\


\(fn)" t nil)

(autoload 'helm-top-run-sort-by-user "helm/helm-sys" "\


\(fn)" t nil)

(autoload 'helm-top "helm/helm-sys" "\
Preconfigured `helm' for top command.

\(fn)" t nil)

(autoload 'helm-list-emacs-process "helm/helm-sys" "\
Preconfigured `helm' for emacs process.

\(fn)" t nil)

(autoload 'helm-xrandr-set "helm/helm-sys" "\


\(fn)" t nil)

;;;***

;;;### (autoloads (helm-etags-select) "helm/helm-tags" "helm/helm-tags.el"
;;;;;;  (20878 23136 269747 29000))
;;; Generated autoloads from helm/helm-tags.el

(autoload 'helm-etags-select "helm/helm-tags" "\
Preconfigured helm for etags.
Called with one prefix arg use symbol at point as initial input.
Called with two prefix arg reinitialize cache.
If tag file have been modified reinitialize cache.

\(fn ARG)" t nil)

;;;***

;;;### (autoloads (helm-yank-text-at-point helm-w32-shell-execute-open-file
;;;;;;  helm-quit-and-find-file helm-display-all-sources helm-show-all-in-this-source-only)
;;;;;;  "helm/helm-utils" "helm/helm-utils.el" (20878 23136 269747
;;;;;;  29000))
;;; Generated autoloads from helm/helm-utils.el

(autoload 'helm-show-all-in-this-source-only "helm/helm-utils" "\
Show only current source of this helm session with all its candidates.
With a numeric prefix arg show only the ARG number of candidates.

\(fn ARG)" t nil)

(autoload 'helm-display-all-sources "helm/helm-utils" "\
Display all sources previously hidden by `helm-set-source-filter'.

\(fn)" t nil)

(autoload 'helm-quit-and-find-file "helm/helm-utils" "\
Drop into `helm-find-files' from `helm'.
If current selection is a buffer or a file, `helm-find-files'
from its directory.

\(fn)" t nil)

(autoload 'helm-w32-shell-execute-open-file "helm/helm-utils" "\


\(fn FILE)" t nil)

(autoload 'helm-yank-text-at-point "helm/helm-utils" "\
Yank text at point in invocation buffer into minibuffer.

`helm-yank-symbol-first' controls whether the first yank grabs
the entire symbol.

\(fn)" t nil)

;;;***

;;;### (autoloads (helm-w3m-bookmarks) "helm/helm-w3m" "helm/helm-w3m.el"
;;;;;;  (20878 23136 269747 29000))
;;; Generated autoloads from helm/helm-w3m.el

(autoload 'helm-w3m-bookmarks "helm/helm-w3m" "\
Preconfigured `helm' for w3m bookmark.

Needs w3m and emacs-w3m.

http://w3m.sourceforge.net/
http://emacs-w3m.namazu.org/

\(fn)" t nil)

;;;***

;;;### (autoloads (helm-yaoddmuse-emacswiki-post-library helm-yaoddmuse-emacswiki-edit-or-view
;;;;;;  helm-yaoddmuse-cache-pages) "helm/helm-yaoddmuse" "helm/helm-yaoddmuse.el"
;;;;;;  (20878 23136 269747 29000))
;;; Generated autoloads from helm/helm-yaoddmuse.el

(autoload 'helm-yaoddmuse-cache-pages "helm/helm-yaoddmuse" "\
Fetch the list of files on emacswiki and create cache file.
If load is non--nil load the file and feed `yaoddmuse-pages-hash'.

\(fn &optional LOAD)" t nil)

(autoload 'helm-yaoddmuse-emacswiki-edit-or-view "helm/helm-yaoddmuse" "\
Preconfigured `helm' to edit or view EmacsWiki page.

Needs yaoddmuse.el.

http://www.emacswiki.org/emacs/download/yaoddmuse.el

\(fn)" t nil)

(autoload 'helm-yaoddmuse-emacswiki-post-library "helm/helm-yaoddmuse" "\
Preconfigured `helm' to post library to EmacsWiki.

Needs yaoddmuse.el.

http://www.emacswiki.org/emacs/download/yaoddmuse.el

\(fn)" t nil)

;;;***

;;;### (autoloads (highlight-parentheses-mode) "highlight-parentheses/highlight-parentheses"
;;;;;;  "highlight-parentheses/highlight-parentheses.el" (20878 29189
;;;;;;  150852 753000))
;;; Generated autoloads from highlight-parentheses/highlight-parentheses.el

(autoload 'highlight-parentheses-mode "highlight-parentheses/highlight-parentheses" "\
Minor mode to highlight the surrounding parentheses.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads (global-hl-sexp-mode hl-sexp-mode) "hl-sexp/hl-sexp"
;;;;;;  "hl-sexp/hl-sexp.el" (20878 29189 366860 140000))
;;; Generated autoloads from hl-sexp/hl-sexp.el

(autoload 'hl-sexp-mode "hl-sexp/hl-sexp" "\
Minor mode to highlight the sexp about point in the current window.
With ARG, turn Hl-Sexp mode on if ARG is positive, off otherwise.
Uses functions `hl-sexp-unhighlight' and `hl-sexp-highlight' on
`pre-command-hook' and `post-command-hook'.

\(fn &optional ARG)" t nil)

(defvar global-hl-sexp-mode nil "\
Non-nil if Global-Hl-Sexp mode is enabled.
See the command `global-hl-sexp-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `global-hl-sexp-mode'.")

(custom-autoload 'global-hl-sexp-mode "hl-sexp/hl-sexp" nil)

(autoload 'global-hl-sexp-mode "hl-sexp/hl-sexp" "\
Toggle Hl-Sexp mode in all buffers.
With prefix ARG, enable Global-Hl-Sexp mode if ARG is positive;
otherwise, disable it.  If called from Lisp, enable the mode if
ARG is omitted or nil.

Hl-Sexp mode is enabled in all buffers where
`hl-sexp-mode' would do it.
See `hl-sexp-mode' for more information on Hl-Sexp mode.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads (lua-mode) "lua-mode/lua-mode" "lua-mode/lua-mode.el"
;;;;;;  (20878 23143 530033 392000))
;;; Generated autoloads from lua-mode/lua-mode.el

(autoload 'lua-mode "lua-mode/lua-mode" "\
Major mode for editing Lua code.

\(fn)" t nil)

(add-to-list 'auto-mode-alist '("\\.lua$" . lua-mode))

(add-to-list 'interpreter-mode-alist '("lua" . lua-mode))

;;;***

;;;### (autoloads (magit-status) "magit/magit" "magit/magit.el" (20878
;;;;;;  29188 226821 153000))
;;; Generated autoloads from magit/magit.el

(autoload 'magit-status "magit/magit" "\
Open a Magit status buffer for the Git repository containing DIR.
If DIR is not within a Git repository, offer to create a Git
repository in DIR.

Interactively, a prefix argument means to ask the user which Git
repository to use even if `default-directory' is under Git
control.  Two prefix arguments means to ignore `magit-repo-dirs'
when asking for user input.

\(fn DIR)" t nil)

;;;***

;;;### (autoloads (magit-blame-mode) "magit/magit-blame" "magit/magit-blame.el"
;;;;;;  (20878 29188 222821 16000))
;;; Generated autoloads from magit/magit-blame.el

(autoload 'magit-blame-mode "magit/magit-blame" "\
Display blame information inline.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads (turn-on-magit-stgit magit-stgit-mode) "magit/magit-stgit"
;;;;;;  "magit/magit-stgit.el" (20878 29188 222821 16000))
;;; Generated autoloads from magit/magit-stgit.el

(autoload 'magit-stgit-mode "magit/magit-stgit" "\
StGit support for Magit

\(fn &optional ARG)" t nil)

(autoload 'turn-on-magit-stgit "magit/magit-stgit" "\
Unconditionally turn on `magit-stgit-mode'.

\(fn)" nil nil)

;;;***

;;;### (autoloads (turn-on-magit-svn magit-svn-mode) "magit/magit-svn"
;;;;;;  "magit/magit-svn.el" (20878 29188 222821 16000))
;;; Generated autoloads from magit/magit-svn.el

(autoload 'magit-svn-mode "magit/magit-svn" "\
SVN support for Magit

\(fn &optional ARG)" t nil)

(autoload 'turn-on-magit-svn "magit/magit-svn" "\
Unconditionally turn on `magit-svn-mode'.

\(fn)" nil nil)

;;;***

;;;### (autoloads (turn-on-magit-topgit magit-topgit-mode) "magit/magit-topgit"
;;;;;;  "magit/magit-topgit.el" (20878 29188 222821 16000))
;;; Generated autoloads from magit/magit-topgit.el

(autoload 'magit-topgit-mode "magit/magit-topgit" "\
Topgit support for Magit

\(fn &optional ARG)" t nil)

(autoload 'turn-on-magit-topgit "magit/magit-topgit" "\
Unconditionally turn on `magit-topgit-mode'.

\(fn)" nil nil)

;;;***

;;;### (autoloads (global-magit-wip-save-mode magit-wip-save-mode
;;;;;;  magit-wip-mode) "magit/magit-wip" "magit/magit-wip.el" (20878
;;;;;;  29188 222821 16000))
;;; Generated autoloads from magit/magit-wip.el

(defvar magit-wip-mode nil "\
Non-nil if Magit-Wip mode is enabled.
See the command `magit-wip-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `magit-wip-mode'.")

(custom-autoload 'magit-wip-mode "magit/magit-wip" nil)

(autoload 'magit-wip-mode "magit/magit-wip" "\
In Magit log buffers; give wip refs a special appearance.

\(fn &optional ARG)" t nil)

(autoload 'magit-wip-save-mode "magit/magit-wip" "\
Magit support for committing to a work-in-progress ref.

When this minor mode is turned on and a file is saved inside a
writable git repository then it is also committed to a special
work-in-progress ref.

\(fn &optional ARG)" t nil)

(defvar global-magit-wip-save-mode nil "\
Non-nil if Global-Magit-Wip-Save mode is enabled.
See the command `global-magit-wip-save-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `global-magit-wip-save-mode'.")

(custom-autoload 'global-magit-wip-save-mode "magit/magit-wip" nil)

(autoload 'global-magit-wip-save-mode "magit/magit-wip" "\
Toggle Magit-Wip-Save mode in all buffers.
With prefix ARG, enable Global-Magit-Wip-Save mode if ARG is positive;
otherwise, disable it.  If called from Lisp, enable the mode if
ARG is omitted or nil.

Magit-Wip-Save mode is enabled in all buffers where
`turn-on-magit-wip-save' would do it.
See `magit-wip-save-mode' for more information on Magit-Wip-Save mode.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads (gfm-mode markdown-mode) "markdown-mode/markdown-mode"
;;;;;;  "markdown-mode/markdown-mode.el" (20878 23145 54093 507000))
;;; Generated autoloads from markdown-mode/markdown-mode.el

(autoload 'markdown-mode "markdown-mode/markdown-mode" "\
Major mode for editing Markdown files.

\(fn)" t nil)

(autoload 'gfm-mode "markdown-mode/markdown-mode" "\
Major mode for editing GitHub Flavored Markdown files.

\(fn)" t nil)

;;;***

;;;### (autoloads (mc/edit-beginnings-of-lines mc/edit-ends-of-lines
;;;;;;  mc/edit-lines) "multiple-cursors/mc-edit-lines" "multiple-cursors/mc-edit-lines.el"
;;;;;;  (20878 23143 578035 285000))
;;; Generated autoloads from multiple-cursors/mc-edit-lines.el

(autoload 'mc/edit-lines "multiple-cursors/mc-edit-lines" "\
Add one cursor to each line of the active region.
Starts from mark and moves in straight down or up towards the
line point is on.

\(fn)" t nil)

(autoload 'mc/edit-ends-of-lines "multiple-cursors/mc-edit-lines" "\
Add one cursor to the end of each line in the active region.

\(fn)" t nil)

(autoload 'mc/edit-beginnings-of-lines "multiple-cursors/mc-edit-lines" "\
Add one cursor to the beginning of each line in the active region.

\(fn)" t nil)

;;;***

;;;### (autoloads (mc/mark-sgml-tag-pair mc/add-cursor-on-click mc/mark-all-symbols-like-this-in-defun
;;;;;;  mc/mark-all-words-like-this-in-defun mc/mark-all-like-this-in-defun
;;;;;;  mc/mark-all-like-this-dwim mc/mark-more-like-this-extended
;;;;;;  mc/mark-all-in-region mc/mark-all-symbols-like-this mc/mark-all-words-like-this
;;;;;;  mc/mark-all-like-this mc/unmark-previous-like-this mc/unmark-next-like-this
;;;;;;  mc/mark-previous-lines mc/mark-next-lines mc/mark-previous-symbol-like-this
;;;;;;  mc/mark-previous-word-like-this mc/mark-previous-like-this
;;;;;;  mc/mark-next-symbol-like-this mc/mark-next-word-like-this
;;;;;;  mc/mark-next-like-this) "multiple-cursors/mc-mark-more" "multiple-cursors/mc-mark-more.el"
;;;;;;  (20878 23143 578035 285000))
;;; Generated autoloads from multiple-cursors/mc-mark-more.el

(autoload 'mc/mark-next-like-this "multiple-cursors/mc-mark-more" "\
Find and mark the next part of the buffer matching the currently active region
With negative ARG, delete the last one instead.
With zero ARG, skip the last one and mark next.

\(fn ARG)" t nil)

(autoload 'mc/mark-next-word-like-this "multiple-cursors/mc-mark-more" "\


\(fn ARG)" t nil)

(autoload 'mc/mark-next-symbol-like-this "multiple-cursors/mc-mark-more" "\


\(fn ARG)" t nil)

(autoload 'mc/mark-previous-like-this "multiple-cursors/mc-mark-more" "\
Find and mark the previous part of the buffer matching the currently active region
With negative ARG, delete the last one instead.
With zero ARG, skip the last one and mark next.

\(fn ARG)" t nil)

(autoload 'mc/mark-previous-word-like-this "multiple-cursors/mc-mark-more" "\


\(fn ARG)" t nil)

(autoload 'mc/mark-previous-symbol-like-this "multiple-cursors/mc-mark-more" "\


\(fn ARG)" t nil)

(autoload 'mc/mark-next-lines "multiple-cursors/mc-mark-more" "\


\(fn ARG)" t nil)

(autoload 'mc/mark-previous-lines "multiple-cursors/mc-mark-more" "\


\(fn ARG)" t nil)

(autoload 'mc/unmark-next-like-this "multiple-cursors/mc-mark-more" "\
Deselect next part of the buffer matching the currently active region.

\(fn ARG)" t nil)

(autoload 'mc/unmark-previous-like-this "multiple-cursors/mc-mark-more" "\
Deselect prev part of the buffer matching the currently active region.

\(fn ARG)" t nil)

(autoload 'mc/mark-all-like-this "multiple-cursors/mc-mark-more" "\
Find and mark all the parts of the buffer matching the currently active region

\(fn)" t nil)

(autoload 'mc/mark-all-words-like-this "multiple-cursors/mc-mark-more" "\


\(fn)" t nil)

(autoload 'mc/mark-all-symbols-like-this "multiple-cursors/mc-mark-more" "\


\(fn)" t nil)

(autoload 'mc/mark-all-in-region "multiple-cursors/mc-mark-more" "\
Find and mark all the parts in the region matching the given search

\(fn BEG END)" t nil)

(autoload 'mc/mark-more-like-this-extended "multiple-cursors/mc-mark-more" "\
Like mark-more-like-this, but then lets you adjust with arrows key.
The actual adjustment made depends on the final component of the
key-binding used to invoke the command, with all modifiers removed:

   <up>    Mark previous like this
   <down>  Mark next like this
   <left>  If last was previous, skip it
           If last was next, remove it
   <right> If last was next, skip it
           If last was previous, remove it

Then, continue to read input events and further add or move marks
as long as the input event read (with all modifiers removed)
is one of the above.

\(fn)" t nil)

(autoload 'mc/mark-all-like-this-dwim "multiple-cursors/mc-mark-more" "\
Tries to guess what you want to mark all of.
Can be pressed multiple times to increase selection.

With prefix, it behaves the same as original `mc/mark-all-like-this'

\(fn ARG)" t nil)

(autoload 'mc/mark-all-like-this-in-defun "multiple-cursors/mc-mark-more" "\
Mark all like this in defun.

\(fn)" t nil)

(autoload 'mc/mark-all-words-like-this-in-defun "multiple-cursors/mc-mark-more" "\
Mark all words like this in defun.

\(fn)" t nil)

(autoload 'mc/mark-all-symbols-like-this-in-defun "multiple-cursors/mc-mark-more" "\
Mark all symbols like this in defun.

\(fn)" t nil)

(autoload 'mc/add-cursor-on-click "multiple-cursors/mc-mark-more" "\
Add a cursor where you click.

\(fn EVENT)" t nil)

(autoload 'mc/mark-sgml-tag-pair "multiple-cursors/mc-mark-more" "\
Mark the tag we're in and its pair for renaming.

\(fn)" t nil)

;;;***

;;;### (autoloads (mode-compile-kill mode-compile mode-compile-submit-bug-report
;;;;;;  emacs-lisp-byte-compile-dir-interactive-p mode-compile-reading-time
;;;;;;  mode-compile-expert-p mode-compile-after-kill-hook mode-compile-before-kill-hook
;;;;;;  mode-compile-after-compile-hook mode-compile-before-compile-hook
;;;;;;  mode-compile-other-frame-p mode-compile-never-edit-command-p
;;;;;;  mode-compile-always-save-buffer-p mode-compile-save-all-p
;;;;;;  mode-compile-ignore-makerule-regexp mode-compile-prefered-default-makerule
;;;;;;  mode-compile-make-options mode-compile-ignore-makefile-backups
;;;;;;  mode-compile-make-program) "mode-compile/mode-compile" "mode-compile/mode-compile.el"
;;;;;;  (20878 29216 491787 958000))
;;; Generated autoloads from mode-compile/mode-compile.el

(defvar mode-compile-make-program "make" "\
*The `make' program used to process makefiles.

If you have GNU make installed with name \"gmake\" use it.")

(custom-autoload 'mode-compile-make-program "mode-compile/mode-compile" t)

(defvar mode-compile-ignore-makefile-backups t "\
*Tell mode compile to ignore makefiles backup files when selecting the Makefile to use.")

(custom-autoload 'mode-compile-ignore-makefile-backups "mode-compile/mode-compile" t)

(defvar mode-compile-default-make-options "-k" "\
Default options to give to `make'.")

(defvar mode-compile-make-options (eval mode-compile-default-make-options) "\
*Options to give to `make'.
This could be any form evaluating to a string.

Some people asked me a way to modify the make options everytime a
compilation command is launched, do that:
 (defun my-mode-compile-ask-make-options()
   \"*Hook called by mode-compile, asking for make options.\"
   (interactive)
   (read-string \"Make options: \"
                mode-compile-default-make-options))
 (setq mode-compile-make-options
           'my-mode-compile-ask-make-options)")

(custom-autoload 'mode-compile-make-options "mode-compile/mode-compile" t)

(defvar mode-compile-prefered-default-makerule 'none "\
*Default makerule you would like to see in minibuffer as a default choice
when selecting the make rule to build.

Possible values are:
'none    -- let mode-compile deciding for you.
'all     -- try hard to show you the \"all\" rule.
'default -- try hard to show you the \"default\" rule.
'file    -- try to show you the name of the file which will be
            result of compilation.
The 'none action is taken as default is something fail.")

(custom-autoload 'mode-compile-prefered-default-makerule "mode-compile/mode-compile" t)

(defvar mode-compile-ignore-makerule-regexp nil "\
*Makefile rules which must be ignored when building completion list.

For example if you want to remove all `files rules' set
it to: \"\\\\.\\\\([aoc]\\\\|s[ao][.0-9]*\\\\)\". ")

(custom-autoload 'mode-compile-ignore-makerule-regexp "mode-compile/mode-compile" t)

(defvar mode-compile-save-all-p nil "\
*Non-nil means save ALL the modified buffers without asking
before launching compilation command.")

(custom-autoload 'mode-compile-save-all-p "mode-compile/mode-compile" t)

(defvar mode-compile-always-save-buffer-p nil "\
*Non-nil means save the current buffer without asking
before launching compilation command.")

(custom-autoload 'mode-compile-always-save-buffer-p "mode-compile/mode-compile" t)

(defvar mode-compile-never-edit-command-p nil "\
*Non-nil means never ask to user to edit the compile command.")

(custom-autoload 'mode-compile-never-edit-command-p "mode-compile/mode-compile" t)

(defvar mode-compile-other-frame-p nil "\
*Non-nil means compile in another frame.

A new Emacs FRAME is created and the compilation command is executed
in this other frame.  To specify the frame parameters see also
variable `mode-compile-frame-parameters-alist'.")

(custom-autoload 'mode-compile-other-frame-p "mode-compile/mode-compile" t)

(defvar mode-compile-before-compile-hook nil "\
Hook to be run before compile command is executed
when `mode-compile' is invoked.")

(custom-autoload 'mode-compile-before-compile-hook "mode-compile/mode-compile" t)

(defvar mode-compile-after-compile-hook nil "\
Hook to be run after compile command is executed
when `mode-compile' is invoked.")

(custom-autoload 'mode-compile-after-compile-hook "mode-compile/mode-compile" t)

(defvar mode-compile-before-kill-hook nil "\
Hook to be run before killing compile command is executed
when `mode-compile-kill' is invoked.")

(custom-autoload 'mode-compile-before-kill-hook "mode-compile/mode-compile" t)

(defvar mode-compile-after-kill-hook nil "\
Hook to be run after killing compile command is executed
when `mode-compile-kill' is invoked.")

(custom-autoload 'mode-compile-after-kill-hook "mode-compile/mode-compile" t)

(defvar mode-compile-choosen-compiler nil "\
*Global variable containing the name of the compiler
which will be used for compiling without makefile.

 Could be used in combination with
 (cc|c++|ada|f77)-default-compiler-options
to automaticaly choose the compiler specific options.

example:
 (defun my-compiler-get-options()
   (cond
    ((string= mode-compile-choosen-compiler \"gcc\")
      \"-Wall -pedantic-errors\")
    ((string= mode-compile-choosen-compiler \"cc\")
      \"cc options whatever they are...\")
    (t
     (message \"Don't know this compiler: %s\" mode-compile-choosen-compiler)
     (read-string
      (format \"Options for %s compiler: \" mode-compile-choosen-compiler)))))

  (setq cc-default-compiler-options 'my-compiler-get-options)")

(defvar mode-compile-expert-p nil "\
*Non nil means `mode-compile' will not speaks too much.

See also variable variable mode-compile-reading-time.")

(custom-autoload 'mode-compile-expert-p "mode-compile/mode-compile" t)

(defvar mode-compile-reading-time 1 "\
*Seconds to wait in verbose mode after printing a message.

In verbose mode mode-compile print too much messages that it is
allmost impossible to read them. Just setting this delay leave you the
time to read all the messages. If you don't want any delay set it to
`0'.

See also function sit-for.")

(custom-autoload 'mode-compile-reading-time "mode-compile/mode-compile" t)

(defvar emacs-lisp-byte-compile-dir-interactive-p t "\
*Non-nil means when byte-compiling a directory ask for each file
needing to be recompiled or not.")

(custom-autoload 'emacs-lisp-byte-compile-dir-interactive-p "mode-compile/mode-compile" t)

(defconst mode-compile-version "2.28" "\
Current version of mode-compile package.

mode-compile.el,v 2.28 2003/04/01 13:52:47 boubaker Exp
Please send bugs-fixes/contributions/comments to boubaker@cena.fr")

(autoload 'mode-compile-submit-bug-report "mode-compile/mode-compile" "\
*Submit via mail a bug report on mode-compile v2.27.

\(fn)" t nil)

(autoload 'mode-compile "mode-compile/mode-compile" "\
*Compile the file in the current buffer with a dynamically built command.

The command is built according to the current major mode the function
was invoked from.

Running this command preceded by universal-argument (\\[universal-argument])
allows remote compilation, the user is prompted for a host name to run the
compilation command on.

Currently know how to compile in:
 `c-mode' ,              -- function cc-compile.
 `java-mode' ,           -- function java-compile.
 `c++-mode',             -- function c++-compile.
 `ada-mode',             -- function ada-compile.
 `fortran-mode',         -- function f77-compile.
 `emacs-lisp-mode'       -- function elisp-compile.
 `lisp-interaction-mode' -- function elisp-compile.
 `makefile-mode'         -- function makefile-compile.
 `dired-mode'            -- function dired-compile.
 `sh-mode'               -- function sh-compile.
 `csh-mode'              -- function csh-compile.
 `zsh-mode'              -- function zsh-compile.
 `perl-mode'             -- function perl-compile.
 `cperl-mode'            -- function perl-compile.
 `tcl-mode'              -- function tcl-compile.
 `python-mode'           -- function python-compile.
 `ruby-mode'             -- function ruby-compile.
 `fundamental-mode'      -- function guess-compile.
 `text-mode'             -- function guess-compile.
 `indented-text-mode'    -- function guess-compile.
 `compilation-mode'      -- function default-compile.
 The function `guess-compile' is called when mode is unknown.

The variable `mode-compile-modes-alist' contain description of known
modes.  The hooks variables `mode-compile-before-compile-hook' and
`mode-compile-after-compile-hook' are run just before and after
invoking the compile command of the mode.

Use the command `mode-compile-kill' (\\[mode-compile-kill]) to abort a
running compilation.

Bound on \\[mode-compile].

\(fn &optional REMOTE-HOST)" t nil)

(autoload 'mode-compile-kill "mode-compile/mode-compile" "\
*Kill the running compilation launched by `mode-compile' (\\[mode-compile]) command.

The compilation command is killed according to the current major mode
the function was invoked from.

Currently know how to kill compilations from:
 `c-mode' ,              -- function kill-compilation.
 `java-mode' ,           -- function kill-compilation.
 `c++-mode' ,            -- function kill-compilation.
 `ada-mode' ,            -- function kill-compilation.
 `fortran-mode' ,        -- function kill-compilation.
 `emacs-lisp-mode'       -- function keyboard-quit.
 `lisp-interaction-mode' -- function keyboard-quit.
 `makefile-mode'         -- function kill-compilation.
 `dired-mode'            -- function kill-compilation.
 `sh-mode'               -- function kill-compilation.
 `csh-mode'              -- function kill-compilation.
 `zsh-mode'              -- function kill-compilation.
 `perl-mode'             -- function kill-compilation.
 `cperl-mode'            -- function kill-compilation.
 `tcl-mode'              -- function kill-compilation.
 `python-mode'           -- function kill-compilation.
 `ruby-mode'             -- function kill-compilation.
 `fundamental-mode'      -- Bound dynamically.
 `text-mode'             -- Bound dynamically.
 `indented-text-mode'    -- Bound dynamically.
 `compilation-mode'      -- function kill-compilation.

The variable `mode-compile-modes-alist' contain description of ALL
known modes.  The hooks variables `mode-compile-before-kill-hook' and
`mode-compile-after-kill-hook' are run just before and after invoking
the kill compile command of the mode.

Bound on \\[mode-compile-kill].

\(fn)" t nil)

;;;***

;;;### (autoloads (nxhtml-byte-recompile-file nxhtml-byte-compile-file
;;;;;;  nxhtml-get-missing-files nxhtml-update-existing-files nxhtml-setup-download-all
;;;;;;  nxhtml-setup-auto-download nxhtml-setup-install) "nxhtml/nxhtml-web-vcs"
;;;;;;  "nxhtml/nxhtml-web-vcs.el" (20878 29495 569354 347000))
;;; Generated autoloads from nxhtml/nxhtml-web-vcs.el

(autoload 'nxhtml-setup-install "nxhtml/nxhtml-web-vcs" "\
Setup and start nXhtml installation.

This is for installation and updating directly from the nXhtml
development sources.

There are two different ways to install:

  (1) Download all at once: `nxhtml-setup-download-all'
  (2) Automatically download part by part: `nxhtml-setup-auto-download'

You can convert between those ways by calling this function again.
You can also do this by setting the option `nxhtml-autoload-web' yourself.

When you have nXhtml installed you can update it:

  (3) Update new files in nXhtml: `nxhtml-update-existing-files'

To learn more about nXhtml visit its home page at URL
`http://www.emacswiki.com/NxhtmlMode/'.

If you want to test auto download (but not use it further) there
is a special function for that, you answer T here:

   (T) Test automatic download part by part: `nxhtml-setup-test-auto-download'

======
*Note*
If you want to download a zip file with latest released version instead then
please see URL `http://ourcomments.org/Emacs/nXhtml/doc/nxhtml.html'.

\(fn WAY)" t nil)

(autoload 'nxhtml-setup-auto-download "nxhtml/nxhtml-web-vcs" "\
Set up to autoload nXhtml files from the web.

This function will download some initial files and then setup to
download the rest when you need them.

Files will be downloaded under the directory root you specify in
DL-DIR.

Note that files will not be upgraded automatically.  The auto
downloading is just for files you are missing. (This may change a
bit in the future.) If you want to upgrade those files that you
have downloaded you can just call `nxhtml-update-existing-files'.

You can easily switch between this mode of downloading or
downloading the whole of nXhtml by once.  To switch just call the
command `nxhtml-setup-install'.

See also the command `nxhtml-setup-download-all'.

Note: If your nXhtml is to old you can't use this function
      directly.  You have to upgrade first, se the function
      above. Version 2.07 or above is good for this.

\(fn DL-DIR)" t nil)

(autoload 'nxhtml-setup-download-all "nxhtml/nxhtml-web-vcs" "\
Download or update all of nXhtml.

You can download all if nXhtml with this command.

To update existing files use `nxhtml-update-existing-files'.

If you want to download only those files you are actually using
then call `nxhtml-setup-auto-download' instead.

See the command `nxhtml-setup-install' for a convenient way to
call these commands.

For more information about auto download of nXhtml files see
`nxhtml-setup-auto-download'.

\(fn DL-DIR)" t nil)

(autoload 'nxhtml-update-existing-files "nxhtml/nxhtml-web-vcs" "\
Update existing nXhtml files from the development sources.
Only files you already have will be updated.

Note that this works both if you have setup nXhtml to auto
download files as you need them or if you have downloaded all of
nXhtml at once.

For more information about installing and updating nXhtml see the
command `nxhtml-setup-install'.

\(fn)" t nil)

(autoload 'nxhtml-get-missing-files "nxhtml/nxhtml-web-vcs" "\
Download to SUB-DIR missing files matching FILE-NAME-LIST.
If FILE-NAME-LIST is nil download all missing files.
If it is a list download all missing files in the list.
If it is a regexp download all missing matching files.

\(fn SUB-DIR FILE-NAME-LIST)" nil nil)

(autoload 'nxhtml-byte-compile-file "nxhtml/nxhtml-web-vcs" "\


\(fn FILE &optional LOAD)" nil nil)

(autoload 'nxhtml-byte-recompile-file "nxhtml/nxhtml-web-vcs" "\
Byte recompile FILE file if necessary.
For more information see `nxhtml-byte-compile-file'.
Loading is done if recompiled and LOAD is t.

\(fn FILE &optional LOAD)" t nil)

;;;***

;;;### (autoloads (nxhtmlmaint-byte-uncompile-all nxhtmlmaint-byte-recompile
;;;;;;  nxhtmlmaint-start-byte-compilation) "nxhtml/nxhtmlmaint"
;;;;;;  "nxhtml/nxhtmlmaint.el" (20878 29495 597355 309000))
;;; Generated autoloads from nxhtml/nxhtmlmaint.el

(autoload 'nxhtmlmaint-start-byte-compilation "nxhtml/nxhtmlmaint" "\
Start byte compilation of nXhtml in new Emacs instance.
Byte compiling in general makes elisp code run 5-10 times faster
which is quite noticeable when you use nXhtml.

This will also update the file nxhtml-loaddefs.el.

You must restart Emacs to use the byte compiled files.

If for some reason the byte compiled files does not work you can
remove then with `nxhtmlmaint-byte-uncompile-all'.

See also `nxhtmlmaint-byte-recompile'

\(fn)" t nil)

(autoload 'nxhtmlmaint-byte-recompile "nxhtml/nxhtmlmaint" "\
Recompile or compile all nXhtml files in current Emacs.
Byte compile all elisp libraries whose .el files are newer their
.elc files.

\(fn)" t nil)

(autoload 'nxhtmlmaint-byte-uncompile-all "nxhtml/nxhtmlmaint" "\
Delete byte compiled files in nXhtml.
This will also update the file nxhtml-loaddefs.el.

See `nxhtmlmaint-start-byte-compilation' for byte compiling.

\(fn)" t nil)

;;;***

;;;### (autoloads (web-vcs-investigate-elisp-file web-vcs-url-copy-file
;;;;;;  web-vcs-url-retrieve-synch web-vcs-byte-compile-file web-vcs-message-with-face
;;;;;;  web-vcs-get-files-from-root web-vcs-log-edit web-vcs-default-download-directory)
;;;;;;  "nxhtml/web-vcs" "nxhtml/web-vcs.el" (20878 29495 657357
;;;;;;  370000))
;;; Generated autoloads from nxhtml/web-vcs.el

(autoload 'web-vcs-default-download-directory "nxhtml/web-vcs" "\
Try to find a suitable place.
Use the choice in `web-vcs-default-download-directory'.
If this does not fit fall back to \"~/.emacs.d/\".

\(fn)" nil nil)

(autoload 'web-vcs-log-edit "nxhtml/web-vcs" "\
Open log file.

\(fn)" t nil)

(autoload 'web-vcs-get-files-from-root "nxhtml/web-vcs" "\
Download a file tree from VCS system using the web interface.
Use WEB-VCS entry in variable `web-vcs-links-regexp' to download
files via http from FULL-URL to directory DL-DIR.

Show FULL-URL first and offer to visit the page.  That page will
give you information about version control system (VCS) system
used etc.

\(fn WEB-VCS FULL-URL DL-DIR)" nil nil)

(autoload 'web-vcs-message-with-face "nxhtml/web-vcs" "\
Display a colored message at the bottom of the string.
FACE is the face to use for the message.
FORMAT-STRING and ARGS are the same as for `message'.

Also put FACE on the message in *Messages* buffer.

\(fn FACE FORMAT-STRING &rest ARGS)" nil nil)

(autoload 'web-vcs-byte-compile-file "nxhtml/web-vcs" "\
Byte compile FILE in a new Emacs sub process.
EXTRA-LOAD-PATH is added to the front of `load-path' during
compilation.

FILE is set to `buffer-file-name' when called interactively.
If LOAD

\(fn FILE &optional LOAD EXTRA-LOAD-PATH COMP-DIR)" t nil)

(autoload 'web-vcs-url-retrieve-synch "nxhtml/web-vcs" "\
Retrieve URL, return cons with buffer and http status.

\(fn URL)" nil nil)

(autoload 'web-vcs-url-copy-file "nxhtml/web-vcs" "\
Copy URL to NEWNAME.  Both args must be strings.
Signals a `file-already-exists' error if file NEWNAME already exists,
unless a third argument OK-IF-ALREADY-EXISTS is supplied and non-nil.
A number as third arg means request confirmation if NEWNAME already exists.
This is what happens in interactive use with M-x.
Fourth arg KEEP-TIME non-nil means give the new file the same
last-modified time as the old one.  (This works on only some systems.)
Fifth arg PRESERVE-UID-GID is ignored.
A prefix arg makes KEEP-TIME non-nil.

\(fn URL NEWNAME &optional OK-IF-ALREADY-EXISTS KEEP-TIME PRESERVE-UID-GID)" nil nil)

(autoload 'web-vcs-investigate-elisp-file "nxhtml/web-vcs" "\


\(fn FILE-OR-BUFFER)" t nil)

;;;***

;;;### (autoloads (oauth2-url-retrieve-synchronously oauth2-auth-and-store
;;;;;;  oauth2-auth oauth2-refresh-access) "oauth2/oauth2" "oauth2/oauth2.el"
;;;;;;  (20731 64661 232183 444000))
;;; Generated autoloads from oauth2/oauth2.el

(autoload 'oauth2-refresh-access "oauth2/oauth2" "\
Refresh OAuth access TOKEN.
TOKEN should be obtained with `oauth2-request-access'.

\(fn TOKEN)" nil nil)

(autoload 'oauth2-auth "oauth2/oauth2" "\
Authenticate application via OAuth2.

\(fn AUTH-URL TOKEN-URL CLIENT-ID CLIENT-SECRET &optional SCOPE STATE REDIRECT-URI)" nil nil)

(autoload 'oauth2-auth-and-store "oauth2/oauth2" "\
Request access to a resource and store it using `plstore'.

\(fn AUTH-URL TOKEN-URL RESOURCE-URL CLIENT-ID CLIENT-SECRET &optional REDIRECT-URI)" nil nil)

(autoload 'oauth2-url-retrieve-synchronously "oauth2/oauth2" "\
Retrieve an URL synchronously using TOKENS to access it.
TOKENS can be obtained with `oauth2-auth'.

\(fn TOKEN URL &optional REQUEST-METHOD REQUEST-DATA REQUEST-EXTRA-HEADERS)" nil nil)

;;;***

;;;### (autoloads (org-caldav-sync) "org-caldav/org-caldav" "org-caldav/org-caldav.el"
;;;;;;  (20878 19176 691465 72000))
;;; Generated autoloads from org-caldav/org-caldav.el

(autoload 'org-caldav-sync "org-caldav/org-caldav" "\
Sync Org with calendar.

\(fn)" t nil)

;;;***

;;;### (autoloads (org-export-html5presentationize-generate-css org-export-as-html5presentation
;;;;;;  org-export-region-as-html5presentation org-replace-region-by-html5presentation
;;;;;;  org-export-as-html5presentation-to-buffer org-export-as-html5presentation-batch
;;;;;;  org-export-as-html5presentation-and-open) "org-html5presentation/org-html5presentation"
;;;;;;  "org-html5presentation/org-html5presentation.el" (20878 29216
;;;;;;  927802 875000))
;;; Generated autoloads from org-html5presentation/org-html5presentation.el

(put 'org-export-html5presentation-style-include-default 'safe-local-variable 'booleanp)

(put 'org-export-html5presentation-style 'safe-local-variable 'stringp)

(put 'org-export-html5presentation-style-extra 'safe-local-variable 'stringp)

(autoload 'org-export-as-html5presentation-and-open "org-html5presentation/org-html5presentation" "\
Export the outline as HTML and immediately open it with a browser.
If there is an active region, export only the region.
The prefix ARG specifies how many levels of the outline should become
headlines.  The default is 3.  Lower levels will become bulleted lists.

\(fn ARG)" t nil)

(autoload 'org-export-as-html5presentation-batch "org-html5presentation/org-html5presentation" "\
Call the function `org-export-as-html5presentation'.
This function can be used in batch processing as:
emacs   --batch
        --load=$HOME/lib/emacs/org.el
        --eval \"(setq org-export-headline-levels 2)\"
	--visit=MyFile --funcall org-export-as-html5presentation-batch

\(fn)" nil nil)

(autoload 'org-export-as-html5presentation-to-buffer "org-html5presentation/org-html5presentation" "\
Call `org-export-as-html5presentation` with output to a temporary buffer.
No file is created.  The prefix ARG is passed through to `org-export-as-html5presentation'.

\(fn ARG)" t nil)

(autoload 'org-replace-region-by-html5presentation "org-html5presentation/org-html5presentation" "\
Assume the current region has org-mode syntax, and convert it to HTML.
This can be used in any buffer.  For example, you could write an
itemized list in org-mode syntax in an HTML buffer and then use this
command to convert it.

\(fn BEG END)" t nil)

(autoload 'org-export-region-as-html5presentation "org-html5presentation/org-html5presentation" "\
Convert region from BEG to END in org-mode buffer to HTML.
If prefix arg BODY-ONLY is set, omit file header, footer, and table of
contents, and only produce the region of converted text, useful for
cut-and-paste operations.
If BUFFER is a buffer or a string, use/create that buffer as a target
of the converted HTML.  If BUFFER is the symbol `string', return the
produced HTML as a string and leave not buffer behind.  For example,
a Lisp program could call this function in the following way:

  (setq html (org-export-region-as-html5presentation beg end t 'string))

When called interactively, the output buffer is selected, and shown
in a window.  A non-interactive call will only return the buffer.

\(fn BEG END &optional ORG-HTML5PRESENTATION-BODY-ONLY BUFFER)" t nil)

(autoload 'org-export-as-html5presentation "org-html5presentation/org-html5presentation" "\
Export the outline as a pretty HTML file.
If there is an active region, export only the region.  The prefix
ARG specifies how many levels of the outline should become
headlines.  The default is 3.  Lower levels will become bulleted
lists.  HIDDEN is obsolete and does nothing.
EXT-PLIST is a property list with external parameters overriding
org-mode's default settings, but still inferior to file-local
settings.  When TO-BUFFER is non-nil, create a buffer with that
name and export to that buffer.  If TO-BUFFER is the symbol
`string', don't leave any buffer behind but just return the
resulting HTML as a string.  When BODY-ONLY is set, don't produce
the file header and footer, simply return the content of
<body>...</body>, without even the body tags themselves.  When
PUB-DIR is set, use this as the publishing directory.

\(fn ARG &optional HIDDEN EXT-PLIST TO-BUFFER ORG-HTML5PRESENTATION-BODY-ONLY PUB-DIR)" t nil)

(autoload 'org-export-html5presentationize-generate-css "org-html5presentation/org-html5presentation" "\
Create the CSS for all font definitions in the current Emacs session.
Use this to create face definitions in your CSS style file that can then
be used by code snippets transformed by htmlize.
This command just produces a buffer that contains class definitions for all
faces used in the current Emacs session.  You can copy and paste the ones you
need into your CSS file.

If you then set `org-export-html5presentationize-output-type' to `css', calls to
the function `org-export-html5presentationize-region-for-paste' will produce code
that uses these same face definitions.

\(fn)" t nil)

;;;***

;;;### (autoloads (org-export-impress-jsize-generate-css org-export-as-impress-js
;;;;;;  org-export-region-as-impress-js org-replace-region-by-html
;;;;;;  org-export-as-impress-js-to-buffer org-export-as-impress-js-batch
;;;;;;  org-export-as-impress-js-and-open) "org-impress-js/org-impress-js"
;;;;;;  "org-impress-js/org-impress-js.el" (20878 19177 627505 515000))
;;; Generated autoloads from org-impress-js/org-impress-js.el

(put 'org-export-impress-js-style-include-default 'safe-local-variable 'booleanp)

(put 'org-export-impress-js-style 'safe-local-variable 'stringp)

(put 'org-export-impress-js-style-extra 'safe-local-variable 'stringp)

(autoload 'org-export-as-impress-js-and-open "org-impress-js/org-impress-js" "\
Export the outline as HTML and immediately open it with a browser.
If there is an active region, export only the region.
The prefix ARG specifies how many levels of the outline should become
headlines.  The default is 3.  Lower levels will become bulleted lists.

\(fn ARG)" t nil)

(autoload 'org-export-as-impress-js-batch "org-impress-js/org-impress-js" "\
Call the function `org-export-as-impress-js'.
This function can be used in batch processing as:
emacs   --batch
        --load=$HOME/lib/emacs/org.el
        --eval \"(setq org-export-headline-levels 2)\"
        --visit=MyFile --funcall org-export-as-impress-js-batch

\(fn)" nil nil)

(autoload 'org-export-as-impress-js-to-buffer "org-impress-js/org-impress-js" "\
Call `org-export-as-impress-js` with output to a temporary buffer.
No file is created.  The prefix ARG is passed through to `org-export-as-impress-js'.

\(fn ARG)" t nil)

(autoload 'org-replace-region-by-html "org-impress-js/org-impress-js" "\
Assume the current region has org-mode syntax, and convert it to HTML.
This can be used in any buffer.  For example, you could write an
itemized list in org-mode syntax in an HTML buffer and then use this
command to convert it.

\(fn BEG END)" t nil)

(autoload 'org-export-region-as-impress-js "org-impress-js/org-impress-js" "\
Convert region from BEG to END in org-mode buffer to HTML.
If prefix arg BODY-ONLY is set, omit file header, footer, and table of
contents, and only produce the region of converted text, useful for
cut-and-paste operations.
If BUFFER is a buffer or a string, use/create that buffer as a target
of the converted HTML.  If BUFFER is the symbol `string', return the
produced HTML as a string and leave not buffer behind.  For example,
a Lisp program could call this function in the following way:

  (setq html (org-export-region-as-impress-js beg end t 'string))

When called interactively, the output buffer is selected, and shown
in a window.  A non-interactive call will only return the buffer.

\(fn BEG END &optional BODY-ONLY BUFFER)" t nil)

(autoload 'org-export-as-impress-js "org-impress-js/org-impress-js" "\
Export the outline as a pretty HTML file.
If there is an active region, export only the region.  The prefix
ARG specifies how many levels of the outline should become
headlines.  The default is 3.  Lower levels will become bulleted
lists.  HIDDEN is obsolete and does nothing.
EXT-PLIST is a property list with external parameters overriding
org-mode's default settings, but still inferior to file-local
settings.  When TO-BUFFER is non-nil, create a buffer with that
name and export to that buffer.  If TO-BUFFER is the symbol
`string', don't leave any buffer behind but just return the
resulting HTML as a string.  When BODY-ONLY is set, don't produce
the file header and footer, simply return the content of
<body>...</body>, without even the body tags themselves.  When
PUB-DIR is set, use this as the publishing directory.

\(fn ARG &optional HIDDEN EXT-PLIST TO-BUFFER BODY-ONLY PUB-DIR)" t nil)

(autoload 'org-export-impress-jsize-generate-css "org-impress-js/org-impress-js" "\
Create the CSS for all font definitions in the current Emacs session.
Use this to create face definitions in your CSS style file that can then
be used by code snippets transformed by htmlize.
This command just produces a buffer that contains class definitions for all
faces used in the current Emacs session.  You can copy and paste the ones you
need into your CSS file.

If you then set `org-export-impress-jsize-output-type' to `css', calls to
the function `org-export-impress-jsize-region-for-paste' will produce code
that uses these same face definitions.

\(fn)" t nil)

;;;***

;;;### (autoloads (htmlize-many-files-dired htmlize-many-files htmlize-file
;;;;;;  htmlize-region htmlize-buffer) "org-mode/contrib/lisp/htmlize"
;;;;;;  "org-mode/contrib/lisp/htmlize.el" (20878 23160 286694 411000))
;;; Generated autoloads from org-mode/contrib/lisp/htmlize.el

(autoload 'htmlize-buffer "org-mode/contrib/lisp/htmlize" "\
Convert BUFFER to HTML, preserving colors and decorations.

The generated HTML is available in a new buffer, which is returned.
When invoked interactively, the new buffer is selected in the current
window.  The title of the generated document will be set to the buffer's
file name or, if that's not available, to the buffer's name.

Note that htmlize doesn't fontify your buffers, it only uses the
decorations that are already present.  If you don't set up font-lock or
something else to fontify your buffers, the resulting HTML will be
plain.  Likewise, if you don't like the choice of colors, fix the mode
that created them, or simply alter the faces it uses.

\(fn &optional BUFFER)" t nil)

(autoload 'htmlize-region "org-mode/contrib/lisp/htmlize" "\
Convert the region to HTML, preserving colors and decorations.
See `htmlize-buffer' for details.

\(fn BEG END)" t nil)

(autoload 'htmlize-file "org-mode/contrib/lisp/htmlize" "\
Load FILE, fontify it, convert it to HTML, and save the result.

Contents of FILE are inserted into a temporary buffer, whose major mode
is set with `normal-mode' as appropriate for the file type.  The buffer
is subsequently fontified with `font-lock' and converted to HTML.  Note
that, unlike `htmlize-buffer', this function explicitly turns on
font-lock.  If a form of highlighting other than font-lock is desired,
please use `htmlize-buffer' directly on buffers so highlighted.

Buffers currently visiting FILE are unaffected by this function.  The
function does not change current buffer or move the point.

If TARGET is specified and names a directory, the resulting file will be
saved there instead of to FILE's directory.  If TARGET is specified and
does not name a directory, it will be used as output file name.

\(fn FILE &optional TARGET)" t nil)

(autoload 'htmlize-many-files "org-mode/contrib/lisp/htmlize" "\
Convert FILES to HTML and save the corresponding HTML versions.

FILES should be a list of file names to convert.  This function calls
`htmlize-file' on each file; see that function for details.  When
invoked interactively, you are prompted for a list of files to convert,
terminated with RET.

If TARGET-DIRECTORY is specified, the HTML files will be saved to that
directory.  Normally, each HTML file is saved to the directory of the
corresponding source file.

\(fn FILES &optional TARGET-DIRECTORY)" t nil)

(autoload 'htmlize-many-files-dired "org-mode/contrib/lisp/htmlize" "\
HTMLize dired-marked files.

\(fn ARG &optional TARGET-DIRECTORY)" t nil)

;;;***

;;;### (autoloads (org-bullets-mode) "org-mode/contrib/lisp/org-bullets"
;;;;;;  "org-mode/contrib/lisp/org-bullets.el" (20878 23160 290694
;;;;;;  569000))
;;; Generated autoloads from org-mode/contrib/lisp/org-bullets.el

(autoload 'org-bullets-mode "org-mode/contrib/lisp/org-bullets" "\
UTF-8 bullets for `org-mode'.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads (org-contacts) "org-mode/contrib/lisp/org-contacts"
;;;;;;  "org-mode/contrib/lisp/org-contacts.el" (20878 23160 290694
;;;;;;  569000))
;;; Generated autoloads from org-mode/contrib/lisp/org-contacts.el

(autoload 'org-contacts "org-mode/contrib/lisp/org-contacts" "\
Create agenda view for contacts matching NAME.

\(fn NAME)" t nil)

;;;***

;;;### (autoloads (org-registry-update org-registry-insinuate org-registry-initialize
;;;;;;  org-registry-visit org-registry-show) "org-mode/contrib/lisp/org-registry"
;;;;;;  "org-mode/contrib/lisp/org-registry.el" (20878 23160 294694
;;;;;;  727000))
;;; Generated autoloads from org-mode/contrib/lisp/org-registry.el

(autoload 'org-registry-show "org-mode/contrib/lisp/org-registry" "\
Show Org files where there are links pointing to the current
buffer.

\(fn &optional VISIT)" t nil)

(autoload 'org-registry-visit "org-mode/contrib/lisp/org-registry" "\
If an Org file contains a link to the current location, visit
this file.

\(fn)" t nil)

(autoload 'org-registry-initialize "org-mode/contrib/lisp/org-registry" "\
Initialize `org-registry-alist'.
If FROM-SCRATCH is non-nil or the registry does not exist yet,
create a new registry from scratch and eval it. If the registry
exists, eval `org-registry-file' and make it the new value for
`org-registry-alist'.

\(fn &optional FROM-SCRATCH)" t nil)

(autoload 'org-registry-insinuate "org-mode/contrib/lisp/org-registry" "\
Call `org-registry-update' after saving in Org-mode.
Use with caution.  This could slow down things a bit.

\(fn)" t nil)

(autoload 'org-registry-update "org-mode/contrib/lisp/org-registry" "\
Update the registry for the current Org file.

\(fn)" t nil)

;;;***

;;;### (autoloads (org-toc-show) "org-mode/contrib/lisp/org-toc"
;;;;;;  "org-mode/contrib/lisp/org-toc.el" (20878 23160 294694 727000))
;;; Generated autoloads from org-mode/contrib/lisp/org-toc.el

(autoload 'org-toc-show "org-mode/contrib/lisp/org-toc" "\
Show the table of contents of the current Org-mode buffer.

\(fn &optional DEPTH POSITION)" t nil)

;;;***

;;;### (autoloads (org-track-compile-org org-track-fetch-package)
;;;;;;  "org-mode/contrib/lisp/org-track" "org-mode/contrib/lisp/org-track.el"
;;;;;;  (20878 23160 294694 727000))
;;; Generated autoloads from org-mode/contrib/lisp/org-track.el

(autoload 'org-track-fetch-package "org-mode/contrib/lisp/org-track" "\
Fetch Org package depending on `org-track-fetch-package-extension'.
If DIRECTORY is defined, unpack the package there, i.e. add the
subdirectory org-mode/ to DIRECTORY.

\(fn &optional DIRECTORY)" t nil)

(autoload 'org-track-compile-org "org-mode/contrib/lisp/org-track" "\
Compile all *.el files that come with org-mode.
Generate the autoloads file `org-loaddefs.el'.

DIRECTORY is where the directory org-mode/ lives (i.e. the
          parent directory of your local repo.

\(fn &optional DIRECTORY)" t nil)

;;;***

;;;### (autoloads (org-freemind-export-to-freemind) "org-mode/contrib/lisp/ox-freemind"
;;;;;;  "org-mode/contrib/lisp/ox-freemind.el" (20878 23160 298694
;;;;;;  885000))
;;; Generated autoloads from org-mode/contrib/lisp/ox-freemind.el

(autoload 'org-freemind-export-to-freemind "org-mode/contrib/lisp/ox-freemind" "\
Export current buffer to a Freemind Mindmap file.

If narrowing is active in the current buffer, only export its
narrowed part.

If a region is active, export that region.

A non-nil optional argument ASYNC means the process should happen
asynchronously.  The resulting file should be accessible through
the `org-export-stack' interface.

When optional argument SUBTREEP is non-nil, export the sub-tree
at point, extracting information from the headline properties
first.

When optional argument VISIBLE-ONLY is non-nil, don't export
contents of hidden elements.

When optional argument BODY-ONLY is non-nil, only write code
between \"<body>\" and \"</body>\" tags.

EXT-PLIST, when provided, is a property list with external
parameters overriding Org default settings, but still inferior to
file-local settings.

Return output file's name.

\(fn &optional ASYNC SUBTREEP VISIBLE-ONLY BODY-ONLY EXT-PLIST)" t nil)

;;;***

;;;### (autoloads (org-koma-letter-export-to-pdf org-koma-letter-export-to-latex
;;;;;;  org-koma-letter-export-as-latex) "org-mode/contrib/lisp/ox-koma-letter"
;;;;;;  "org-mode/contrib/lisp/ox-koma-letter.el" (20878 23160 298694
;;;;;;  885000))
;;; Generated autoloads from org-mode/contrib/lisp/ox-koma-letter.el

(autoload 'org-koma-letter-export-as-latex "org-mode/contrib/lisp/ox-koma-letter" "\
Export current buffer as a KOMA Scrlttr2 letter.

If narrowing is active in the current buffer, only export its
narrowed part.

If a region is active, export that region.

A non-nil optional argument ASYNC means the process should happen
asynchronously.  The resulting buffer should be accessible
through the `org-export-stack' interface.

When optional argument SUBTREEP is non-nil, export the sub-tree
at point, extracting information from the headline properties
first.

When optional argument VISIBLE-ONLY is non-nil, don't export
contents of hidden elements.

When optional argument BODY-ONLY is non-nil, only write code
between \"\\begin{letter}\" and \"\\end{letter}\".

EXT-PLIST, when provided, is a property list with external
parameters overriding Org default settings, but still inferior to
file-local settings.

Export is done in a buffer named \"*Org KOMA-LETTER Export*\".  It
will be displayed if `org-export-show-temporary-export-buffer' is
non-nil.

\(fn &optional ASYNC SUBTREEP VISIBLE-ONLY BODY-ONLY EXT-PLIST)" t nil)

(autoload 'org-koma-letter-export-to-latex "org-mode/contrib/lisp/ox-koma-letter" "\
Export current buffer as a KOMA Scrlttr2 letter (tex).

If narrowing is active in the current buffer, only export its
narrowed part.

If a region is active, export that region.

A non-nil optional argument ASYNC means the process should happen
asynchronously.  The resulting file should be accessible through
the `org-export-stack' interface.

When optional argument SUBTREEP is non-nil, export the sub-tree
at point, extracting information from the headline properties
first.

When optional argument VISIBLE-ONLY is non-nil, don't export
contents of hidden elements.

When optional argument BODY-ONLY is non-nil, only write code
between \"\\begin{letter}\" and \"\\end{letter}\".

EXT-PLIST, when provided, is a property list with external
parameters overriding Org default settings, but still inferior to
file-local settings.

When optional argument PUB-DIR is set, use it as the publishing
directory.

Return output file's name.

\(fn &optional ASYNC SUBTREEP VISIBLE-ONLY BODY-ONLY EXT-PLIST)" t nil)

(autoload 'org-koma-letter-export-to-pdf "org-mode/contrib/lisp/ox-koma-letter" "\
Export current buffer as a KOMA Scrlttr2 letter (pdf).

If narrowing is active in the current buffer, only export its
narrowed part.

If a region is active, export that region.

A non-nil optional argument ASYNC means the process should happen
asynchronously.  The resulting file should be accessible through
the `org-export-stack' interface.

When optional argument SUBTREEP is non-nil, export the sub-tree
at point, extracting information from the headline properties
first.

When optional argument VISIBLE-ONLY is non-nil, don't export
contents of hidden elements.

When optional argument BODY-ONLY is non-nil, only write code
between \"\\begin{letter}\" and \"\\end{letter}\".

EXT-PLIST, when provided, is a property list with external
parameters overriding Org default settings, but still inferior to
file-local settings.

Return PDF file's name.

\(fn &optional ASYNC SUBTREEP VISIBLE-ONLY BODY-ONLY EXT-PLIST)" t nil)

;;;***

;;;### (autoloads (org-rss-publish-to-rss org-rss-export-to-rss org-rss-export-as-rss)
;;;;;;  "org-mode/contrib/lisp/ox-rss" "org-mode/contrib/lisp/ox-rss.el"
;;;;;;  (20878 23160 298694 885000))
;;; Generated autoloads from org-mode/contrib/lisp/ox-rss.el

(autoload 'org-rss-export-as-rss "org-mode/contrib/lisp/ox-rss" "\
Export current buffer to a RSS buffer.

If narrowing is active in the current buffer, only export its
narrowed part.

If a region is active, export that region.

A non-nil optional argument ASYNC means the process should happen
asynchronously.  The resulting buffer should be accessible
through the `org-export-stack' interface.

When optional argument SUBTREEP is non-nil, export the sub-tree
at point, extracting information from the headline properties
first.

When optional argument VISIBLE-ONLY is non-nil, don't export
contents of hidden elements.

Export is done in a buffer named \"*Org RSS Export*\", which will
be displayed when `org-export-show-temporary-export-buffer' is
non-nil.

\(fn &optional ASYNC SUBTREEP VISIBLE-ONLY)" t nil)

(autoload 'org-rss-export-to-rss "org-mode/contrib/lisp/ox-rss" "\
Export current buffer to a RSS file.

If narrowing is active in the current buffer, only export its
narrowed part.

If a region is active, export that region.

A non-nil optional argument ASYNC means the process should happen
asynchronously.  The resulting file should be accessible through
the `org-export-stack' interface.

When optional argument SUBTREEP is non-nil, export the sub-tree
at point, extracting information from the headline properties
first.

When optional argument VISIBLE-ONLY is non-nil, don't export
contents of hidden elements.

Return output file's name.

\(fn &optional ASYNC SUBTREEP VISIBLE-ONLY)" t nil)

(autoload 'org-rss-publish-to-rss "org-mode/contrib/lisp/ox-rss" "\
Publish an org file to RSS.

FILENAME is the filename of the Org file to be published.  PLIST
is the property list for the given project.  PUB-DIR is the
publishing directory.

Return output file name.

\(fn PLIST FILENAME PUB-DIR)" nil nil)

;;;***

;;;### (autoloads (org-taskjuggler-export-process-and-open org-taskjuggler-export-and-process
;;;;;;  org-taskjuggler-export) "org-mode/contrib/lisp/ox-taskjuggler"
;;;;;;  "org-mode/contrib/lisp/ox-taskjuggler.el" (20878 23160 298694
;;;;;;  885000))
;;; Generated autoloads from org-mode/contrib/lisp/ox-taskjuggler.el

(autoload 'org-taskjuggler-export "org-mode/contrib/lisp/ox-taskjuggler" "\
Export current buffer to a TaskJuggler file.

The exporter looks for a tree with tag that matches
`org-taskjuggler-project-tag' and takes this as the tasks for
this project.  The first node of this tree defines the project
properties such as project name and project period.

If there is a tree with tag that matches
`org-taskjuggler-resource-tag' this tree is taken as resources
for the project.  If no resources are specified, a default
resource is created and allocated to the project.

Also the TaskJuggler project will be created with default reports
as defined in `org-taskjuggler-default-reports'.

If narrowing is active in the current buffer, only export its
narrowed part.

If a region is active, export that region.

A non-nil optional argument ASYNC means the process should happen
asynchronously.  The resulting file should be accessible through
the `org-export-stack' interface.

When optional argument SUBTREEP is non-nil, export the sub-tree
at point, extracting information from the headline properties
first.

When optional argument VISIBLE-ONLY is non-nil, don't export
contents of hidden elements.

Return output file's name.

\(fn &optional ASYNC SUBTREEP VISIBLE-ONLY)" t nil)

(autoload 'org-taskjuggler-export-and-process "org-mode/contrib/lisp/ox-taskjuggler" "\
Export current buffer to a TaskJuggler file and process it.

The exporter looks for a tree with tag that matches
`org-taskjuggler-project-tag' and takes this as the tasks for
this project.  The first node of this tree defines the project
properties such as project name and project period.

If there is a tree with tag that matches
`org-taskjuggler-resource-tag' this tree is taken as resources
for the project.  If no resources are specified, a default
resource is created and allocated to the project.

Also the TaskJuggler project will be created with default reports
as defined in `org-taskjuggler-default-reports'.

If narrowing is active in the current buffer, only export its
narrowed part.

If a region is active, export that region.

When optional argument SUBTREEP is non-nil, export the sub-tree
at point, extracting information from the headline properties
first.

When optional argument VISIBLE-ONLY is non-nil, don't export
contents of hidden elements.

Return a list of reports.

\(fn &optional SUBTREEP VISIBLE-ONLY)" t nil)

(autoload 'org-taskjuggler-export-process-and-open "org-mode/contrib/lisp/ox-taskjuggler" "\
Export current buffer to a TaskJuggler file, process and open it.

Export and process the file using
`org-taskjuggler-export-and-process' and open the generated
reports with a browser.

If you are targeting TaskJuggler 2.4 (see
`org-taskjuggler-target-version') the processing and display of
the reports is done using the TaskJuggler GUI.

\(fn &optional SUBTREEP VISIBLE-ONLY)" t nil)

;;;***

;;;### (autoloads (org-customize org-reload org-submit-bug-report
;;;;;;  org-cycle-agenda-files org-switchb org-open-link-from-string
;;;;;;  org-open-at-point-global org-insert-link-global org-store-link
;;;;;;  org-run-like-in-org-mode turn-on-orgstruct++ turn-on-orgstruct
;;;;;;  orgstruct-mode org-global-cycle org-cycle org-mode org-clock-persistence-insinuate
;;;;;;  turn-on-orgtbl org-version org-babel-load-file org-babel-do-load-languages)
;;;;;;  "org-mode/lisp/org" "org-mode/lisp/org.el" (20878 23160 342696
;;;;;;  621000))
;;; Generated autoloads from org-mode/lisp/org.el

(autoload 'org-babel-do-load-languages "org-mode/lisp/org" "\
Load the languages defined in `org-babel-load-languages'.

\(fn SYM VALUE)" nil nil)

(autoload 'org-babel-load-file "org-mode/lisp/org" "\
Load Emacs Lisp source code blocks in the Org-mode FILE.
This function exports the source code using `org-babel-tangle'
and then loads the resulting file using `load-file'.  With prefix
arg (noninteractively: 2nd arg) COMPILE the tangled Emacs Lisp
file to byte-code before it is loaded.

\(fn FILE &optional COMPILE)" t nil)

(autoload 'org-version "org-mode/lisp/org" "\
Show the org-mode version in the echo area.
With prefix argument HERE, insert it at point.
When FULL is non-nil, use a verbose version string.
When MESSAGE is non-nil, display a message with the version.

\(fn &optional HERE FULL MESSAGE)" t nil)

(autoload 'turn-on-orgtbl "org-mode/lisp/org" "\
Unconditionally turn on `orgtbl-mode'.

\(fn)" nil nil)

(autoload 'org-clock-persistence-insinuate "org-mode/lisp/org" "\
Set up hooks for clock persistence.

\(fn)" nil nil)

(autoload 'org-mode "org-mode/lisp/org" "\
Outline-based notes management and organizer, alias
\"Carsten's outline-mode for keeping track of everything.\"

Org-mode develops organizational tasks around a NOTES file which
contains information about projects as plain text.  Org-mode is
implemented on top of outline-mode, which is ideal to keep the content
of large files well structured.  It supports ToDo items, deadlines and
time stamps, which magically appear in the diary listing of the Emacs
calendar.  Tables are easily created with a built-in table editor.
Plain text URL-like links connect to websites, emails (VM), Usenet
messages (Gnus), BBDB entries, and any files related to the project.
For printing and sharing of notes, an Org-mode file (or a part of it)
can be exported as a structured ASCII or HTML file.

The following commands are available:

\\{org-mode-map}

\(fn)" t nil)

(autoload 'org-cycle "org-mode/lisp/org" "\
TAB-action and visibility cycling for Org-mode.

This is the command invoked in Org-mode by the TAB key.  Its main purpose
is outline visibility cycling, but it also invokes other actions
in special contexts.

- When this function is called with a prefix argument, rotate the entire
  buffer through 3 states (global cycling)
  1. OVERVIEW: Show only top-level headlines.
  2. CONTENTS: Show all headlines of all levels, but no body text.
  3. SHOW ALL: Show everything.
  When called with two `C-u C-u' prefixes, switch to the startup visibility,
  determined by the variable `org-startup-folded', and by any VISIBILITY
  properties in the buffer.
  When called with three `C-u C-u C-u' prefixed, show the entire buffer,
  including any drawers.

- When inside a table, re-align the table and move to the next field.

- When point is at the beginning of a headline, rotate the subtree started
  by this line through 3 different states (local cycling)
  1. FOLDED:   Only the main headline is shown.
  2. CHILDREN: The main headline and the direct children are shown.
               From this state, you can move to one of the children
               and zoom in further.
  3. SUBTREE:  Show the entire subtree, including body text.
  If there is no subtree, switch directly from CHILDREN to FOLDED.

- When point is at the beginning of an empty headline and the variable
  `org-cycle-level-after-item/entry-creation' is set, cycle the level
  of the headline by demoting and promoting it to likely levels.  This
  speeds up creation document structure by pressing TAB once or several
  times right after creating a new headline.

- When there is a numeric prefix, go up to a heading with level ARG, do
  a `show-subtree' and return to the previous cursor position.  If ARG
  is negative, go up that many levels.

- When point is not at the beginning of a headline, execute the global
  binding for TAB, which is re-indenting the line.  See the option
  `org-cycle-emulate-tab' for details.

- Special case: if point is at the beginning of the buffer and there is
  no headline in line 1, this function will act as if called with prefix arg
  (C-u TAB, same as S-TAB) also when called without prefix arg.
  But only if also the variable `org-cycle-global-at-bob' is t.

\(fn &optional ARG)" t nil)

(autoload 'org-global-cycle "org-mode/lisp/org" "\
Cycle the global visibility.  For details see `org-cycle'.
With \\[universal-argument] prefix arg, switch to startup visibility.
With a numeric prefix, show all headlines up to that level.

\(fn &optional ARG)" t nil)
(put 'orgstruct-heading-prefix-regexp 'safe-local-variable 'stringp)

(autoload 'orgstruct-mode "org-mode/lisp/org" "\
Toggle the minor mode `orgstruct-mode'.
This mode is for using Org-mode structure commands in other
modes.  The following keys behave as if Org-mode were active, if
the cursor is on a headline, or on a plain list item (both as
defined by Org-mode).

\(fn &optional ARG)" t nil)

(autoload 'turn-on-orgstruct "org-mode/lisp/org" "\
Unconditionally turn on `orgstruct-mode'.

\(fn)" nil nil)

(autoload 'turn-on-orgstruct++ "org-mode/lisp/org" "\
Unconditionally turn on `orgstruct++-mode'.

\(fn)" nil nil)

(autoload 'org-run-like-in-org-mode "org-mode/lisp/org" "\
Run a command, pretending that the current buffer is in Org-mode.
This will temporarily bind local variables that are typically bound in
Org-mode to the values they have in Org-mode, and then interactively
call CMD.

\(fn CMD)" nil nil)

(autoload 'org-store-link "org-mode/lisp/org" "\
\\<org-mode-map>Store an org-link to the current location.
This link is added to `org-stored-links' and can later be inserted
into an org-buffer with \\[org-insert-link].

For some link types, a prefix arg is interpreted.
For links to Usenet articles, arg negates `org-gnus-prefer-web-links'.
For file links, arg negates `org-context-in-file-links'.

A double prefix arg force skipping storing functions that are not
part of Org's core.

A triple prefix arg force storing a link for each line in the
active region.

\(fn ARG)" t nil)

(autoload 'org-insert-link-global "org-mode/lisp/org" "\
Insert a link like Org-mode does.
This command can be called in any mode to insert a link in Org-mode syntax.

\(fn)" t nil)

(autoload 'org-open-at-point-global "org-mode/lisp/org" "\
Follow a link like Org-mode does.
This command can be called in any mode to follow a link that has
Org-mode syntax.

\(fn)" t nil)

(autoload 'org-open-link-from-string "org-mode/lisp/org" "\
Open a link in the string S, as if it was in Org-mode.

\(fn S &optional ARG REFERENCE-BUFFER)" t nil)

(autoload 'org-switchb "org-mode/lisp/org" "\
Switch between Org buffers.
With one prefix argument, restrict available buffers to files.
With two prefix arguments, restrict available buffers to agenda files.

Defaults to `iswitchb' for buffer name completion.
Set `org-completion-use-ido' to make it use ido instead.

\(fn &optional ARG)" t nil)

(defalias 'org-ido-switchb 'org-switchb)

(defalias 'org-iswitchb 'org-switchb)

(autoload 'org-cycle-agenda-files "org-mode/lisp/org" "\
Cycle through the files in `org-agenda-files'.
If the current buffer visits an agenda file, find the next one in the list.
If the current buffer does not, find the first agenda file.

\(fn)" t nil)

(autoload 'org-submit-bug-report "org-mode/lisp/org" "\
Submit a bug report on Org-mode via mail.

Don't hesitate to report any problems or inaccurate documentation.

If you don't have setup sending mail from (X)Emacs, please copy the
output buffer into your mail program, as it gives us important
information about your Org-mode version and configuration.

\(fn)" t nil)

(autoload 'org-reload "org-mode/lisp/org" "\
Reload all org lisp files.
With prefix arg UNCOMPILED, load the uncompiled versions.

\(fn &optional UNCOMPILED)" t nil)

(autoload 'org-customize "org-mode/lisp/org" "\
Call the customize function with org as argument.

\(fn)" t nil)

;;;***

;;;### (autoloads (org-agenda-to-appt org-calendar-goto-agenda org-diary
;;;;;;  org-agenda-list-stuck-projects org-tags-view org-todo-list
;;;;;;  org-search-view org-agenda-list org-batch-store-agenda-views
;;;;;;  org-store-agenda-views org-batch-agenda-csv org-batch-agenda
;;;;;;  org-agenda org-toggle-sticky-agenda) "org-mode/lisp/org-agenda"
;;;;;;  "org-mode/lisp/org-agenda.el" (20878 23160 318695 674000))
;;; Generated autoloads from org-mode/lisp/org-agenda.el

(autoload 'org-toggle-sticky-agenda "org-mode/lisp/org-agenda" "\
Toggle `org-agenda-sticky'.

\(fn &optional ARG)" t nil)

(autoload 'org-agenda "org-mode/lisp/org-agenda" "\
Dispatch agenda commands to collect entries to the agenda buffer.
Prompts for a command to execute.  Any prefix arg will be passed
on to the selected command.  The default selections are:

a     Call `org-agenda-list' to display the agenda for current day or week.
t     Call `org-todo-list' to display the global todo list.
T     Call `org-todo-list' to display the global todo list, select only
      entries with a specific TODO keyword (the user gets a prompt).
m     Call `org-tags-view' to display headlines with tags matching
      a condition  (the user is prompted for the condition).
M     Like `m', but select only TODO entries, no ordinary headlines.
L     Create a timeline for the current buffer.
e     Export views to associated files.
s     Search entries for keywords.
S     Search entries for keywords, only with TODO keywords.
/     Multi occur across all agenda files and also files listed
      in `org-agenda-text-search-extra-files'.
<     Restrict agenda commands to buffer, subtree, or region.
      Press several times to get the desired effect.
>     Remove a previous restriction.
#     List \"stuck\" projects.
!     Configure what \"stuck\" means.
C     Configure custom agenda commands.

More commands can be added by configuring the variable
`org-agenda-custom-commands'.  In particular, specific tags and TODO keyword
searches can be pre-defined in this way.

If the current buffer is in Org-mode and visiting a file, you can also
first press `<' once to indicate that the agenda should be temporarily
\(until the next use of \\[org-agenda]) restricted to the current file.
Pressing `<' twice means to restrict to the current subtree or region
\(if active).

\(fn &optional ARG ORG-KEYS RESTRICTION)" t nil)

(autoload 'org-batch-agenda "org-mode/lisp/org-agenda" "\
Run an agenda command in batch mode and send the result to STDOUT.
If CMD-KEY is a string of length 1, it is used as a key in
`org-agenda-custom-commands' and triggers this command.  If it is a
longer string it is used as a tags/todo match string.
Parameters are alternating variable names and values that will be bound
before running the agenda command.

\(fn CMD-KEY &rest PARAMETERS)" nil t)

(autoload 'org-batch-agenda-csv "org-mode/lisp/org-agenda" "\
Run an agenda command in batch mode and send the result to STDOUT.
If CMD-KEY is a string of length 1, it is used as a key in
`org-agenda-custom-commands' and triggers this command.  If it is a
longer string it is used as a tags/todo match string.
Parameters are alternating variable names and values that will be bound
before running the agenda command.

The output gives a line for each selected agenda item.  Each
item is a list of comma-separated values, like this:

category,head,type,todo,tags,date,time,extra,priority-l,priority-n

category     The category of the item
head         The headline, without TODO kwd, TAGS and PRIORITY
type         The type of the agenda entry, can be
                todo               selected in TODO match
                tagsmatch          selected in tags match
                diary              imported from diary
                deadline           a deadline on given date
                scheduled          scheduled on given date
                timestamp          entry has timestamp on given date
                closed             entry was closed on given date
                upcoming-deadline  warning about deadline
                past-scheduled     forwarded scheduled item
                block              entry has date block including g. date
todo         The todo keyword, if any
tags         All tags including inherited ones, separated by colons
date         The relevant date, like 2007-2-14
time         The time, like 15:00-16:50
extra        Sting with extra planning info
priority-l   The priority letter if any was given
priority-n   The computed numerical priority
agenda-day   The day in the agenda where this is listed

\(fn CMD-KEY &rest PARAMETERS)" nil t)

(autoload 'org-store-agenda-views "org-mode/lisp/org-agenda" "\
Store agenda views.

\(fn &rest PARAMETERS)" t nil)

(autoload 'org-batch-store-agenda-views "org-mode/lisp/org-agenda" "\
Run all custom agenda commands that have a file argument.

\(fn &rest PARAMETERS)" nil t)

(autoload 'org-agenda-list "org-mode/lisp/org-agenda" "\
Produce a daily/weekly view from all files in variable `org-agenda-files'.
The view will be for the current day or week, but from the overview buffer
you will be able to go to other days/weeks.

With a numeric prefix argument in an interactive call, the agenda will
span ARG days.  Lisp programs should instead specify SPAN to change
the number of days.  SPAN defaults to `org-agenda-span'.

START-DAY defaults to TODAY, or to the most recent match for the weekday
given in `org-agenda-start-on-weekday'.

When WITH-HOUR is non-nil, only include scheduled and deadline
items if they have an hour specification like [h]h:mm.

\(fn &optional ARG START-DAY SPAN WITH-HOUR)" t nil)

(autoload 'org-search-view "org-mode/lisp/org-agenda" "\
Show all entries that contain a phrase or words or regular expressions.

With optional prefix argument TODO-ONLY, only consider entries that are
TODO entries.  The argument STRING can be used to pass a default search
string into this function.  If EDIT-AT is non-nil, it means that the
user should get a chance to edit this string, with cursor at position
EDIT-AT.

The search string can be viewed either as a phrase that should be found as
is, or it can be broken into a number of snippets, each of which must match
in a Boolean way to select an entry.  The default depends on the variable
`org-agenda-search-view-always-boolean'.
Even if this is turned off (the default) you can always switch to
Boolean search dynamically by preceding the first word with  \"+\" or \"-\".

The default is a direct search of the whole phrase, where each space in
the search string can expand to an arbitrary amount of whitespace,
including newlines.

If using a Boolean search, the search string is split on whitespace and
each snippet is searched separately, with logical AND to select an entry.
Words prefixed with a minus must *not* occur in the entry.  Words without
a prefix or prefixed with a plus must occur in the entry.  Matching is
case-insensitive.  Words are enclosed by word delimiters (i.e. they must
match whole words, not parts of a word) if
`org-agenda-search-view-force-full-words' is set (default is nil).

Boolean search snippets enclosed by curly braces are interpreted as
regular expressions that must or (when preceded with \"-\") must not
match in the entry.  Snippets enclosed into double quotes will be taken
as a whole, to include whitespace.

- If the search string starts with an asterisk, search only in headlines.
- If (possibly after the leading star) the search string starts with an
  exclamation mark, this also means to look at TODO entries only, an effect
  that can also be achieved with a prefix argument.
- If (possibly after star and exclamation mark) the search string starts
  with a colon, this will mean that the (non-regexp) snippets of the
  Boolean search must match as full words.

This command searches the agenda files, and in addition the files listed
in `org-agenda-text-search-extra-files'.

\(fn &optional TODO-ONLY STRING EDIT-AT)" t nil)

(autoload 'org-todo-list "org-mode/lisp/org-agenda" "\
Show all (not done) TODO entries from all agenda file in a single list.
The prefix arg can be used to select a specific TODO keyword and limit
the list to these.  When using \\[universal-argument], you will be prompted
for a keyword.  A numeric prefix directly selects the Nth keyword in
`org-todo-keywords-1'.

\(fn &optional ARG)" t nil)

(autoload 'org-tags-view "org-mode/lisp/org-agenda" "\
Show all headlines for all `org-agenda-files' matching a TAGS criterion.
The prefix arg TODO-ONLY limits the search to TODO entries.

\(fn &optional TODO-ONLY MATCH)" t nil)

(autoload 'org-agenda-list-stuck-projects "org-mode/lisp/org-agenda" "\
Create agenda view for projects that are stuck.
Stuck projects are project that have no next actions.  For the definitions
of what a project is and how to check if it stuck, customize the variable
`org-stuck-projects'.

\(fn &rest IGNORE)" t nil)

(autoload 'org-diary "org-mode/lisp/org-agenda" "\
Return diary information from org files.
This function can be used in a \"sexp\" diary entry in the Emacs calendar.
It accesses org files and extracts information from those files to be
listed in the diary.  The function accepts arguments specifying what
items should be listed.  For a list of arguments allowed here, see the
variable `org-agenda-entry-types'.

The call in the diary file should look like this:

   &%%(org-diary) ~/path/to/some/orgfile.org

Use a separate line for each org file to check.  Or, if you omit the file name,
all files listed in `org-agenda-files' will be checked automatically:

   &%%(org-diary)

If you don't give any arguments (as in the example above), the default value
of `org-agenda-entry-types' is used: (:deadline :scheduled :timestamp :sexp).
So the example above may also be written as

   &%%(org-diary :deadline :timestamp :sexp :scheduled)

The function expects the lisp variables `entry' and `date' to be provided
by the caller, because this is how the calendar works.  Don't use this
function from a program - use `org-agenda-get-day-entries' instead.

\(fn &rest ARGS)" nil nil)

(autoload 'org-calendar-goto-agenda "org-mode/lisp/org-agenda" "\
Compute the Org-mode agenda for the calendar date displayed at the cursor.
This is a command that has to be installed in `calendar-mode-map'.

\(fn)" t nil)

(autoload 'org-agenda-to-appt "org-mode/lisp/org-agenda" "\
Activate appointments found in `org-agenda-files'.
With a \\[universal-argument] prefix, refresh the list of
appointments.

If FILTER is t, interactively prompt the user for a regular
expression, and filter out entries that don't match it.

If FILTER is a string, use this string as a regular expression
for filtering entries out.

If FILTER is a function, filter out entries against which
calling the function returns nil.  This function takes one
argument: an entry from `org-agenda-get-day-entries'.

FILTER can also be an alist with the car of each cell being
either 'headline or 'category.  For example:

  '((headline \"IMPORTANT\")
    (category \"Work\"))

will only add headlines containing IMPORTANT or headlines
belonging to the \"Work\" category.

ARGS are symbols indicating what kind of entries to consider.
By default `org-agenda-to-appt' will use :deadline*, :scheduled*
\(i.e., deadlines and scheduled items with a hh:mm specification)
and :timestamp entries.  See the docstring of `org-diary' for
details and examples.

If an entry has a APPT_WARNTIME property, its value will be used
to override `appt-message-warning-time'.

\(fn &optional REFRESH FILTER &rest ARGS)" t nil)

;;;***

;;;### (autoloads (org-capture-import-remember-templates org-capture
;;;;;;  org-capture-string) "org-mode/lisp/org-capture" "org-mode/lisp/org-capture.el"
;;;;;;  (20878 23160 318695 674000))
;;; Generated autoloads from org-mode/lisp/org-capture.el

(autoload 'org-capture-string "org-mode/lisp/org-capture" "\
Capture STRING with the template selected by KEYS.

\(fn STRING &optional KEYS)" t nil)

(autoload 'org-capture "org-mode/lisp/org-capture" "\
Capture something.
\\<org-capture-mode-map>
This will let you select a template from `org-capture-templates', and then
file the newly captured information.  The text is immediately inserted
at the target location, and an indirect buffer is shown where you can
edit it.  Pressing \\[org-capture-finalize] brings you back to the previous state
of Emacs, so that you can continue your work.

When called interactively with a \\[universal-argument] prefix argument GOTO, don't capture
anything, just go to the file/headline where the selected template
stores its notes.  With a double prefix argument \\[universal-argument] \\[universal-argument], go to the last note
stored.

When called with a `C-0' (zero) prefix, insert a template at point.

ELisp programs can set KEYS to a string associated with a template
in `org-capture-templates'.  In this case, interactive selection
will be bypassed.

If `org-capture-use-agenda-date' is non-nil, capturing from the
agenda will use the date at point as the default date.  Then, a
`C-1' prefix will tell the capture process to use the HH:MM time
of the day at point (if any) or the current HH:MM time.

\(fn &optional GOTO KEYS)" t nil)

(autoload 'org-capture-import-remember-templates "org-mode/lisp/org-capture" "\
Set `org-capture-templates' to be similar to `org-remember-templates'.

\(fn)" t nil)

;;;***

;;;### (autoloads (org-agenda-columns org-insert-columns-dblock org-dblock-write:columnview
;;;;;;  org-columns) "org-mode/lisp/org-colview" "org-mode/lisp/org-colview.el"
;;;;;;  (20878 23160 318695 674000))
;;; Generated autoloads from org-mode/lisp/org-colview.el

(autoload 'org-columns "org-mode/lisp/org-colview" "\
Turn on column view on an org-mode file.
When COLUMNS-FMT-STRING is non-nil, use it as the column format.

\(fn &optional COLUMNS-FMT-STRING)" t nil)

(autoload 'org-dblock-write:columnview "org-mode/lisp/org-colview" "\
Write the column view table.
PARAMS is a property list of parameters:

:width    enforce same column widths with <N> specifiers.
:id       the :ID: property of the entry where the columns view
	  should be built.  When the symbol `local', call locally.
	  When `global' call column view with the cursor at the beginning
	  of the buffer (usually this means that the whole buffer switches
	  to column view).  When \"file:path/to/file.org\", invoke column
	  view at the start of that file.  Otherwise, the ID is located
	  using `org-id-find'.
:hlines   When t, insert a hline before each item.  When a number, insert
	  a hline before each level <= that number.
:vlines   When t, make each column a colgroup to enforce vertical lines.
:maxlevel When set to a number, don't capture headlines below this level.
:skip-empty-rows
	  When t, skip rows where all specifiers other than ITEM are empty.
:format   When non-nil, specify the column view format to use.

\(fn PARAMS)" nil nil)

(autoload 'org-insert-columns-dblock "org-mode/lisp/org-colview" "\
Create a dynamic block capturing a column view table.

\(fn)" t nil)

(autoload 'org-agenda-columns "org-mode/lisp/org-colview" "\
Turn on or update column view in the agenda.

\(fn)" t nil)

;;;***

;;;### (autoloads (org-check-version) "org-mode/lisp/org-compat"
;;;;;;  "org-mode/lisp/org-compat.el" (20878 23160 318695 674000))
;;; Generated autoloads from org-mode/lisp/org-compat.el

(autoload 'org-check-version "org-mode/lisp/org-compat" "\
Try very hard to provide sensible version strings.

\(fn)" nil t)

;;;***

;;;### (autoloads (org-load-noerror-mustsuffix) "org-mode/lisp/org-macs"
;;;;;;  "org-mode/lisp/org-macs.el" (20878 23160 326695 989000))
;;; Generated autoloads from org-mode/lisp/org-macs.el

(autoload 'org-load-noerror-mustsuffix "org-mode/lisp/org-macs" "\
Load FILE with optional arguments NOERROR and MUSTSUFFIX.  Drop the MUSTSUFFIX argument for XEmacs, which doesn't recognize it.

\(fn FILE)" nil t)

;;;***

;;;### (autoloads (org-git-version org-release) "org-mode/lisp/org-version"
;;;;;;  "org-mode/lisp/org-version.el" (20878 29235 556440 283000))
;;; Generated autoloads from org-mode/lisp/org-version.el

(autoload 'org-release "org-mode/lisp/org-version" "\
The release version of org-mode.
  Inserted by installing org-mode or when a release is made.

\(fn)" nil nil)

(autoload 'org-git-version "org-mode/lisp/org-version" "\
The Git version of org-mode.
  Inserted by installing org-mode or when a release is made.

\(fn)" nil nil)

(defvar org-odt-data-dir "/usr/share/emacs/etc/org" "\
The location of ODT styles.")

;;;***

;;;### (autoloads (list-packages describe-package package-initialize
;;;;;;  package-install-file package-install-from-buffer package-install
;;;;;;  package-enable-at-startup) "package/package" "package/package.el"
;;;;;;  (20722 65125 338650 762000))
;;; Generated autoloads from package/package.el

(defvar package-enable-at-startup t "\
Whether to activate installed packages when Emacs starts.
If non-nil, packages are activated after reading the init file
and before `after-init-hook'.  Activation is not done if
`user-init-file' is nil (e.g. Emacs was started with \"-q\").

Even if the value is nil, you can type \\[package-initialize] to
activate the package system at any time.")

(custom-autoload 'package-enable-at-startup "package/package" t)

(autoload 'package-install "package/package" "\
Install the package named NAME.
Interactively, prompt for the package name.
The package is found on one of the archives in `package-archives'.

\(fn NAME)" t nil)

(autoload 'package-install-from-buffer "package/package" "\
Install a package from the current buffer.
When called interactively, the current buffer is assumed to be a
single .el file that follows the packaging guidelines; see info
node `(elisp)Packaging'.

When called from Lisp, PKG-INFO is a vector describing the
information, of the type returned by `package-buffer-info'; and
TYPE is the package type (either `single' or `tar').

\(fn PKG-INFO TYPE)" t nil)

(autoload 'package-install-file "package/package" "\
Install a package from a file.
The file can either be a tar file or an Emacs Lisp file.

\(fn FILE)" t nil)

(autoload 'package-initialize "package/package" "\
Load Emacs Lisp packages, and activate them.
The variable `package-load-list' controls which packages to load.
If optional arg NO-ACTIVATE is non-nil, don't activate packages.

\(fn &optional NO-ACTIVATE)" t nil)

(autoload 'describe-package "package/package" "\
Display the full documentation of PACKAGE (a symbol).

\(fn PACKAGE)" t nil)

(autoload 'list-packages "package/package" "\
Display a list of packages.
Fetches the updated list of packages before displaying.
The list is displayed in a buffer named `*Packages*'.

\(fn)" t nil)

(defalias 'package-list-packages 'list-packages)

;;;***

;;;### (autoloads (php-mode php-file-patterns php-mode-to-use) "php-mode-improved/php-mode-improved"
;;;;;;  "php-mode-improved/php-mode-improved.el" (20878 29217 67807
;;;;;;  667000))
;;; Generated autoloads from php-mode-improved/php-mode-improved.el

(defvar php-mode-to-use (progn (require 'mumamo nil t) (if (fboundp 'nxhtml-mumamo-turn-on) 'nxhtml-mumamo-turn-on (if (fboundp 'html-mumamo-turn-on) 'html-mumamo-turn-on 'php-mode))) "\
Major mode turn on function to use for php files.")

(custom-autoload 'php-mode-to-use "php-mode-improved/php-mode-improved" t)

(defvar php-file-patterns '("\\.php[s34]?\\'" "\\.phtml\\'" "\\.inc\\'") "\
List of file patterns for which to automatically invoke `php-mode'.")

(custom-autoload 'php-file-patterns "php-mode-improved/php-mode-improved" nil)

(autoload 'php-mode "php-mode-improved/php-mode-improved" "\
Major mode for editing PHP code.

\\{php-mode-map}

\(fn)" t nil)

;;;***

;;;### (autoloads (helm-projectile) "projectile/helm-projectile"
;;;;;;  "projectile/helm-projectile.el" (20878 29190 630903 369000))
;;; Generated autoloads from projectile/helm-projectile.el

(autoload 'helm-projectile "projectile/helm-projectile" "\
Use projectile with Helm instead of ido.

\(fn)" t nil)

(eval-after-load 'projectile '(define-key projectile-mode-map (kbd "C-c p h") 'helm-projectile))

;;;***

;;;### (autoloads (projectile-global-mode projectile-mode) "projectile/projectile"
;;;;;;  "projectile/projectile.el" (20878 29190 630903 369000))
;;; Generated autoloads from projectile/projectile.el

(autoload 'projectile-mode "projectile/projectile" "\
Minor mode to assist project management and navigation.

\\{projectile-mode-map}

\(fn &optional ARG)" t nil)

(defvar projectile-global-mode nil "\
Non-nil if Projectile-Global mode is enabled.
See the command `projectile-global-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `projectile-global-mode'.")

(custom-autoload 'projectile-global-mode "projectile/projectile" nil)

(autoload 'projectile-global-mode "projectile/projectile" "\
Toggle Projectile mode in all buffers.
With prefix ARG, enable Projectile-Global mode if ARG is positive;
otherwise, disable it.  If called from Lisp, enable the mode if
ARG is omitted or nil.

Projectile mode is enabled in all buffers where
`projectile-on' would do it.
See `projectile-mode' for more information on Projectile mode.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads (puppet-mode) "puppet-mode/puppet-mode" "puppet-mode/puppet-mode.el"
;;;;;;  (20878 29217 243813 681000))
;;; Generated autoloads from puppet-mode/puppet-mode.el

(autoload 'puppet-mode "puppet-mode/puppet-mode" "\
Major mode for editing puppet manifests.

The variable puppet-indent-level controls the amount of indentation.
\\{puppet-mode-map}

\(fn)" t nil)

;;;***

;;;### (autoloads (python-mode run-python) "python/python" "python/python.el"
;;;;;;  (20878 23147 74173 190000))
;;; Generated autoloads from python/python.el

(add-to-list 'auto-mode-alist (cons (purecopy "\\.py\\'") 'python-mode))

(add-to-list 'interpreter-mode-alist (cons (purecopy "python") 'python-mode))

(autoload 'run-python "python/python" "\
Run an inferior Python process.
Input and output via buffer named after
`python-shell-buffer-name'.  If there is a process already
running in that buffer, just switch to it.

With argument, allows you to define CMD so you can edit the
command used to call the interpreter and define DEDICATED, so a
dedicated process for the current buffer is open.  When numeric
prefix arg is other than 0 or 4 do not SHOW.

Runs the hook `inferior-python-mode-hook' (after the
`comint-mode-hook' is run).  (Type \\[describe-mode] in the
process buffer for a list of commands.)

\(fn CMD &optional DEDICATED SHOW)" t nil)

(autoload 'python-mode "python/python" "\
Major mode for editing Python files.

\\{python-mode-map}
Entry to this mode calls the value of `python-mode-hook'
if that value is non-nil.

\(fn)" t nil)

;;;***

;;;### (autoloads (rebase-mode) "magit/rebase-mode" "magit/rebase-mode.el"
;;;;;;  (20878 29188 226821 153000))
;;; Generated autoloads from magit/rebase-mode.el

(autoload 'rebase-mode "magit/rebase-mode" "\
Major mode for editing of a Git rebase file.

Rebase files are generated when you run 'git rebase -i' or run
`magit-interactive-rebase'.  They describe how Git should perform
the rebase.  See the documentation for git-rebase (e.g., by
running 'man git-rebase' at the command line) for details.

\(fn)" t nil)

(add-to-list 'auto-mode-alist '("git-rebase-todo" . rebase-mode))

;;;***

;;;### (autoloads (set-rectangular-region-anchor) "multiple-cursors/rectangular-region-mode"
;;;;;;  "multiple-cursors/rectangular-region-mode.el" (20731 64699
;;;;;;  457848 129000))
;;; Generated autoloads from multiple-cursors/rectangular-region-mode.el

(autoload 'set-rectangular-region-anchor "multiple-cursors/rectangular-region-mode" "\
Anchors the rectangular region at point.

Think of this one as `set-mark' except you're marking a rectangular region. It is
an exceedingly quick way of adding multiple cursors to multiple lines.

\(fn)" t nil)

;;;***

;;;### (autoloads (rainbow-mode) "rainbow-mode/rainbow-mode" "rainbow-mode/rainbow-mode.el"
;;;;;;  (20878 24387 345946 98000))
;;; Generated autoloads from rainbow-mode/rainbow-mode.el

(autoload 'rainbow-mode "rainbow-mode/rainbow-mode" "\
Colorize strings that represent colors.
This will fontify with colors the string like \"#aabbcc\" or \"blue\".

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads (rhtml-mode) "rhtml-mode/rhtml-mode" "rhtml-mode/rhtml-mode.el"
;;;;;;  (20878 29191 14916 502000))
;;; Generated autoloads from rhtml-mode/rhtml-mode.el

(autoload 'rhtml-mode "rhtml-mode/rhtml-mode" "\
Embedded Ruby Mode (RHTML)

\(fn)" t nil)

(add-to-list 'auto-mode-alist '("\\.html\\.erb$" . rhtml-mode))

;;;***

;;;### (autoloads (global-rinari-mode rinari-minor-mode rinari-launch)
;;;;;;  "rinari/rinari" "rinari/rinari.el" (20878 29190 602902 411000))
;;; Generated autoloads from rinari/rinari.el

(autoload 'rinari-launch "rinari/rinari" "\
Call function `rinari-minor-mode' if inside a rails project.
Otherwise, disable that minor mode if currently enabled.

\(fn)" t nil)

(autoload 'rinari-minor-mode "rinari/rinari" "\
Enable Rinari minor mode to support working with the Ruby on Rails framework.

\(fn &optional ARG)" t nil)

(defvar global-rinari-mode nil "\
Non-nil if Global-Rinari mode is enabled.
See the command `global-rinari-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `global-rinari-mode'.")

(custom-autoload 'global-rinari-mode "rinari/rinari" nil)

(autoload 'global-rinari-mode "rinari/rinari" "\
Toggle Rinari minor mode in all buffers.
With prefix ARG, enable Global-Rinari mode if ARG is positive;
otherwise, disable it.  If called from Lisp, enable the mode if
ARG is omitted or nil.

Rinari minor mode is enabled in all buffers where
`rinari-launch-maybe' would do it.
See `rinari-minor-mode' for more information on Rinari minor mode.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads (cucumber-compilation-run cucumber-compilation-this-scenario
;;;;;;  cucumber-compilation-this-buffer) "rinari/util/cucumber-mode-compilation"
;;;;;;  "rinari/util/cucumber-mode-compilation.el" (20732 839 529458
;;;;;;  847000))
;;; Generated autoloads from rinari/util/cucumber-mode-compilation.el

(autoload 'cucumber-compilation-this-buffer "rinari/util/cucumber-mode-compilation" "\
Run the current buffer's scenarios through cucumber.

\(fn)" t nil)

(autoload 'cucumber-compilation-this-scenario "rinari/util/cucumber-mode-compilation" "\
Run the scenario at point through cucumber.

\(fn)" t nil)

(autoload 'cucumber-compilation-run "rinari/util/cucumber-mode-compilation" "\
Run a cucumber process, dumping output to a compilation buffer.

\(fn CMD)" t nil)

;;;***

;;;### (autoloads (pluralize-string singularize-string) "rinari/util/jump/inflections"
;;;;;;  "rinari/util/jump/inflections.el" (20732 4525 536268 195000))
;;; Generated autoloads from rinari/util/jump/inflections.el

(autoload 'singularize-string "rinari/util/jump/inflections" "\


\(fn STR)" nil nil)

(autoload 'pluralize-string "rinari/util/jump/inflections" "\


\(fn STR)" nil nil)

;;;***

;;;### (autoloads (defjump) "rinari/util/jump/jump" "rinari/util/jump/jump.el"
;;;;;;  (20732 4525 536268 195000))
;;; Generated autoloads from rinari/util/jump/jump.el

(autoload 'defjump "rinari/util/jump/jump" "\
Define NAME as a function with behavior determined by SPECS.
SPECS should be a list of cons cells of the form

   (jump-from-spec . jump-to-spec)

NAME will then try subsequent jump-from-specs until one succeeds,
at which point any resulting match information, along with the
related jump-to-spec will be used to jump to the intended buffer.
See `jump-to' and `jump-from' for information on spec
construction.

ROOT should specify the root of the project in which all jumps
take place, it can be either a string directory path, or a
function returning

Optional argument DOC specifies the documentation of the
resulting function.

Optional argument MAKE can be used to specify that missing files
should be created.  If MAKE is a function then it will be called
with the file path as it's only argument.  After possibly calling
MAKE `find-file' will be used to open the path.

Optional argument METHOD-COMMAND overrides the function used to
find the current method which defaults to `which-function'.

\(fn NAME SPECS ROOT &optional DOC MAKE METHOD-COMMAND)" nil t)

;;;***

;;;### (autoloads (ruby-compilation-this-test ruby-compilation-cap
;;;;;;  pcomplete/cap ruby-compilation-rake pcomplete/rake ruby-compilation-this-buffer
;;;;;;  ruby-compilation-run) "rinari/util/ruby-compilation" "rinari/util/ruby-compilation.el"
;;;;;;  (20878 29190 618902 959000))
;;; Generated autoloads from rinari/util/ruby-compilation.el

(eval-after-load 'ruby-mode '(progn (define-key ruby-mode-map (kbd "C-x t") 'ruby-compilation-this-buffer) (define-key ruby-mode-map (kbd "C-x T") 'ruby-compilation-this-test)))

(autoload 'ruby-compilation-run "rinari/util/ruby-compilation" "\
Run CMD using `ruby-compilation-executable' in a ruby compilation buffer.
Argument RUBY-OPTIONS can be used to specify additional
command line args for ruby.  If supplied, NAME will be used in
place of the script name to construct the name of the compilation
buffer.

\(fn CMD &optional RUBY-OPTIONS NAME)" t nil)

(autoload 'ruby-compilation-this-buffer "rinari/util/ruby-compilation" "\
Run the current buffer through Ruby compilation.

\(fn)" t nil)

(autoload 'pcomplete/rake "rinari/util/ruby-compilation" "\
Start pcompletion using the list of available rake tasks.

\(fn)" nil nil)

(autoload 'ruby-compilation-rake "rinari/util/ruby-compilation" "\
Run a rake process dumping output to a ruby compilation buffer.
If EDIT is t, prompt the user to edit the command line.  If TASK
is not supplied, the user will be prompted.  ENV-VARS is an
optional list of (name . value) pairs which will be passed to rake.

\(fn &optional EDIT TASK ENV-VARS)" t nil)

(autoload 'pcomplete/cap "rinari/util/ruby-compilation" "\
Start pcompletion using the list of available capistrano tasks.

\(fn)" nil nil)

(autoload 'ruby-compilation-cap "rinari/util/ruby-compilation" "\
Run a capistrano process dumping output to a ruby compilation buffer.
If EDIT is t, prompt the user to edit the command line.  If TASK
is not supplied, the user will be prompted.  ENV-VARS is an
optional list of (name . value) pairs which will be passed to
capistrano.

\(fn &optional EDIT TASK ENV-VARS)" t nil)

(autoload 'ruby-compilation-this-test "rinari/util/ruby-compilation" "\
Run the test at point through Ruby compilation.

\(fn)" t nil)

;;;***

;;;### (autoloads (rspec-buffer-is-spec-p rspec-verifiable-mode rspec-mode)
;;;;;;  "rspec-mode/rspec-mode" "rspec-mode/rspec-mode.el" (20878
;;;;;;  29190 146886 816000))
;;; Generated autoloads from rspec-mode/rspec-mode.el

(autoload 'rspec-mode "rspec-mode/rspec-mode" "\
Minor mode for RSpec files

\(fn &optional ARG)" t nil)

(autoload 'rspec-verifiable-mode "rspec-mode/rspec-mode" "\
Minor mode for Ruby files that have specs

\(fn &optional ARG)" t nil)

(autoload 'rspec-buffer-is-spec-p "rspec-mode/rspec-mode" "\
Returns true if the current buffer is a spec

\(fn)" nil nil)

(add-hook 'ruby-mode-hook (lambda nil (if (rspec-buffer-is-spec-p) (rspec-mode) (rspec-verifiable-mode))))

(add-hook 'rails-minor-mode-hook 'rspec-verifiable-mode)

;;;***

;;;### (autoloads (ruby-compilation-this-test ruby-compilation-cap
;;;;;;  pcomplete/cap ruby-compilation-rake pcomplete/rake ruby-compilation-this-buffer
;;;;;;  ruby-compilation-run) "ruby-compilation/ruby-compilation"
;;;;;;  "ruby-compilation/ruby-compilation.el" (20878 29387 17628
;;;;;;  985000))
;;; Generated autoloads from ruby-compilation/ruby-compilation.el

(eval-after-load 'ruby-mode '(progn (define-key ruby-mode-map (kbd "C-x t") 'ruby-compilation-this-buffer) (define-key ruby-mode-map (kbd "C-x T") 'ruby-compilation-this-test)))

(autoload 'ruby-compilation-run "ruby-compilation/ruby-compilation" "\
Run CMD using `ruby-compilation-executable' in a ruby compilation buffer.
Argument RUBY-OPTIONS can be used to specify additional
command line args for ruby.  If supplied, NAME will be used in
place of the script name to construct the name of the compilation
buffer.

\(fn CMD &optional RUBY-OPTIONS NAME)" t nil)

(autoload 'ruby-compilation-this-buffer "ruby-compilation/ruby-compilation" "\
Run the current buffer through Ruby compilation.

\(fn)" t nil)

(autoload 'pcomplete/rake "ruby-compilation/ruby-compilation" "\
Start pcompletion using the list of available rake tasks.

\(fn)" nil nil)

(autoload 'ruby-compilation-rake "ruby-compilation/ruby-compilation" "\
Run a rake process dumping output to a ruby compilation buffer.
If EDIT is t, prompt the user to edit the command line.  If TASK
is not supplied, the user will be prompted.  ENV-VARS is an
optional list of (name . value) pairs which will be passed to rake.

\(fn &optional EDIT TASK ENV-VARS)" t nil)

(autoload 'pcomplete/cap "ruby-compilation/ruby-compilation" "\
Start pcompletion using the list of available capistrano tasks.

\(fn)" nil nil)

(autoload 'ruby-compilation-cap "ruby-compilation/ruby-compilation" "\
Run a capistrano process dumping output to a ruby compilation buffer.
If EDIT is t, prompt the user to edit the command line.  If TASK
is not supplied, the user will be prompted.  ENV-VARS is an
optional list of (name . value) pairs which will be passed to
capistrano.

\(fn &optional EDIT TASK ENV-VARS)" t nil)

(autoload 'ruby-compilation-this-test "ruby-compilation/ruby-compilation" "\
Run the test at point through Ruby compilation.

\(fn)" t nil)

;;;***

;;;### (autoloads (ruby-end-mode) "ruby-end/ruby-end" "ruby-end/ruby-end.el"
;;;;;;  (20732 468 50621 86000))
;;; Generated autoloads from ruby-end/ruby-end.el

(autoload 'ruby-end-mode "ruby-end/ruby-end" "\
Automatic insertion of end blocks for Ruby.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads (ruby-mode) "ruby-mode/ruby-mode" "ruby-mode/ruby-mode.el"
;;;;;;  (20731 64683 765153 70000))
;;; Generated autoloads from ruby-mode/ruby-mode.el

(autoload 'ruby-mode "ruby-mode/ruby-mode" "\
Major mode for editing Ruby scripts.
\\[ruby-indent-line] properly indents subexpressions of multi-line
class, module, def, if, while, for, do, and case statements, taking
nesting into account.

The variable ruby-indent-level controls the amount of indentation.
\\{ruby-mode-map}

\(fn)" t nil)

(add-to-list 'auto-mode-alist '("\\.rb$" . ruby-mode))

(add-to-list 'interpreter-mode-alist '("ruby" . ruby-mode))

(add-to-list 'interpreter-mode-alist '("rbx" . ruby-mode))

(add-to-list 'interpreter-mode-alist '("jruby" . ruby-mode))

(add-to-list 'interpreter-mode-alist '("ruby1.9" . ruby-mode))

(add-to-list 'interpreter-mode-alist '("ruby1.8" . ruby-mode))

;;;***

;;;### (autoloads (ruby-test-mode) "ruby-test-mode/ruby-test-mode"
;;;;;;  "ruby-test-mode/ruby-test-mode.el" (20732 440 337173 49000))
;;; Generated autoloads from ruby-test-mode/ruby-test-mode.el

(autoload 'ruby-test-mode "ruby-test-mode/ruby-test-mode" "\
Toggle Ruby-Test minor mode.
With no argument, this command toggles the mode. Non-null prefix
argument turns on the mode. Null prefix argument turns off the
mode.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads (sass-mode) "sass-mode/sass-mode" "sass-mode/sass-mode.el"
;;;;;;  (20723 11747 983648 704000))
;;; Generated autoloads from sass-mode/sass-mode.el

(autoload 'sass-mode "sass-mode/sass-mode" "\
Major mode for editing Sass files.

\(fn)" t nil)

(add-to-list 'auto-mode-alist '("\\.sass$" . sass-mode))

;;;***

;;;### (autoloads (scala-mode) "scala-mode/scala-mode" "scala-mode/scala-mode.el"
;;;;;;  (20878 25864 112209 164000))
;;; Generated autoloads from scala-mode/scala-mode.el

(autoload 'scala-mode "scala-mode/scala-mode" "\
Major mode for editing Scala code.
When started, run `scala-mode-hook'.
\\{scala-mode-map}

\(fn)" t nil)

;;;***

;;;### (autoloads (scala-quit-interpreter scala-load-file scala-eval-buffer
;;;;;;  scala-eval-definition scala-eval-region scala-switch-to-interpreter
;;;;;;  scala-run-scala scala-interpreter-running-p-1) "scala-mode/scala-mode-inf"
;;;;;;  "scala-mode/scala-mode-inf.el" (20878 25864 116209 312000))
;;; Generated autoloads from scala-mode/scala-mode-inf.el

(autoload 'scala-interpreter-running-p-1 "scala-mode/scala-mode-inf" "\


\(fn)" nil nil)

(autoload 'scala-run-scala "scala-mode/scala-mode-inf" "\
Run a Scala interpreter in an Emacs buffer

\(fn CMD-LINE)" t nil)

(autoload 'scala-switch-to-interpreter "scala-mode/scala-mode-inf" "\
Switch to buffer containing the interpreter

\(fn)" t nil)

(autoload 'scala-eval-region "scala-mode/scala-mode-inf" "\
Send current region to Scala interpreter.

\(fn START END)" t nil)

(autoload 'scala-eval-definition "scala-mode/scala-mode-inf" "\
Send the current 'definition' to the Scala interpreter.
This function's idea of a definition is the block of text ending
in the current line (or the first non-empty line going
backwards), and begins in the first line that is not empty and
does not start with whitespace or '{'.

For example:

println( \"aja\")
println( \"hola\" )

if the cursor is somewhere in the second print statement, the
interpreter should output 'hola'.

In the following case, if the cursor is in the second line, then
the complete function definition will be send to the interpreter:

def foo =
  1 + 2

\(fn)" t nil)

(autoload 'scala-eval-buffer "scala-mode/scala-mode-inf" "\
Send whole buffer to Scala interpreter.

\(fn)" t nil)

(autoload 'scala-load-file "scala-mode/scala-mode-inf" "\
Load a file in the Scala interpreter.

\(fn FILE-NAME)" t nil)

(autoload 'scala-quit-interpreter "scala-mode/scala-mode-inf" "\
Quit Scala interpreter.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "slime-clj/slime-clj" "slime-clj/slime-clj.el"
;;;;;;  (20878 20556 790256 864000))
;;; Generated autoloads from slime-clj/slime-clj.el

(add-hook 'slime-load-hook (lambda nil (require 'slime-clj) (slime-clj-init)))

;;;***

;;;### (autoloads (slime-repl-init) "slime-repl/slime-repl" "slime-repl/slime-repl.el"
;;;;;;  (20878 20565 954640 793000))
;;; Generated autoloads from slime-repl/slime-repl.el

(autoload 'slime-repl-init "slime-repl/slime-repl" "\


\(fn)" nil nil)

(add-hook 'slime-load-hook 'slime-repl-init)

;;;***

;;;### (autoloads (common-lisp-indent-function) "slime/contrib/slime-cl-indent"
;;;;;;  "slime/contrib/slime-cl-indent.el" (20732 487 683664 557000))
;;; Generated autoloads from slime/contrib/slime-cl-indent.el

(autoload 'common-lisp-indent-function "slime/contrib/slime-cl-indent" "\
Function to indent the arguments of a Lisp function call.
This is suitable for use as the value of the variable
`lisp-indent-function'.  INDENT-POINT is the point at which the
indentation function is called, and STATE is the
`parse-partial-sexp' state at that position.  Browse the
`lisp-indent' customize group for options affecting the behavior
of this function.

If the indentation point is in a call to a Lisp function, that
function's common-lisp-indent-function property specifies how
this function should indent it.  Possible values for this
property are:

* defun, meaning indent according to `lisp-indent-defun-method';
  i.e., like (4 &lambda &body), as explained below.

* any other symbol, meaning a function to call.  The function should
  take the arguments: PATH STATE INDENT-POINT SEXP-COLUMN NORMAL-INDENT.
  PATH is a list of integers describing the position of point in terms of
  list-structure with respect to the containing lists.  For example, in
  ((a b c (d foo) f) g), foo has a path of (0 3 1).  In other words,
  to reach foo take the 0th element of the outermost list, then
  the 3rd element of the next list, and finally the 1st element.
  STATE and INDENT-POINT are as in the arguments to
  `common-lisp-indent-function'.  SEXP-COLUMN is the column of
  the open parenthesis of the innermost containing list.
  NORMAL-INDENT is the column the indentation point was
  originally in.  This function should behave like `lisp-indent-259'.

* an integer N, meaning indent the first N arguments like
  function arguments, and any further arguments like a body.
  This is equivalent to (4 4 ... &body).

* a list starting with `as' specifies an indirection: indentation is done as
  if the form being indented had started with the second element of the list.

* any other list.  The list element in position M specifies how to indent the
  Mth function argument.  If there are fewer elements than function arguments,
  the last list element applies to all remaining arguments.  The accepted list
  elements are:

  * nil, meaning the default indentation.

  * an integer, specifying an explicit indentation.

  * &lambda.  Indent the argument (which may be a list) by 4.

  * &rest.  When used, this must be the penultimate element.  The
    element after this one applies to all remaining arguments.

  * &body.  This is equivalent to &rest lisp-body-indent, i.e., indent
    all remaining elements by `lisp-body-indent'.

  * &whole.  This must be followed by nil, an integer, or a
    function symbol.  This indentation is applied to the
    associated argument, and as a base indent for all remaining
    arguments.  For example, an integer P means indent this
    argument by P, and all remaining arguments by P, plus the
    value specified by their associated list element.

  * a symbol.  A function to call, with the 6 arguments specified above.

  * a list, with elements as described above.  This applies when the
    associated function argument is itself a list.  Each element of the list
    specifies how to indent the associated argument.

For example, the function `case' has an indent property
\(4 &rest (&whole 2 &rest 1)), meaning:
  * indent the first argument by 4.
  * arguments after the first should be lists, and there may be any number
    of them.  The first list element has an offset of 2, all the rest
    have an offset of 2+1=3.

\(fn INDENT-POINT STATE)" nil nil)

;;;***

;;;### (autoloads (sml/setup) "smart-mode-line/smart-mode-line" "smart-mode-line/smart-mode-line.el"
;;;;;;  (20878 20571 282864 7000))
;;; Generated autoloads from smart-mode-line/smart-mode-line.el

(autoload 'sml/setup "smart-mode-line/smart-mode-line" "\
Setup the mode-line, or revert it.

If argument is a non-positive integer, revert any changes made.
Otherwise, setup the mode-line.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads (smex-initialize smex) "smex/smex" "smex/smex.el"
;;;;;;  (20732 440 545183 806000))
;;; Generated autoloads from smex/smex.el

(autoload 'smex "smex/smex" "\


\(fn)" t nil)

(autoload 'smex-initialize "smex/smex" "\


\(fn)" t nil)

;;;***

;;;### (autoloads (global-undo-tree-mode undo-tree-mode) "undo-tree/undo-tree"
;;;;;;  "undo-tree/undo-tree.el" (20732 900 116354 914000))
;;; Generated autoloads from undo-tree/undo-tree.el

(autoload 'undo-tree-mode "undo-tree/undo-tree" "\
Toggle undo-tree mode.
With no argument, this command toggles the mode.
A positive prefix argument turns the mode on.
A negative prefix argument turns it off.

Undo-tree-mode replaces Emacs' standard undo feature with a more
powerful yet easier to use version, that treats the undo history
as what it is: a tree.

The following keys are available in `undo-tree-mode':

  \\{undo-tree-map}

Within the undo-tree visualizer, the following keys are available:

  \\{undo-tree-visualizer-map}

\(fn &optional ARG)" t nil)

(defvar global-undo-tree-mode nil "\
Non-nil if Global-Undo-Tree mode is enabled.
See the command `global-undo-tree-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `global-undo-tree-mode'.")

(custom-autoload 'global-undo-tree-mode "undo-tree/undo-tree" nil)

(autoload 'global-undo-tree-mode "undo-tree/undo-tree" "\
Toggle Undo-Tree mode in all buffers.
With prefix ARG, enable Global-Undo-Tree mode if ARG is positive;
otherwise, disable it.  If called from Lisp, enable the mode if
ARG is omitted or nil.

Undo-Tree mode is enabled in all buffers where
`turn-on-undo-tree-mode' would do it.
See `undo-tree-mode' for more information on Undo-Tree mode.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads (wrap-region-global-mode turn-off-wrap-region-mode
;;;;;;  turn-on-wrap-region-mode wrap-region-mode) "wrap-region/wrap-region"
;;;;;;  "wrap-region/wrap-region.el" (20731 64687 633322 919000))
;;; Generated autoloads from wrap-region/wrap-region.el

(autoload 'wrap-region-mode "wrap-region/wrap-region" "\
Wrap region with stuff.

\(fn &optional ARG)" t nil)

(autoload 'turn-on-wrap-region-mode "wrap-region/wrap-region" "\
Turn on `wrap-region-mode'

\(fn)" t nil)

(autoload 'turn-off-wrap-region-mode "wrap-region/wrap-region" "\
Turn off `wrap-region-mode'

\(fn)" t nil)

(defvar wrap-region-global-mode nil "\
Non-nil if Wrap-Region-Global mode is enabled.
See the command `wrap-region-global-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `wrap-region-global-mode'.")

(custom-autoload 'wrap-region-global-mode "wrap-region/wrap-region" nil)

(autoload 'wrap-region-global-mode "wrap-region/wrap-region" "\
Toggle Wrap-Region mode in all buffers.
With prefix ARG, enable Wrap-Region-Global mode if ARG is positive;
otherwise, disable it.  If called from Lisp, enable the mode if
ARG is omitted or nil.

Wrap-Region mode is enabled in all buffers where
`turn-on-wrap-region-mode' would do it.
See `wrap-region-mode' for more information on Wrap-Region mode.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads (yaml-mode yaml) "yaml-mode/yaml-mode" "yaml-mode/yaml-mode.el"
;;;;;;  (20732 442 653292 919000))
;;; Generated autoloads from yaml-mode/yaml-mode.el

(let ((loads (get 'yaml 'custom-loads))) (if (member '"yaml-mode/yaml-mode" loads) nil (put 'yaml 'custom-loads (cons '"yaml-mode/yaml-mode" loads))))

(autoload 'yaml-mode "yaml-mode/yaml-mode" "\
Simple mode to edit YAML.

\\{yaml-mode-map}

\(fn)" t nil)

(add-to-list 'auto-mode-alist '("\\.ya?ml$" . yaml-mode))

;;;***

;;;### (autoloads (yas-global-mode yas-minor-mode) "yasnippet/yasnippet"
;;;;;;  "yasnippet/yasnippet.el" (20874 51907 690746 541000))
;;; Generated autoloads from yasnippet/yasnippet.el

(autoload 'yas-minor-mode "yasnippet/yasnippet" "\
Toggle YASnippet mode.

When YASnippet mode is enabled, `yas-expand', normally bound to
the TAB key, expands snippets of code depending on the major
mode.

With no argument, this command toggles the mode.
positive prefix argument turns on the mode.
Negative prefix argument turns off the mode.

Key bindings:
\\{yas-minor-mode-map}

\(fn &optional ARG)" t nil)

(defvar yas-global-mode nil "\
Non-nil if Yas-Global mode is enabled.
See the command `yas-global-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `yas-global-mode'.")

(custom-autoload 'yas-global-mode "yasnippet/yasnippet" nil)

(autoload 'yas-global-mode "yasnippet/yasnippet" "\
Toggle Yas minor mode in all buffers.
With prefix ARG, enable Yas-Global mode if ARG is positive;
otherwise, disable it.  If called from Lisp, enable the mode if
ARG is omitted or nil.

Yas minor mode is enabled in all buffers where
`yas-minor-mode-on' would do it.
See `yas-minor-mode' for more information on Yas minor mode.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads nil nil ("ac-R/ac-R.el" "ac-dabbrev/ac-dabbrev.el"
;;;;;;  "ac-python/ac-python.el" "anything/90anything-complete.el"
;;;;;;  "anything/contrib/anything-grep.el" "anything/contrib/anything-ipa.el"
;;;;;;  "anything/contrib/anything-menu.el" "anything/contrib/anything-migemo.el"
;;;;;;  "anything/contrib/anything-multi-sources.el" "anything/contrib/anything-startup.el"
;;;;;;  "anything/extensions/anything-complete.el" "anything/extensions/anything-gtags.el"
;;;;;;  "anything/extensions/anything-obsolete.el" "anything/extensions/anything-show-completion.el"
;;;;;;  "auto-complete-chunk/auto-complete-chunk.el" "auto-complete-chunk/test-auto-complete-chunk.el"
;;;;;;  "auto-complete-clang/auto-complete-clang.el" "auto-complete-css/auto-complete-css.el"
;;;;;;  "auto-complete-emacs-lisp/auto-complete-emacs-lisp.el" "auto-complete-etags/auto-complete-etags.el"
;;;;;;  "auto-complete-extension/auto-complete-extension.el" "auto-complete-latex/auto-complete-latex.el"
;;;;;;  "auto-complete-rst/auto-complete-rst.el" "auto-complete-ruby/auto-complete-ruby.el"
;;;;;;  "auto-complete-yasnippet/auto-complete-yasnippet.el" "auto-complete/auto-complete-config.el"
;;;;;;  "auto-complete/auto-complete-pkg.el" "auto-pair-plus/auto-pair+.el"
;;;;;;  "autopair/autopair-tests.el" "camelcase-mode/camelCase-mode.el"
;;;;;;  "cedet/cedet-build.el" "cedet/cedet-devel-load.el" "cedet/cedet-ediff.el"
;;;;;;  "cedet/cedet-emacs-merge.el" "cedet/cedet-remove-builtin.el"
;;;;;;  "cedet/cedet-update-changelog.el" "cedet/cedet-update-version.el"
;;;;;;  "color-theme/color-theme-autoloads.el" "css-mode/css-mode-autoloads.el"
;;;;;;  "css-mode/css-mode-pkg.el" "ctable/ctable.el" "ctable/test-ctable.el"
;;;;;;  "ctags-update/ctags-update-autoloads.el" "ctags-update/ctags-update-pkg.el"
;;;;;;  "dash/dash.el" "deferred/concurrent-sample.el" "deferred/concurrent.el"
;;;;;;  "deferred/deferred-samples.el" "deferred/deferred.el" "deferred/test-concurrent.el"
;;;;;;  "deferred/test-deferred.el" "dired-details/dired-details.el"
;;;;;;  "ein/lisp/debug-ein.el" "ein/lisp/ein-ac.el" "ein/lisp/ein-cell.el"
;;;;;;  "ein/lisp/ein-completer.el" "ein/lisp/ein-core.el" "ein/lisp/ein-events.el"
;;;;;;  "ein/lisp/ein-kernelinfo.el" "ein/lisp/ein-kill-ring.el"
;;;;;;  "ein/lisp/ein-loaddefs.el" "ein/lisp/ein-log.el" "ein/lisp/ein-multilang-fontify.el"
;;;;;;  "ein/lisp/ein-mumamo.el" "ein/lisp/ein-node.el" "ein/lisp/ein-notification.el"
;;;;;;  "ein/lisp/ein-output-area.el" "ein/lisp/ein-pager.el" "ein/lisp/ein-pkg.el"
;;;;;;  "ein/lisp/ein-python.el" "ein/lisp/ein-pytools.el" "ein/lisp/ein-query.el"
;;;;;;  "ein/lisp/ein-scratchsheet.el" "ein/lisp/ein-smartrep.el"
;;;;;;  "ein/lisp/ein-subpackages.el" "ein/lisp/ein-utils.el" "ein/lisp/ein-websocket.el"
;;;;;;  "ein/lisp/ein-worksheet.el" "ein/lisp/ein.el" "ein/lisp/zeroein.el"
;;;;;;  "el-get/el-get-autoloads.el" "el-get/el-get-build.el" "el-get/el-get-byte-compile.el"
;;;;;;  "el-get/el-get-core.el" "el-get/el-get-custom.el" "el-get/el-get-dependencies.el"
;;;;;;  "el-get/el-get-install.el" "el-get/el-get-methods.el" "el-get/el-get-notify.el"
;;;;;;  "el-get/el-get-recipes.el" "el-get/el-get-status.el" "epc/epc.el"
;;;;;;  "epc/epcs.el" "epc/test-epc.el" "ess/lisp/ess-arc-d.el" "ess/lisp/ess-bugs-d.el"
;;;;;;  "ess/lisp/ess-bugs-l.el" "ess/lisp/ess-comp.el" "ess/lisp/ess-compat.el"
;;;;;;  "ess/lisp/ess-custom.el" "ess/lisp/ess-dde.el" "ess/lisp/ess-debug.el"
;;;;;;  "ess/lisp/ess-developer.el" "ess/lisp/ess-eldoc.el" "ess/lisp/ess-font-lock.el"
;;;;;;  "ess/lisp/ess-help.el" "ess/lisp/ess-inf.el" "ess/lisp/ess-install.el"
;;;;;;  "ess/lisp/ess-jags-d.el" "ess/lisp/ess-lsp-l.el" "ess/lisp/ess-menu.el"
;;;;;;  "ess/lisp/ess-mode.el" "ess/lisp/ess-mouse.el" "ess/lisp/ess-noweb-font-lock-mode.el"
;;;;;;  "ess/lisp/ess-noweb-mode.el" "ess/lisp/ess-noweb.el" "ess/lisp/ess-omg-d.el"
;;;;;;  "ess/lisp/ess-omg-l.el" "ess/lisp/ess-r-a.el" "ess/lisp/ess-r-args.el"
;;;;;;  "ess/lisp/ess-r-d.el" "ess/lisp/ess-r-gui.el" "ess/lisp/ess-rdired.el"
;;;;;;  "ess/lisp/ess-roxy.el" "ess/lisp/ess-rutils.el" "ess/lisp/ess-s-l.el"
;;;;;;  "ess/lisp/ess-s3-d.el" "ess/lisp/ess-s4-d.el" "ess/lisp/ess-sas-a.el"
;;;;;;  "ess/lisp/ess-sas-d.el" "ess/lisp/ess-sas-l.el" "ess/lisp/ess-send.el"
;;;;;;  "ess/lisp/ess-send2.el" "ess/lisp/ess-site.el" "ess/lisp/ess-sp3-d.el"
;;;;;;  "ess/lisp/ess-sp4-d.el" "ess/lisp/ess-sp5-d.el" "ess/lisp/ess-sp6-d.el"
;;;;;;  "ess/lisp/ess-sp6w-d.el" "ess/lisp/ess-sta-d.el" "ess/lisp/ess-sta-l.el"
;;;;;;  "ess/lisp/ess-stan-d.el" "ess/lisp/ess-swv.el" "ess/lisp/ess-toolbar.el"
;;;;;;  "ess/lisp/ess-tracebug.el" "ess/lisp/ess-trns.el" "ess/lisp/ess-utils.el"
;;;;;;  "ess/lisp/ess-vst-d.el" "ess/lisp/ess-xls-d.el" "ess/lisp/ess.el"
;;;;;;  "ess/lisp/essd-els.el" "ess/lisp/make-regexp.el" "ess/lisp/msdos.el"
;;;;;;  "expand-region/cc-mode-expansions.el" "expand-region/clojure-mode-expansions.el"
;;;;;;  "expand-region/cperl-mode-expansions.el" "expand-region/css-mode-expansions.el"
;;;;;;  "expand-region/er-basic-expansions.el" "expand-region/erlang-mode-expansions.el"
;;;;;;  "expand-region/expand-region-core.el" "expand-region/expand-region-pkg.el"
;;;;;;  "expand-region/feature-mode-expansions.el" "expand-region/html-mode-expansions.el"
;;;;;;  "expand-region/js-mode-expansions.el" "expand-region/js2-mode-expansions.el"
;;;;;;  "expand-region/jsp-expansions.el" "expand-region/latex-mode-expansions.el"
;;;;;;  "expand-region/nxml-mode-expansions.el" "expand-region/octave-expansions.el"
;;;;;;  "expand-region/org-mode-expansions.el" "expand-region/python-el-expansions.el"
;;;;;;  "expand-region/python-el-fgallina-expansions.el" "expand-region/python-mode-expansions.el"
;;;;;;  "expand-region/ruby-mode-expansions.el" "expand-region/sml-mode-expansions.el"
;;;;;;  "expand-region/text-mode-expansions.el" "expand-region/web-mode-expansions.el"
;;;;;;  "filladapt/filladapt.el" "flymake-easy/flymake-easy.el" "flymake-point/flymake-point.el"
;;;;;;  "fringe-helper/fringe-helper.el" "fuzzy/fuzzy.el" "git-emacs/git--test.el"
;;;;;;  "git-emacs/git-emacs-autoloads.el" "git-emacs/git-emacs.el"
;;;;;;  "git-emacs/git-global-keys.el" "git-emacs/git-log.el" "git-emacs/git-modeline.el"
;;;;;;  "git-emacs/git-status.el" "git-gutter-fringe/git-gutter-fringe.el"
;;;;;;  "git-gutter/test-git-gutter.el" "gnus/lisp/compface.el" "gnus/lisp/dgnushack.el"
;;;;;;  "gnus/lisp/dns.el" "gnus/lisp/format-spec.el" "gnus/lisp/gnus-async.el"
;;;;;;  "gnus/lisp/gnus-bcklg.el" "gnus/lisp/gnus-cite.el" "gnus/lisp/gnus-compat.el"
;;;;;;  "gnus/lisp/gnus-cus.el" "gnus/lisp/gnus-demon.el" "gnus/lisp/gnus-dup.el"
;;;;;;  "gnus/lisp/gnus-eform.el" "gnus/lisp/gnus-ems.el" "gnus/lisp/gnus-int.el"
;;;;;;  "gnus/lisp/gnus-load.el" "gnus/lisp/gnus-logic.el" "gnus/lisp/gnus-mh.el"
;;;;;;  "gnus/lisp/gnus-salt.el" "gnus/lisp/gnus-score.el" "gnus/lisp/gnus-setup.el"
;;;;;;  "gnus/lisp/gnus-srvr.el" "gnus/lisp/gnus-topic.el" "gnus/lisp/gnus-undo.el"
;;;;;;  "gnus/lisp/gnus-util.el" "gnus/lisp/gnus-uu.el" "gnus/lisp/gnus-vm.el"
;;;;;;  "gnus/lisp/gnus-xmas.el" "gnus/lisp/gssapi.el" "gnus/lisp/hex-util.el"
;;;;;;  "gnus/lisp/hmac-def.el" "gnus/lisp/hmac-md5.el" "gnus/lisp/ietf-drums.el"
;;;;;;  "gnus/lisp/legacy-gnus-agent.el" "gnus/lisp/lpath.el" "gnus/lisp/mail-parse.el"
;;;;;;  "gnus/lisp/mail-prsvr.el" "gnus/lisp/mail-source.el" "gnus/lisp/mailcap.el"
;;;;;;  "gnus/lisp/md4.el" "gnus/lisp/messagexmas.el" "gnus/lisp/messcompat.el"
;;;;;;  "gnus/lisp/mm-archive.el" "gnus/lisp/mm-bodies.el" "gnus/lisp/mm-decode.el"
;;;;;;  "gnus/lisp/mm-util.el" "gnus/lisp/mm-view.el" "gnus/lisp/mml-sec.el"
;;;;;;  "gnus/lisp/mml-smime.el" "gnus/lisp/nnagent.el" "gnus/lisp/nnbabyl.el"
;;;;;;  "gnus/lisp/nndir.el" "gnus/lisp/nndraft.el" "gnus/lisp/nneething.el"
;;;;;;  "gnus/lisp/nngateway.el" "gnus/lisp/nnheader.el" "gnus/lisp/nnheaderxm.el"
;;;;;;  "gnus/lisp/nnimap.el" "gnus/lisp/nnir.el" "gnus/lisp/nnmail.el"
;;;;;;  "gnus/lisp/nnmaildir.el" "gnus/lisp/nnmairix.el" "gnus/lisp/nnmbox.el"
;;;;;;  "gnus/lisp/nnmh.el" "gnus/lisp/nnnil.el" "gnus/lisp/nnoo.el"
;;;;;;  "gnus/lisp/nnregistry.el" "gnus/lisp/nnrss.el" "gnus/lisp/nnspool.el"
;;;;;;  "gnus/lisp/nntp.el" "gnus/lisp/nnvirtual.el" "gnus/lisp/nnweb.el"
;;;;;;  "gnus/lisp/ntlm.el" "gnus/lisp/registry.el" "gnus/lisp/rfc1843.el"
;;;;;;  "gnus/lisp/rfc2045.el" "gnus/lisp/rfc2047.el" "gnus/lisp/rfc2104.el"
;;;;;;  "gnus/lisp/rfc2231.el" "gnus/lisp/rtree.el" "gnus/lisp/sasl-cram.el"
;;;;;;  "gnus/lisp/sasl-digest.el" "gnus/lisp/sasl-ntlm.el" "gnus/lisp/sasl.el"
;;;;;;  "gnus/lisp/shr-color.el" "gnus/lisp/sieve-manage.el" "gnus/lisp/smime-ldap.el"
;;;;;;  "gnus/lisp/smime.el" "gnus/lisp/spam-stat.el" "gnus/lisp/spam-wash.el"
;;;;;;  "gnus/lisp/tls.el" "google-contacts/google-contacts-gnus.el"
;;;;;;  "google-contacts/google-contacts-message.el" "haskell-mode/haskell-checkers.el"
;;;;;;  "haskell-mode/haskell-font-lock.el" "haskell-mode/haskell-ghci.el"
;;;;;;  "haskell-mode/haskell-hugs.el" "haskell-mode/haskell-package.el"
;;;;;;  "haskell-mode/haskell-simple-indent.el" "haskell-mode/haskell-site-file.el"
;;;;;;  "helm-rails/helm-rails-loaddefs.el" "helm-rails/helm-rails-pkg.el"
;;;;;;  "helm-rails/helm-rails.el" "helm/helm-aliases.el" "helm/helm-pkg.el"
;;;;;;  "helm/helm-plugin.el" "inflections/inflections-autoloads.el"
;;;;;;  "inflections/inflections-pkg.el" "jedi/test-jedi.el" "jedi/tryout-jedi.el"
;;;;;;  "json-mode/json-mode-autoloads.el" "json-mode/json-mode-pkg.el"
;;;;;;  "json/json.el" "lintnode/flymake-jslint.el" "magit/50magit.el"
;;;;;;  "magit/magit-bisect.el" "magit/magit-key-mode.el" "magit/magit-pkg.el"
;;;;;;  "monokai-theme/monokai-theme-autoloads.el" "monokai-theme/monokai-theme-pkg.el"
;;;;;;  "multi-web-mode/mweb-example-config.el" "multiple-cursors/mc-cycle-cursors.el"
;;;;;;  "multiple-cursors/multiple-cursors-core.el" "multiple-cursors/multiple-cursors-pkg.el"
;;;;;;  "multiple-cursors/multiple-cursors.el" "nxhtml/autostart.el"
;;;;;;  "nxhtml/autostart22.el" "nxhtml/nxhtml-base.el" "nxhtml/nxhtml-loaddefs.el"
;;;;;;  "nxhtml/web-autoload.el" "oauth2/oauth2-autoloads.el" "oauth2/oauth2-pkg.el"
;;;;;;  "org-caldav/org-caldav-testsuite.el" "org-mode/contrib/lisp/ob-eukleides.el"
;;;;;;  "org-mode/contrib/lisp/ob-fomus.el" "org-mode/contrib/lisp/ob-julia.el"
;;;;;;  "org-mode/contrib/lisp/ob-mathomatic.el" "org-mode/contrib/lisp/ob-oz.el"
;;;;;;  "org-mode/contrib/lisp/ob-tcl.el" "org-mode/contrib/lisp/org-annotate-file.el"
;;;;;;  "org-mode/contrib/lisp/org-bibtex-extras.el" "org-mode/contrib/lisp/org-bookmark.el"
;;;;;;  "org-mode/contrib/lisp/org-checklist.el" "org-mode/contrib/lisp/org-choose.el"
;;;;;;  "org-mode/contrib/lisp/org-collector.el" "org-mode/contrib/lisp/org-colview-xemacs.el"
;;;;;;  "org-mode/contrib/lisp/org-contribdir.el" "org-mode/contrib/lisp/org-depend.el"
;;;;;;  "org-mode/contrib/lisp/org-drill.el" "org-mode/contrib/lisp/org-elisp-symbol.el"
;;;;;;  "org-mode/contrib/lisp/org-eval-light.el" "org-mode/contrib/lisp/org-eval.el"
;;;;;;  "org-mode/contrib/lisp/org-expiry.el" "org-mode/contrib/lisp/org-favtable.el"
;;;;;;  "org-mode/contrib/lisp/org-git-link.el" "org-mode/contrib/lisp/org-interactive-query.el"
;;;;;;  "org-mode/contrib/lisp/org-invoice.el" "org-mode/contrib/lisp/org-jira.el"
;;;;;;  "org-mode/contrib/lisp/org-learn.el" "org-mode/contrib/lisp/org-mac-iCal.el"
;;;;;;  "org-mode/contrib/lisp/org-mac-link-grabber.el" "org-mode/contrib/lisp/org-mac-message.el"
;;;;;;  "org-mode/contrib/lisp/org-mairix.el" "org-mode/contrib/lisp/org-man.el"
;;;;;;  "org-mode/contrib/lisp/org-mew.el" "org-mode/contrib/lisp/org-mime.el"
;;;;;;  "org-mode/contrib/lisp/org-mtags.el" "org-mode/contrib/lisp/org-notify.el"
;;;;;;  "org-mode/contrib/lisp/org-notmuch.el" "org-mode/contrib/lisp/org-panel.el"
;;;;;;  "org-mode/contrib/lisp/org-screen.el" "org-mode/contrib/lisp/org-secretary.el"
;;;;;;  "org-mode/contrib/lisp/org-static-mathjax.el" "org-mode/contrib/lisp/org-sudoku.el"
;;;;;;  "org-mode/contrib/lisp/org-velocity.el" "org-mode/contrib/lisp/org-vm.el"
;;;;;;  "org-mode/contrib/lisp/org-wikinodes.el" "org-mode/contrib/lisp/org-wl.el"
;;;;;;  "org-mode/contrib/lisp/orgtbl-sqlinsert.el" "org-mode/contrib/lisp/ox-confluence.el"
;;;;;;  "org-mode/contrib/lisp/ox-deck.el" "org-mode/contrib/lisp/ox-groff.el"
;;;;;;  "org-mode/contrib/lisp/ox-s5.el" "org-mode/lisp/ob-C.el"
;;;;;;  "org-mode/lisp/ob-R.el" "org-mode/lisp/ob-asymptote.el" "org-mode/lisp/ob-awk.el"
;;;;;;  "org-mode/lisp/ob-calc.el" "org-mode/lisp/ob-clojure.el"
;;;;;;  "org-mode/lisp/ob-comint.el" "org-mode/lisp/ob-core.el" "org-mode/lisp/ob-css.el"
;;;;;;  "org-mode/lisp/ob-ditaa.el" "org-mode/lisp/ob-dot.el" "org-mode/lisp/ob-emacs-lisp.el"
;;;;;;  "org-mode/lisp/ob-eval.el" "org-mode/lisp/ob-exp.el" "org-mode/lisp/ob-fortran.el"
;;;;;;  "org-mode/lisp/ob-gnuplot.el" "org-mode/lisp/ob-haskell.el"
;;;;;;  "org-mode/lisp/ob-io.el" "org-mode/lisp/ob-java.el" "org-mode/lisp/ob-js.el"
;;;;;;  "org-mode/lisp/ob-keys.el" "org-mode/lisp/ob-latex.el" "org-mode/lisp/ob-ledger.el"
;;;;;;  "org-mode/lisp/ob-lilypond.el" "org-mode/lisp/ob-lisp.el"
;;;;;;  "org-mode/lisp/ob-lob.el" "org-mode/lisp/ob-makefile.el"
;;;;;;  "org-mode/lisp/ob-matlab.el" "org-mode/lisp/ob-maxima.el"
;;;;;;  "org-mode/lisp/ob-mscgen.el" "org-mode/lisp/ob-ocaml.el"
;;;;;;  "org-mode/lisp/ob-octave.el" "org-mode/lisp/ob-org.el" "org-mode/lisp/ob-perl.el"
;;;;;;  "org-mode/lisp/ob-picolisp.el" "org-mode/lisp/ob-plantuml.el"
;;;;;;  "org-mode/lisp/ob-python.el" "org-mode/lisp/ob-ref.el" "org-mode/lisp/ob-ruby.el"
;;;;;;  "org-mode/lisp/ob-sass.el" "org-mode/lisp/ob-scala.el" "org-mode/lisp/ob-scheme.el"
;;;;;;  "org-mode/lisp/ob-screen.el" "org-mode/lisp/ob-sh.el" "org-mode/lisp/ob-shen.el"
;;;;;;  "org-mode/lisp/ob-sql.el" "org-mode/lisp/ob-sqlite.el" "org-mode/lisp/ob-table.el"
;;;;;;  "org-mode/lisp/ob-tangle.el" "org-mode/lisp/ob.el" "org-mode/lisp/org-archive.el"
;;;;;;  "org-mode/lisp/org-attach.el" "org-mode/lisp/org-bbdb.el"
;;;;;;  "org-mode/lisp/org-bibtex.el" "org-mode/lisp/org-clock.el"
;;;;;;  "org-mode/lisp/org-crypt.el" "org-mode/lisp/org-ctags.el"
;;;;;;  "org-mode/lisp/org-datetree.el" "org-mode/lisp/org-docview.el"
;;;;;;  "org-mode/lisp/org-element.el" "org-mode/lisp/org-entities.el"
;;;;;;  "org-mode/lisp/org-eshell.el" "org-mode/lisp/org-faces.el"
;;;;;;  "org-mode/lisp/org-feed.el" "org-mode/lisp/org-footnote.el"
;;;;;;  "org-mode/lisp/org-gnus.el" "org-mode/lisp/org-habit.el"
;;;;;;  "org-mode/lisp/org-id.el" "org-mode/lisp/org-indent.el" "org-mode/lisp/org-info.el"
;;;;;;  "org-mode/lisp/org-inlinetask.el" "org-mode/lisp/org-install.el"
;;;;;;  "org-mode/lisp/org-irc.el" "org-mode/lisp/org-list.el" "org-mode/lisp/org-loaddefs.el"
;;;;;;  "org-mode/lisp/org-macro.el" "org-mode/lisp/org-mhe.el" "org-mode/lisp/org-mobile.el"
;;;;;;  "org-mode/lisp/org-mouse.el" "org-mode/lisp/org-pcomplete.el"
;;;;;;  "org-mode/lisp/org-plot.el" "org-mode/lisp/org-protocol.el"
;;;;;;  "org-mode/lisp/org-rmail.el" "org-mode/lisp/org-src.el" "org-mode/lisp/org-table.el"
;;;;;;  "org-mode/lisp/org-timer.el" "org-mode/lisp/org-w3m.el" "org-mode/lisp/ox-ascii.el"
;;;;;;  "org-mode/lisp/ox-beamer.el" "org-mode/lisp/ox-html.el" "org-mode/lisp/ox-icalendar.el"
;;;;;;  "org-mode/lisp/ox-latex.el" "org-mode/lisp/ox-man.el" "org-mode/lisp/ox-md.el"
;;;;;;  "org-mode/lisp/ox-odt.el" "org-mode/lisp/ox-org.el" "org-mode/lisp/ox-publish.el"
;;;;;;  "org-mode/lisp/ox-texinfo.el" "org-mode/lisp/ox.el" "org-s5/org-export-as-s5.el"
;;;;;;  "org-sync/omd.el" "org-sync/os-bb.el" "org-sync/os-github.el"
;;;;;;  "org-sync/os-rmine.el" "org-sync/os-rtm.el" "org-sync/os.el"
;;;;;;  "popup/popup.el" "powerline/powerline.el" "profile-dotemacs/profile-dotemacs.el"
;;;;;;  "rainbow-mode/rainbow-mode-autoloads.el" "rainbow-mode/rainbow-mode-pkg.el"
;;;;;;  "request/request-deferred.el" "request/request.el" "rhtml-mode/rhtml-erb.el"
;;;;;;  "rhtml-mode/rhtml-fonts.el" "rhtml-mode/rhtml-navigation.el"
;;;;;;  "rhtml-mode/rhtml-ruby-hook.el" "rhtml-mode/rhtml-sgml-hacks.el"
;;;;;;  "rinari/util/jump/findr.el" "rinari/util/ruby-compilation-rspec.el"
;;;;;;  "rspec-mode/rspec-mode-expectations.el" "ruby-compilation/ruby-compilation-autoloads.el"
;;;;;;  "ruby-compilation/ruby-compilation-pkg.el" "scala-mode/scala-mode-auto.el"
;;;;;;  "scala-mode/scala-mode-constants.el" "scala-mode/scala-mode-feature-electric.el"
;;;;;;  "scala-mode/scala-mode-feature-speedbar.el" "scala-mode/scala-mode-feature-tags.el"
;;;;;;  "scala-mode/scala-mode-feature.el" "scala-mode/scala-mode-fontlock.el"
;;;;;;  "scala-mode/scala-mode-indent.el" "scala-mode/scala-mode-lib.el"
;;;;;;  "scala-mode/scala-mode-navigation.el" "scala-mode/scala-mode-ui.el"
;;;;;;  "scala-mode/scala-mode-variables.el" "slime-clj/slime-clj-autoloads.el"
;;;;;;  "slime-clj/slime-clj-pkg.el" "slime-repl/slime-repl-autoloads.el"
;;;;;;  "slime-repl/slime-repl-pkg.el" "smart-forward/smart-forward-autoloads.el"
;;;;;;  "smart-forward/smart-forward-pkg.el" "smart-forward/smart-forward.el"
;;;;;;  "smart-mode-line/smart-mode-line-autoloads.el" "smart-mode-line/smart-mode-line-pkg.el"
;;;;;;  "tern/emacs/tern.el" "yasnippet/yasnippet-debug.el" "yasnippet/yasnippet-tests.el")
;;;;;;  (20878 37616 848863 849000))

;;;***

(provide '.loaddefs)
;; Local Variables:
;; version-control: never
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; .loaddefs.el ends here
