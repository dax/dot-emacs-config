(require 'helm-config)

(helm-mode 1)
;; (helm-dired-mode 1)

(autoload 'helm-do-grep-1 "helm")

(setq helm-ff-newfile-prompt-p nil)
(setq helm-ff-transformer-show-only-basename t)
(setq helm-file-name-case-fold-search t)
(setq helm-idle-delay 0.2)
(setq helm-input-idle-delay 0.2)
(setq helm-quick-update t)

;; (global-set-key (kbd "C-x C-f") 'helm-find-files)
;; (global-set-key (kbd "C-x b") 'helm-mini)
(global-set-key (kbd "C-o") 'helm-imenu)
(global-set-key (kbd "C-c <SPC>") 'helm-all-mark-rings)

(setq helm-c-grep-default-command "ack-grep --nogroup --nocolor %p %f"
      helm-c-grep-default-recurse-command "ack-grep --nogroup --nocolor %p %f")

(add-hook 'eshell-mode-hook
          #'(lambda ()
              (define-key eshell-mode-map
                [remap pcomplete]
                'helm-esh-pcomplete)))

(provide 'config-helm)
