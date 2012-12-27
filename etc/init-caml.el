(add-to-list 'load-path (concat packages-dir "tuareg"))

;;editer les fichiers caml en touareg mode
(setq auto-mode-alist (cons '("\\.ml\\w?" . tuareg-mode) auto-mode-alist))
(autoload 'tuareg-mode "tuareg" "Major mode for editing Caml code" t)
(autoload 'camldebug "camldebug" "Run the Caml debugger" t)

(provide 'init-caml)
