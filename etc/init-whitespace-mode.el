(require 'whitespace-mode)

(autoload 'nuke-trailing-whitespace "whitespace" nil t)
(add-hook 'mail-send-hook 'nuke-trailing-whitespace)
(add-hook 'write-file-hooks (lambda ()
                              (when (not (member major-mode '(org-mode)))
                                (nuke-trailing-whitespace)
                                )
                              ))

;; setup Whitespace mode
(autoload 'whitespace-mode           "whitespace-mode"
  "Toggle whitespace visualization."        t)
(autoload 'whitespace-toggle-options "whitespace-mode"
  "Toggle local `whitespace-mode' options." t)

(provide 'init-whitespace-mode)
