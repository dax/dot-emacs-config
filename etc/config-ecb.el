;; ECB configuration
(add-to-list 'load-path (concat base-dir "ecb"))
(require 'ecb-autoloads)

(eval-after-load "ecb"
  '(progn
     (define-key ecb-mode-map [(meta left)] 'ecb-nav-goto-previous)
     (define-key ecb-mode-map [(meta right)] 'ecb-nav-goto-next)
     (define-key ecb-mode-map [(control c)(o)] 'ecb-goto-window-methods)))

(setq ecb-major-modes-show-or-hide '((jde-mode)))
(setq ecb-options-version "2.40")
(setq ecb-source-file-regexps '((".*" ("\\(^\\(\\.\\|#\\)\\|\\(~$\\|\\.\\(elc\\|obj\\|o\\|class\\|lib\\|dll\\|a\\|so\\|cache\\|pyc\\)$\\)\\)") ("^\\.\\(emacs\\|gnus\\)$"))))
(setq ecb-source-path '(("/" "/") ("~/" "home")))
(setq ecb-wget-setup 'cons)

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ecb-default-highlight-face ((((class color) (background light)) (:background "cornflower blue" :foreground "yellow")) (((class color) (background dark)) (:background "Steelblue")) (t (:inverse-video t)))))

(provide 'config-ecb)
