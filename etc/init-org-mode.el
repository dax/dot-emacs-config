;; C-c a H	Office and Home agenda
;; C-c a P	Project agenda
;; C-c a D	Daily action List
;; dot-org synchronization setup

(add-to-list 'load-path (concat packages-dir "org-mode/contrib/lisp"))

(defvar dot-org-dir "~/.org/")
(defvar org-webdav-url "~/www")

(defun my-org-mobile-pull ()
  "call org-mobile-pull and then open stageinbox.org"
  (interactive)
  (progn
    (print "Pulling MobileOrg changes")
    (org-mobile-pull)
    (find-file org-mobile-inbox-for-pull)))

;; org-mode setup
(autoload 'org-mode "org")
(autoload 'org-mime "org")
(autoload 'org-agenda "org")
(autoload 'org-store-link "org")
(autoload 'org-diary "org" "Diary entries from Org mode")
(autoload 'orgtbl-mode "org" "Org tables as a minor mode" t)
(autoload 'turn-on-orgtbl "org" "Org tables as a minor mode")

(add-to-list 'auto-mode-alist '("\\.org$" . org-mode))
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-cc" 'org-capture)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)

;; setup org-mime
(add-hook 'message-mode-hook
          (progn
            (require 'org-mime)
            (local-set-key "\C-c\M-o" 'org-mime-htmlize)))

(eval-after-load "org"
  '(progn
     (print "Loading org-mode")

     (highlight-fixmes-mode 0)
     (define-key org-mode-map "\C-c\C-a" 'org-archive-subtree)
     (setq org-completion-use-ido t)
     (setq org-deadline-warning-days 15)
     (setq org-agenda-skip-deadline-if-done t)
     (setq org-agenda-skip-scheduled-if-done t)
     (setq org-use-fast-todo-selection t)
     (setq org-timeline-show-empty-dates t)
     (setq org-insert-mode-line-in-empty-file t)
     (setq org-log-done t)
     (setq org-return-follows-link t)
     (setq org-tab-follows-link t)
     (setq org-confirm-shell-link-function 'y-or-n-p
           org-confirm-elisp-link-function 'y-or-n-p)
     (org-indent-mode t)
     (setq org-agenda-include-diary t)
     (setq org-agenda-include-all-todo t)
     (setq org-todo-keywords '((sequence "TODO" "STARTED" "WAITING" "APPT" "|" "DONE" "CANCELLED" "DEFERRED")))
     (setq org-agenda-files (list "~/.org/organizer.org"))
     (setq org-refile-targets '(("organizer.org" :maxlevel . 1)))
     (setq org-agenda-custom-commands
           '(("P" "Projects"
              ((tags-todo "PROJECTS")))
             ("W" "Waiting"
              ((tags-todo "WAIT")))
             ("I" "Inbox"
              ((tags-todo "INBOX")))
             ("T" "Next Action List"
              ((agenda)
               (tags-todo "TASKS")))
             ("D" "Daily Action List"
              ((agenda "" ((org-agenda-ndays 1)
                           (org-agenda-sorting-strategy
                            (quote ((agenda time-up priority-down tag-up) )))
                           (org-deadline-warning-days 0)
                           ))))))
     (setq org-tag-alist '(("URGENT" . ?u)
                           ("MAIL" . ?m)
                           ("PHONE" . ?p)))

     ;; the appointment notification facility
     (setq appt-message-warning-time 15       ;; warn 15 min in advance
           appt-display-mode-line    t        ;; show in the modeline
           appt-display-format       'window) ;; use our func
     (appt-activate 1)                        ;; active appt (appointment notification)

     ;; update appt each time agenda opened
     (add-hook 'org-finalize-agenda-hook 'org-agenda-to-appt)

     (defun my/appt-display (min-to-app new-time msg)
       (my/popup (format "Appointment in %s minute(s)" min-to-app) msg
		 "/usr/share/icons/gnome/32x32/status/appointment-soon.png"))
     (setq appt-disp-window-function (function my/appt-display))

     ;; MobileOrg configuration
     (setq org-mobile-directory (concat dot-org-dir "stage/"))
     (setq org-directory dot-org-dir)
     (setq org-mobile-inbox-for-pull (concat dot-org-dir "inbox.org"))
     (add-hook 'org-mobile-post-push-hook
               (lambda () (shell-command
                           (concat "scp -r " org-mobile-directory "* " org-webdav-url)
                           )))
     (add-hook 'org-mobile-pre-pull-hook
               (lambda () (shell-command
                           (concat "scp " org-webdav-url "/mobileorg.org " org-mobile-directory)
                           )))
     (add-hook 'org-mobile-post-pull-hook
               (lambda () (shell-command
                           (concat "scp " org-mobile-directory "mobileorg.org " org-webdav-url)
                           )))

     ;; setup org-mime
     (require 'org-mime)
     (setq org-mime-library 'mml)
     (add-hook 'org-mode-hook
               (lambda ()
                 (local-set-key "\C-c\M-o" 'org-mime-org-buffer-htmlize)))
     (add-hook 'org-mime-html-hook
               (lambda ()
                 (progn
                   (org-mime-change-element-style
                    "blockquote" "border-left: 2px solid gray; padding-left: 4px;")
                   (org-mime-change-element-style
                    "pre" (format "color: %s; background-color: %s; padding: 0.5em;"
                                  "#E6E1DC" "#232323")))))

     ;; allow for export=>beamer by placing
     ;; #+LaTeX_CLASS: beamer in org files
     (unless (boundp 'org-export-latex-classes)
       (setq org-export-latex-classes nil))
     (add-to-list 'org-export-latex-classes
		  '("beamer"
		    "\\documentclass[11pt]{beamer}\n
      \\mode<presentation>\n
      \\usetheme{Antibes}\n
      \\usecolortheme{lily}\n
      \\beamertemplateballitem\n
      \\setbeameroption{show notes}
      \\usepackage[utf8]{inputenc}\n
      \\usepackage[T1]{fontenc}\n
      \\usepackage{hyperref}\n
      \\usepackage{color}
      \\usepackage{listings}
      \\lstset{numbers=none,language=[ISO]C++,tabsize=4,
  frame=single,
  basicstyle=\\small,
  showspaces=false,showstringspaces=false,
  showtabs=false,
  keywordstyle=\\color{blue}\\bfseries,
  commentstyle=\\color{red},
  }\n
      \\usepackage{verbatim}\n
      \\institute{Miskatonic University, Astrology Dept.}\n
       \\subject{RMRF}\n"

     ("\\section{%s}" . "\\section*{%s}")

     ("\\begin{frame}[fragile]\\frametitle{%s}"
      "\\end{frame}"
      "\\begin{frame}[fragile]\\frametitle{%s}"
      "\\end{frame}")))
     ))

(global-set-key [f11] 'my-org-mobile-pull)
(global-set-key [f12] 'org-mobile-push)

(provide 'init-org-mode)
