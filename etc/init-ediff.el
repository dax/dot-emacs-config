(print "Loading init-ediff")
(setq ediff-window-setup-function 'ediff-setup-windows-plain)

(defun command-line-diff (switch)
  (let ((file1 (pop command-line-args-left))
        (file2 (pop command-line-args-left)))
    (ediff file1 file2)))

(defun close-frame ()
  (remove-hook 'ediff-quit-hook 'close-frame)
  (delete-frame))

(defun ediff-client (file1 file2)
  (add-hook 'ediff-quit-hook 'close-frame)
  (ediff file1 file2))

(add-to-list 'command-switch-alist '("-diff" . command-line-diff))

(defun sm-try-smerge ()
  (save-excursion
    (goto-char (point-min))
    (when (re-search-forward "^<<<<<<< " nil t)
      (smerge-ediff))))

(add-hook 'find-file-hook 'sm-try-smerge t)

(provide 'init-ediff)
