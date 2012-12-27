(setq browse-url-browser-function 'browse-url-generic
      browse-url-generic-program "xdg-open")

(require 'w3m)

(setq w3m-content-type-alist
      (delq
       (assoc "text/html" w3m-content-type-alist)
       w3m-content-type-alist))
(add-to-list
 'w3m-content-type-alist
 '("text/html" . ("\\.s?html?\\'" browse-url-generic nil)))

(provide 'init-emacs-w3m)
