;; C-c r	remember note
;; remember
(autoload 'remember-region "remember" nil t)

;; Create remember frame with "emacsclient -n -e '(make-remember-frame)'"
(defadvice remember-finalize (after delete-remember-frame activate)
  "Advise remember-finalize to close the frame if it is the remember frame"
  (if (equal "remember" (frame-parameter nil 'name))
      (delete-frame)))

(defadvice remember-destroy (after delete-remember-frame activate)
  "Advise remember-destroy to close the frame if it is the rememeber frame"
  (if (equal "remember" (frame-parameter nil 'name))
      (delete-frame)))

;; make the frame contain a single window. by default org-remember
;; splits the window.
(add-hook 'remember-mode-hook
          'delete-other-windows)

(defun make-remember-frame ()
  "Create a new frame and run org-remember."
  (interactive)
  (make-frame '((name . "remember") (width . 80) (height . 10)))
  (select-frame-by-name "remember")
  (org-remember))

(global-set-key (kbd "C-c r") 'remember)

(eval-after-load "remember"
    '(progn
       (print "Loading remember-mode")
       (setq org-directory "~/.org/")
       (setq org-default-notes-file "~/.org/notes")
       (setq org-remember-templates
             '(("Todo" ?t "* TODO %^{Brief Description} %^g%?\nAdded: %U" "~/.org/organizer.org" "INBOX")))
       (setq remember-annotation-functions '(org-remember-annotation))
       (setq remember-handler-functions '(org-remember-handler))
       (add-hook 'remember-mode-hook 'org-remember-apply-template)))

(provide 'init-remember)
