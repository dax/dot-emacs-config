(defun my/popup (title msg &optional icon sound)
  "Show a popup if we're on X, or echo it otherwise; TITLE is the title
of the message, MSG is the context. Optionally, you can provide an ICON"
  (interactive)
  (if (eq window-system 'x)
      (shell-command (concat "notify-send "
			     (if icon (concat "-i " icon) "")
			     " '" title "' '" msg "'"))
    (message (concat title ": " msg))))

(provide 'myutils)
