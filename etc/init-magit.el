;; Magit/Egg mode
;; M-x magit-status
;; g refresh
;; s add to staging
;; u remove from staging
;; i ignore
;; C-u i ask to ignore
;; k delete untracked file
;; c C-c C-c commit
;; c C-c C-a amend
;; l history
;; b switch to branch
;; B create and switch to branch

;; Magit Mode
(require 'magit)

(global-set-key (kbd "C-x C-g") 'magit-status)

(defadvice magit-status (around magit-fullscreen activate)
  (window-configuration-to-register :magit-fullscreen)
  ad-do-it
  (delete-other-windows))

(defun magit-quit-session ()
  "Restores the previous window configuration and kills the magit buffer"
  (interactive)
  (kill-buffer)
  (jump-to-register :magit-fullscreen))

(define-key magit-status-mode-map (kbd "q") 'magit-quit-session)

(setq magit-diff-refine-hunk 'all)
(custom-set-faces
 '(magit-item-highlight ((t nil))))

(provide 'init-magit)
