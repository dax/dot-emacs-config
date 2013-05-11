(defvar start-server-emacs t
  "If non-null, this emacs should run emacsclient.")

(add-to-list 'exec-path (concat base-dir "bin"))
(add-to-list 'exec-path "~/local/bin")
(add-to-list 'exec-path "/sw/bin")

(setq tmp-dir (concat base-dir "tmp/"))

;; TODO : use tmp-dir variable (setq backup-directory-alist (list (list ".*" tmp-dir)))
(setq backup-directory-alist '((".*" . "~/.emacs.d/tmp/")))

(defmacro require-maybe (feature &optional file)
  "*Try to require FEATURE, but don't signal an error if `require' fails."
  `(require ,feature ,file 'noerror))

(defmacro when-available (func foo)
  "*Do something if FUNCTION is available."
  `(when (fboundp ,func) ,foo))

(auto-compression-mode t)

;; define a dos2unix function
(defun dos2unix (buffer)
  "Automate M-% C-q C-m RET C-q C-j RET"
  (interactive "b")
  (goto-char (point-min))
  (while (search-forward (string ?\C-m) nil t)
    (replace-match (string ?\C-j) nil t)))

(tool-bar-mode -1)
(blink-cursor-mode nil)

;;-> backspace on a selected region -> deletion
(delete-selection-mode t)

;;show_paren mode
(show-paren-mode t)

;; don't make backup files
(setq make-backup-files nil)

;; display clock
(display-time)

;;(display question in 'y/n' instead of 'yes/no')
(fset 'yes-or-no-p 'y-or-n-p)

;; activate auto-revert for all buffers
(global-auto-revert-mode 1)
(setq global-auto-revert-non-file-buffers t)
(setq auto-revert-verbose nil)

;; TODO : cleanup
(setq auto-save-interval 50)
(setq auto-save-timeout 10)
(setq auto-save-list-file-prefix (concat tmp-dir "auto-save-list/.saves-"))
(setq ac-comphist-file (concat tmp-dir "ac-comphist.dat"))
(setq bs-cycle-configuration-name "all")
(setq case-fold-search t)
(setq color-theme-is-global t)
(setq column-number-mode t)
(setq delete-old-versions t)
(setq font-lock-mode-maximum-decoration t)
(setq global-font-lock-mode t)
(setq icicle-reminder-prompt-flag 0)
(setq inhibit-startup-screen t)
(setq kept-new-versions 20)
(setq kept-old-versions 5)
(setq line-number-mode t)
(setq next-line-add-newlines nil)
(setq require-final-newline t)
(setq safe-local-variable-values (quote ((folded-file . t))))
(setq scroll-step 1)
(setq speedbar-directory-unshown-regexp "^\\(CVS\\|RCS\\|SCCS\\|.deps\\)\\'")
(setq speedbar-frame-parameters (quote ((minibuffer) (width . 20) (border-width . 0) (menu-bar-lines . 0) (tool-bar-lines . 0) (unsplittable . t) (set-background-color "black"))))
(setq speedbar-supported-extension-expressions (quote (".[ch]\\(\\+\\+\\|pp\\|c\\|h\\|xx\\)?" ".tex\\(i\\(nfo\\)?\\)?" ".el" ".emacs" ".l" ".lsp" ".p" ".java" ".f\\(90\\|77\\|or\\)?" ".ad*" ".p[lm]" ".tcl" ".m" ".scm" ".pm" ".py" ".g" ".s?html" "[Mm]akefile\\(\\.in\\|am\\)?" "configure.ac" ".ml*" ".tig" ".\\(ll\\|yy\\)")))
(setq transient-mark-mode t)
(setq truncate-lines nil)
(setq truncate-partial-width-windows nil)
(setq vc-handle-cvs nil)
(setq version-control t)
(setq visible-bell t)
(winner-mode 1)
(electric-indent-mode +1)
(electric-pair-mode +1)

(if (file-exists-p (concat config-dir "config-perso.el"))
    (require 'config-perso))

(autoload 'regex-tool "regex-tool" nil t)

(require 'init-look)
(require 'init-keys)
;;(require 'init-ido)
(require 'init-whitespace-mode)
(require 'myutils)
(require 'init-sieve)
(require 'init-auto-template)
(require 'init-caml)
(require 'init-eiffel)
(require 'init-ada)
(require 'init-eldoc)
(require 'init-cparse)
(require 'init-ispell)
(require 'init-cmake)
(require 'init-diary)
(require 'init-remember)
(require 'init-flymake)
(require 'init-zencoding)
(require 'init-kill-ring)
(require 'init-ediff)
(require 'init-eshell)
;; (require 'config-google)
;; (require 'config-ecb)
;; (require 'config-jdee)
(require 'init-mu4e)

;; load configurations
(require 'config-el-get)

;; end load configurations

(add-hook 'emacs-startup-hook
          (lambda ()
            (when start-server-emacs
              (server-start))))

(put 'ido-exit-minibuffer 'disabled nil)
(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)
(set-default 'tramp-default-proxies-alist (quote ((".*" "root" "/ssh:%h:"))))
(setq tramp-default-method "ssh")

(provide 'init-basic)
