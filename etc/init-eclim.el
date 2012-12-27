(add-to-list 'load-path (concat packages-dir "eclim/vendor"))

(eval-after-load "eclim"
  '(progn
     (require 'eclim)
     (require 'eclimd)
     (setq eclim-auto-save t)
     (setq eclim-use-yasnippet nil)

     (global-eclim-mode -1)

     (setq eclim-interactive-completion-function 'ido-completing-read)

     (require 'ac-emacs-eclim-source)
     (add-hook 'eclim-mode-hook
               (lambda ()
                 (add-to-list 'ac-sources 'ac-source-emacs-eclim)
                 (add-to-list 'ac-sources 'ac-source-emacs-eclim-c-dot)))
     ))

(defun eclim-before-save-hook ()
  (when (member major-mode eclim-java-major-modes)
      (progn
        (print "eclim-before-save-hook")
        ;; TODO : buggy
        ;; (setq eclim-auto-save nil)
        ;; (eclim-java-import-missing)
        ;; (setq eclim-auto-save t)
        )
    ))

;; (add-hook 'before-save-hook 'eclim-before-save-hook)

(provide 'init-eclim)
