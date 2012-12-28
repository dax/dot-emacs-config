(require 'flymake-jslint)
;; Make sure we can find the lintnode executable
(setq-default lintnode-location (concat packages-dir "lintnode"))
(setq lintnode-jslint-set "")

;; JSLint can be... opinionated
;; (setq lintnode-jslint-excludes (list 'nomen 'undef 'plusplus 'onevar 'white))
;; Start the server when we first open a js file and start checking
(add-hook 'js3-mode-hook
          (lambda ()
            (lintnode-hook)
            (flymake-mode-on))
          )

(provide 'init-lintnode)
