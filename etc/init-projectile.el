;; projectile-find-file (C-c p f)
;; projectile-grep (C-c p g)
;; projectile-switch-to-buffer (C-c p b)
;; projectile-multi-occur (C-c p o)
;; projectile-replace (C-c p r)
;; projectile-invalidate-cache (C-c p i)
;; projectile-regenerate-tags (C-c p t)
;; projectile-kill-buffers (C-c p k)
;; projectile-dired (C-c p d)

(setq projectile-enable-caching t)
(setq projectile-cache-file (concat tmp-dir "projectile.cache"))

(projectile-global-mode)
(global-set-key (kbd "C-x f") 'helm-projectile)

(defun helm-projectile-grep ()
  (interactive)
  (let* ((projectile-require-project-root nil)
         (dir (or (projectile-project-root) (file-name-directory (or load-file-name buffer-file-name))))
         (filter (if current-prefix-arg nil '("*"))))
       (helm-do-grep-1 (list dir) t nil filter)
       ))

(global-set-key (kbd "C-x g") 'helm-projectile-grep)

(provide 'init-projectile)
