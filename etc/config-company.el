(require 'company)

(setq company-backends '(company-elisp company-nxml company-css
                                       company-eclim company-semantic company-clang
                                       company-xcode company-ropemacs
                                       (company-gtags company-etags
                                                      company-dabbrev-code
                                                      ;; company-pysmell
                                                      company-keywords)
                                       company-oddmuse company-files
                                       company-dabbrev))

(setq company-auto-complete t)
(setq company-auto-complete-chars (quote (46)))
(setq company-minimum-prefix-length 1)
(setq company-require-match t)

(setq company-begin-commands '(self-insert-command))

(defun check-expansion ()
  (save-excursion
    (if (looking-at "\\_>") t
      (backward-char 1)
      (if (looking-at "\\.") t
        (backward-char 1)
        (if (looking-at "->") t nil)))))

(defun do-yas-expand ()
  (let ((yas/fallback-behavior 'return-nil))
    (yas/expand)))

(defun tab-indent-or-complete ()
  (interactive)
  (if (minibufferp)
      (if (boundp 'ido-cur-item)
          (ido-complete)
        (minibuffer-complete))
    (if (or (not yas/minor-mode)
            (null (do-yas-expand)))
        (if (check-expansion)
            (company-complete-common)
          (indent-for-tab-command)))))

(global-set-key [tab] 'tab-indent-or-complete)

(custom-set-faces
 '(company-tooltip ((t (:background "#656565" :foreground "#8ac6f2"))))
 '(company-tooltip-common ((t (:inherit company-tooltip :foreground "#bac6f2"))))
 '(company-tooltip-common-selection ((t (:inherit company-tooltip-selection :foreground "#f6f3e8"))))
 '(company-tooltip-selection ((t (:inherit company-tooltip :background "SkyBlue4" :foreground "#f6f3e8")))))

(define-globalized-minor-mode my-global-company-mode company-mode
  (lambda () (if (not (minibufferp))
                 (company-mode 1))))

(my-global-company-mode)

(provide 'config-company)
