(require 'filladapt)

(setq-default filladapt-mode t)

(add-hook 'c-mode-common-hook
          (lambda ()
            (when (featurep 'filladapt)
              (c-setup-filladapt))))

(provide 'init-filladapt)
