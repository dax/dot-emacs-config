(require 'ensime)

(setq ensime-default-server-root (concat packages-dir "ensime/dist_2.9.2"))
(require 'scala-mode-auto)
(add-hook 'scala-mode-hook 'ensime-scala-mode-hook)

(setq ensime-sem-high-faces
      '(
        (var . (:foreground "#ff2222"))
        (val . (:foreground "#999999"))
        (varField . (:foreground "#ff6666"))
        (valField . (:foreground "#666666"))
        (functionCall . (:foreground "#84BEE3"))
        (param . (:foreground "#999999"))
        (class . font-lock-type-face)
        (trait . (:foreground "#084EA8"))
        (object . (:foreground "#026DF7"))
        (package . font-lock-preprocessor-face)))

;; ensime-edit-definition
(provide 'init-ensime)
