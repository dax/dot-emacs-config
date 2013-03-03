;; (require 'scala-mode-auto)

;; (add-hook 'scala-mode-hook
;;           '(lambda ()
;;              (yas/minor-mode-on)

;;              (require 'compile)
;;              (require 'flymake)
;;              (require 'font-lock)

;;              (defvar scala-build-commad nil)
;;              (make-variable-buffer-local 'scala-build-command)

;;              ;; (add-hook 'scala-mode-hook
;;              ;;           (lambda ()
;;              ;; 	    (flymake-mode-on)
;;              ;; 	    ))

;;              (setq indent-tabs-mode nil)
;;              (setq tab-width 2)

;;              ))

(provide 'init-scala-mode)
