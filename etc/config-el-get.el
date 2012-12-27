(add-to-list 'load-path (concat packages-dir "el-get"))

(setq el-get-verbose t)
(setq message-log-max 1000)
(setq el-get-dir packages-dir)
(setq el-get-recipe-path (list (concat config-dir "recipes/")
                               (concat packages-dir "el-get/recipes/")))
(setq el-get-user-package-directory config-dir)

(unless (require 'el-get nil t)
  (url-retrieve
   "https://raw.github.com/dimitri/el-get/master/el-get-install.el"
   (lambda (s)
     (goto-char (point-max))
     (eval-print-last-sexp))))

(el-get nil)

(provide 'config-el-get)
