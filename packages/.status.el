((Emacs-Groovy-Mode status "installed" recipe
                    (:name Emacs-Groovy-Mode :type github :pkgname "russel/Emacs-Groovy-Mode" :description "This is a collection of (X)Emacs modes for use with Groovy-related technology -- Groovy, Grails, etc."))
 (ac-R status "installed" recipe
       (:name ac-R :description "Auto-completion-mode support for R" :type git :url "https://github.com/mlf176f2/ac-R"))
 (ac-dabbrev status "installed" recipe
             (:name ac-dabbrev :type emacswiki :description "Emacs auto-complete plugin for Dynamic Abbreviations"))
 (ac-python status "installed" recipe
            (:name ac-python :description "Simple Python Completion Source for Auto-Complete" :type http :url "http://chrispoole.com/downloads/ac-python.el" :features ac-python))
 (ac-slime status "installed" recipe
           (:name ac-slime :website "https://github.com/purcell/ac-slime" :description "Emacs auto-complete plugin for Slime symbols" :type github :pkgname "purcell/ac-slime"))
 (ace-jump-mode status "installed" recipe
                (:name ace-jump-mode :website "https://github.com/winterTTr/ace-jump-mode/wiki" :description "A quick cursor location minor mode for emacs" :type github :pkgname "winterTTr/ace-jump-mode" :features ace-jump-mode))
 (ack status "removed" recipe nil)
 (ack-and-a-half status "installed" recipe
                 (:name ack-and-a-half :description "Yet another front-end for ack" :type github :pkgname "jhelwig/ack-and-a-half" :prepare
                        (progn
                          (defalias 'ack 'ack-and-a-half)
                          (defalias 'ack-same 'ack-and-a-half-same)
                          (defalias 'ack-find-file 'ack-and-a-half-find-file)
                          (defalias 'ack-find-file-same 'ack-and-a-half-find-file-same))))
 (actionscript-mode status "installed" recipe
                    (:name actionscript-mode :type http :url "http://www.emacswiki.org/emacs/download/actionscript-mode-connors.el" :feature actionscript-mode :after
                           (progn
                             (autoload 'actionscript-mode "actionscript-mode-connors")
                             (add-to-list 'auto-mode-alist
                                          '("\\.as\\'" . actionscript-mode)))))
 (ag status "removed" recipe nil)
 (ansi-color status "removed" recipe nil)
 (anything status "installed" recipe
           (:name anything :website "http://www.emacswiki.org/emacs/Anything" :description "Open anything / QuickSilver-like candidate-selection framework" :type git :url "http://repo.or.cz/r/anything-config.git" :shallow nil :load-path
                  ("." "extensions" "contrib")
                  :features anything))
 (anything-ack status "removed" recipe nil)
 (auto-complete status "installed" recipe
                (:name auto-complete :website "https://github.com/auto-complete/auto-complete" :description "The most intelligent auto-completion extension." :type github :pkgname "auto-complete/auto-complete" :depends
                       (popup fuzzy)))
 (auto-complete-chunk status "installed" recipe
                      (:name auto-complete-chunk :description "Auto-completion for dot.separated.words." :type github :pkgname "tkf/auto-complete-chunk" :depends auto-complete))
 (auto-complete-clang status "installed" recipe
                      (:name auto-complete-clang :website "https://github.com/brianjcj/auto-complete-clang" :description "Auto-complete sources for Clang. Combine the power of AC, Clang and Yasnippet." :type github :pkgname "brianjcj/auto-complete-clang" :depends auto-complete))
 (auto-complete-css status "installed" recipe
                    (:name auto-complete-css :description "Auto-complete sources for CSS" :type http :url "http://www.cx4a.org/pub/auto-complete-css.el" :depends auto-complete))
 (auto-complete-emacs-lisp status "installed" recipe
                           (:name auto-complete-emacs-lisp :description "Auto-complete sources for emacs lisp" :type http :url "http://www.cx4a.org/pub/auto-complete-emacs-lisp.el" :depends auto-complete))
 (auto-complete-etags status "installed" recipe
                      (:name auto-complete-etags :type emacswiki :description "Auto-complete sources for etags" :depends auto-complete))
 (auto-complete-extension status "installed" recipe
                          (:name auto-complete-extension :type emacswiki :description "Some extension for auto-complete-mode" :depends auto-complete))
 (auto-complete-latex status "installed" recipe
                      (:name auto-complete-latex :description "A LaTeX extention for auto-complete-mode" :website "https://bitbucket.org/tequilasunset/auto-complete-latex" :url "https://bitbucket.org/tequilasunset/auto-complete-latex" :type hg :depends auto-complete))
 (auto-complete-rst status "installed" recipe
                    (:name auto-complete-rst :description "Auto-complete extension for ReST and Sphinx" :type github :pkgname "tkf/auto-complete-rst" :depends auto-complete))
 (auto-complete-ruby status "installed" recipe
                     (:name auto-complete-ruby :description "Auto-complete sources for Ruby" :type http :url "http://www.cx4a.org/pub/auto-complete-ruby.el" :depends
                            (auto-complete)))
 (auto-complete-yasnippet status "installed" recipe
                          (:name auto-complete-yasnippet :description "Auto-complete sources for YASnippet" :type http :url "http://www.cx4a.org/pub/auto-complete-yasnippet.el" :depends
                                 (auto-complete yasnippet)))
 (auto-indent-mode status "installed" recipe
                   (:name auto-indent-mode :website "https://github.com/mlf176f2/auto-indent-mode.el" :description "Automatically Indent  when pressing return, pasting, and other customizable features." :type github :pkgname "mlf176f2/auto-indent-mode.el"))
 (auto-java-complete status "removed" recipe nil)
 (auto-pair-plus status "installed" recipe
                 (:name auto-pair-plus :description "Autopair handler to extend Autopair behavior." :type github :pkgname "emacsmirror/auto-pair-plus" :autoloads nil :depends autopair))
 (autopair status "installed" recipe
           (:name autopair :website "https://github.com/capitaomorte/autopair" :description "Autopair is an extension to the Emacs text editor that automatically pairs braces and quotes." :type github :pkgname "capitaomorte/autopair" :features autopair))
 (camelcase-mode status "installed" recipe
                 (:name camelcase-mode :description "Camel case support for Emacs" :type http :url "http://www.eecs.ucf.edu/~leavens/emacs/camelCase/camelCase-mode.el"))
 (caml-mode status "removed" recipe nil)
 (cedet status "installed" recipe
        (:name cedet :website "http://cedet.sourceforge.net/" :description "CEDET is a Collection of Emacs Development Environment Tools written with the end goal of creating an advanced development environment in Emacs." :type bzr :url "bzr://cedet.bzr.sourceforge.net/bzrroot/cedet/code/trunk" :build
               `(("sh" "-c" "touch `find . -name Makefile`")
                 ("make" ,(format "EMACS=%s"
                                  (shell-quote-argument el-get-emacs))
                  "clean-all")
                 ("make" ,(format "EMACS=%s"
                                  (shell-quote-argument el-get-emacs)))
                 ("make" ,(format "EMACS=%s"
                                  (shell-quote-argument el-get-emacs))
                  "-C" "contrib"))
               :build/berkeley-unix
               `(("sh" "-c" "touch `find . -name Makefile`")
                 ("gmake" ,(format "EMACS=%s"
                                   (shell-quote-argument el-get-emacs))
                  "clean-all")
                 ("gmake" ,(format "EMACS=%s"
                                   (shell-quote-argument el-get-emacs)))
                 ("gmake" ,(format "EMACS=%s"
                                   (shell-quote-argument el-get-emacs))
                  "-C" "contrib"))
               :build/windows-nt
               ("echo #!/bin/sh > tmp.sh & echo touch `/usr/bin/find . -name Makefile` >> tmp.sh & echo make FIND=/usr/bin/find >> tmp.sh" "sed 's/^M$//' tmp.sh  > tmp2.sh" "sh ./tmp2.sh" "rm ./tmp.sh ./tmp2.sh")
               :features nil :lazy nil :post-init
               (unless
                   (featurep 'cedet-devel-load)
                 (load
                  (expand-file-name "cedet-devel-load.el" pdir)))))
 (cl-lib status "installed" recipe
         (:name cl-lib :builtin "24.3" :type elpa :description "Properly prefixed CL functions and macros" :url "http://elpa.gnu.org/packages/cl-lib.html"))
 (clojure-mode status "installed" recipe
               (:name clojure-mode :website "https://github.com/technomancy/clojure-mode" :description "Emacs support for the Clojure language." :type github :pkgname "technomancy/clojure-mode"))
 (coffee-mode status "installed" recipe
              (:name coffee-mode :website "http://ozmm.org/posts/coffee_mode.html" :description "Emacs Major Mode for CoffeeScript" :type github :pkgname "defunkt/coffee-mode" :features coffee-mode :post-init
                     (progn
                       (add-to-list 'auto-mode-alist
                                    '("\\.coffee$" . coffee-mode))
                       (add-to-list 'auto-mode-alist
                                    '("Cakefile" . coffee-mode))
                       (setq coffee-js-mode 'javascript-mode))))
 (color-theme status "installed" recipe
              (:name color-theme :description "An Emacs-Lisp package with more than 50 color themes for your use. For questions about color-theme" :website "http://www.nongnu.org/color-theme/" :type http-tar :options
                     ("xzf")
                     :url "http://download.savannah.gnu.org/releases/color-theme/color-theme-6.6.0.tar.gz" :load "color-theme.el" :features "color-theme" :post-init
                     (progn
                       (color-theme-initialize)
                       (setq color-theme-is-global t))))
 (color-theme-zenburn status "removed" recipe nil)
 (css-mode status "installed" recipe
           (:name css-mode :description "Minor mode for CSS" :features css-mode :type elpa))
 (ctable status "installed" recipe
         (:name ctable :description "Table Component for elisp" :type github :pkgname "kiwanami/emacs-ctable"))
 (ctags-update status "installed" recipe
               (:name ctags-update :auto-generated t :type elpa :description "auto update TAGS in parent directory using exuberant-ctags -*- coding:utf-8 -*-" :repo
                      ("marmalade" . "http://marmalade-repo.org/packages/")))
 (dash status "installed" recipe
       (:name dash :description "A modern list api for Emacs. No 'cl required." :type github :pkgname "magnars/dash.el"))
 (deferred status "installed" recipe
   (:name deferred :description "Simple asynchronous functions for emacs lisp" :website "https://github.com/kiwanami/emacs-deferred" :type github :pkgname "kiwanami/emacs-deferred" :features "deferred"))
 (deft status "installed" recipe
   (:name deft :description "Deft is an Emacs mode for quickly browsing, filtering, and editing directories of plain text notes, inspired by Notational Velocity." :type http :url "http://jblevins.org/projects/deft/deft.el" :features deft))
 (diff-git status "installed" recipe
           (:name diff-git :website "https://github.com/alanfalloon/diff-git.el" :description "A small emacs extension for working with the git index from within diff-mode" :type github :pkgname "alanfalloon/diff-git.el"))
 (diminish status "installed" recipe
           (:name diminish :description "An Emacs package that diminishes the amount of space taken on the mode line by the names of minor modes." :type http :url "http://www.eskimo.com/~seldon/diminish.el" :features diminish))
 (dired+ status "installed" recipe
         (:name dired+ :description "Extensions to Dired" :type emacswiki :features dired+))
 (dired-details status "installed" recipe
                (:name dired-details :description "Make file details hide-able in dired" :type emacswiki :features dired-details))
 (drag-stuff status "installed" recipe
             (:name drag-stuff :website "https://github.com/rejeep/drag-stuff#readme" :description "Drag Stuff is a minor mode for Emacs that makes it possible to drag stuff, such as words, region and lines, around in Emacs." :features drag-stuff :type http :url "https://github.com/rejeep/drag-stuff/raw/master/drag-stuff.el"))
 (ecb status "removed" recipe nil)
 (eclim status "removed" recipe nil)
 (ein status "installed" recipe
      (:name ein :description "IPython notebook client in Emacs" :type github :pkgname "tkf/emacs-ipython-notebook" :depends
             (websocket nxhtml)
             :load-path
             ("lisp")
             :submodule nil :features ein))
 (el-get status "installed" recipe
         (:name el-get :website "https://github.com/dimitri/el-get#readme" :description "Manage the external elisp bits and pieces you depend upon." :type github :branch "4.stable" :pkgname "dimitri/el-get" :info "." :load "el-get.el"))
 (emacs-rails status "removed" recipe nil)
 (emacs-w3m status "removed" recipe nil)
 (epc status "installed" recipe
      (:name epc :description "An RPC stack for Emacs Lisp" :type github :pkgname "kiwanami/emacs-epc" :depends
             (deferred ctable)))
 (eproject status "removed" recipe nil)
 (ess status "installed" recipe
      (:name ess :description "Emacs Speaks Statistics: statistical programming within Emacs" :type svn :url "https://svn.r-project.org/ESS/trunk/" :info "doc/info/" :build `,(mapcar
                                                                                                                                                                                (lambda
                                                                                                                                                                                  (target)
                                                                                                                                                                                  (concat "make " target " EMACS=" el-get-emacs))
                                                                                                                                                                                '("clean" "all"))
             :load-path
             ("lisp")
             :features ess-site))
 (expand-region status "installed" recipe
                (:name expand-region :type github :pkgname "magnars/expand-region.el" :description "Expand region increases the selected region by semantic units. Just keep pressing the key until it selects what you want." :website "https://github.com/magnars/expand-region.el#readme" :features expand-region))
 (filladapt status "installed" recipe
            (:name filladapt :description "Filladapt enhances the behavior of Emacs' fill functions by guessing the proper fill prefix in many contexts. Emacs has a built-in adaptive fill mode but Filladapt is much better." :type http :url "http://www.wonderworks.com/download/filladapt.el"))
 (flymake-easy status "installed" recipe
               (:name flymake-easy :type github :description "Helpers for easily building flymake checkers" :pkgname "purcell/flymake-easy" :website "http://github.com/purcell/flymake-easy"))
 (flymake-fringe-icons status "removed" recipe nil)
 (flymake-point status "installed" recipe
                (:name flymake-point :description "Show flymake errors under the point in the minibuffer" :type http :url "https://bitbucket.org/brodie/dotfiles/raw/tip/.emacs.d/plugins/flymake-point.el" :features flymake-point))
 (fringe-helper status "installed" recipe
                (:name fringe-helper :description "Helper functions for fringe bitmaps." :type http :url "http://nschum.de/src/emacs/fringe-helper/fringe-helper.el" :features fringe-helper))
 (fuzzy status "installed" recipe
        (:name fuzzy :website "https://github.com/auto-complete/fuzzy-el" :description "Fuzzy matching utilities for GNU Emacs" :type github :pkgname "auto-complete/fuzzy-el"))
 (git-emacs status "installed" recipe
            (:name git-emacs :description "Yet another git emacs mode for newbies" :type github :pkgname "tsgates/git-emacs" :features git-emacs))
 (git-gutter status "installed" recipe
             (:name git-gutter :description "Emacs port of GitGutter Sublime Text 2 Plugin" :website "https://github.com/syohex/emacs-git-gutter" :type github :pkgname "syohex/emacs-git-gutter"))
 (git-gutter-fringe status "installed" recipe
                    (:name git-gutter-fringe :type github :pkgname "syohex/emacs-git-gutter-fringe" :description "Fringe version of git-gutter.el" :depends
                           (git-gutter fringe-helper)))
 (git-modeline status "installed" recipe
               (:name git-modeline :description "Mode line decoration support, part of git-emacs." :type no-op :depends git-emacs :features git-modeline))
 (gnus status "installed" recipe
       (:name gnus :description "A newsreader for GNU Emacs" :type git :url "http://git.gnus.org/gnus.git" :build
              `(("./configure" ,(concat "--with-emacs="
                                        (shell-quote-argument el-get-emacs)))
                ("make"))
              :build/windows-nt
              `(,(concat "\"make.bat " invocation-directory "\""))
              :info "texi" :load-path
              ("lisp")
              :autoloads nil :features gnus-load))
 (google-contacts status "installed" recipe
                  (:name google-contacts :type git :url "git://git.naquadah.org/google-contacts.el.git" :feature google-contacts))
 (haml-mode status "installed" recipe
            (:name haml-mode :description "Major mode for editing Haml files" :type github :pkgname "nex3/haml-mode"))
 (haskell-mode status "installed" recipe
               (:name haskell-mode :description "A Haskell editing mode" :type github :pkgname "haskell/haskell-mode" :load "haskell-site-file.el" :post-init
                      (progn
                        (add-hook 'haskell-mode-hook 'turn-on-haskell-doc-mode)
                        (add-hook 'haskell-mode-hook 'turn-on-haskell-indentation))))
 (helm status "installed" recipe
       (:name helm :description "Emacs incremental and narrowing framework" :type github :pkgname "emacs-helm/helm" :features helm-config))
 (helm-ag status "removed" recipe nil)
 (helm-rails status "installed" recipe
             (:name helm-rails :description "Helm extension for Rails projects" :type github :pkgname "asok/helm-rails" :depends
                    (helm magit inflections)
                    :features helm-rails-loaddefs))
 (highlight-parentheses status "installed" recipe
                        (:name highlight-parentheses :description "Highlight the matching parentheses surrounding point." :type http :url "http://nschum.de/src/emacs/highlight-parentheses/highlight-parentheses.el" :features highlight-parentheses))
 (hl-sexp status "installed" recipe
          (:name hl-sexp :description "Highlight the current sexp" :type http :url "http://edward.oconnor.cx/elisp/hl-sexp.el" :features hl-sexp))
 (ido-yes-or-no status "removed" recipe nil)
 (idomenu status "removed" recipe nil)
 (inf-ruby status "installed" recipe
           (:name inf-ruby :description "Inferior Ruby Mode - ruby process in a buffer." :type github :pkgname "danielsz/inf-ruby"))
 (inflections status "installed" recipe
              (:name inflections :description "Convert english words between singular and plural" :type elpa))
 (jedi status "installed" recipe
       (:name jedi :description "An awesome Python auto-completion for Emacs" :type github :pkgname "tkf/emacs-jedi" :build
              (("make" "requirements"))
              :submodule nil :depends
              (epc auto-complete)))
 (js-comint status "installed" recipe
            (:name js-comint :description "Run javascript in an inferior process window." :type http :url "http://downloads.sourceforge.net/js-comint-el/js-comint.el"))
 (js3-mode status "installed" recipe
           (:name js3-mode :website "https://github.com/thomblake/js3-mode#readme" :description "A chimeric fork of js2-mode and js-mode" :type github :pkgname "thomblake/js3-mode" :prepare
                  (autoload 'js3-mode "js3" nil t)))
 (json status "installed" recipe
       (:name json :description "JavaScript Object Notation parser / generator" :type http :url "http://edward.oconnor.cx/elisp/json.el" :features json))
 (json-mode status "installed" recipe
            (:name json-mode :auto-generated t :type elpa :description "Major mode for editing JSON files"))
 (lintnode status "installed" recipe
           (:name lintnode :type git :url "git://github.com/davidmiller/lintnode.git" :feature lintnode :build
                  ("npm install")))
 (list-processes+ status "removed" recipe nil)
 (lua-mode status "installed" recipe
           (:name lua-mode :description "A major-mode for editing Lua scripts" :website "https://github.com/immerrr/lua-mode" :type git :url "https://github.com/immerrr/lua-mode"))
 (magit status "installed" recipe
        (:name magit :website "https://github.com/magit/magit#readme" :description "It's Magit! An Emacs mode for Git." :type github :pkgname "magit/magit" :info "." :autoloads
               ("50magit")
               :build
               (("make" "all"))
               :build/darwin
               `(,(concat "make EMACS=" el-get-emacs " all"))))
 (magit-view-file status "installed" recipe
                  (:name magit-view-file :type github :description "View git file through history." :pkgname "renard/magit-view-file"))
 (mark-multiple status "removed" recipe nil)
 (markdown-mode status "installed" recipe
                (:name markdown-mode :description "Major mode to edit Markdown files in Emacs" :type git :url "git://jblevins.org/git/markdown-mode.git" :before
                       (add-to-list 'auto-mode-alist
                                    '("\\.\\(md\\|mdown\\|markdown\\)\\'" . markdown-mode))))
 (mode-compile status "installed" recipe
               (:name mode-compile :description "Smart command for compiling files according to major-mode." :type http :url "http://perso.tls.cena.fr/boubaker/distrib/mode-compile.el" :load-path
                      (".")))
 (monokai-theme status "installed" recipe
                (:name monokai-theme :auto-generated t :type elpa :description "REQUIRES EMACS 24: Monokai Color Theme for Emacs."))
 (multi-web-mode status "installed" recipe
                 (:name "multi-web-mode" :description "Multi Web Mode is a minor mode which makes web editing in Emacs much easier" :type github :pkgname "fgallina/multi-web-mode"))
 (multiple-cursors status "installed" recipe
                   (:name multiple-cursors :description "An experiment in adding multiple cursors to emacs" :type github :pkgname "magnars/multiple-cursors.el" :features multiple-cursors))
 (mustache-mode status "installed" recipe
                (:name mustache-mode :description "Emacs Major Mode for Mustache" :features mustache-mode :type github :pkgname "mustache/emacs" :post-init
                       (progn
                         (add-to-list 'auto-mode-alist
                                      '("\\.hs$" . mustache-mode))
                         (add-to-list 'auto-mode-alist
                                      '("\\.handlebars$" . mustache-mode)))))
 (nognus status "installed" recipe
         (:name nognus :description "A newsreader for GNU Emacs" :type builtin :depends gnus))
 (nxhtml status "installed" recipe
         (:type github :pkgname "emacsmirror/nxhtml" :name nxhtml :type emacsmirror :description "An addon for Emacs mainly for web development." :build
                (list
                 (concat el-get-emacs " -batch -q -no-site-file -L . -l nxhtmlmaint.el -f nxhtmlmaint-start-byte-compilation"))
                :load "autostart.el"))
 (oauth2 status "installed" recipe
         (:name oauth2 :description "OAuth 2.0 Authorization Protocol" :type elpa))
 (org-caldav status "installed" recipe
             (:name org-caldav :website "https://github.com/dengste/org-caldav" :description "Two-way CalDAV synchronization for org-mode" :type github :pkgname "dengste/org-caldav"))
 (org-html5presentation status "installed" recipe
                        (:name org-html5presentation :type http :website "https://gist.github.com/509761" :description "html5 presentation from org files" :url "https://raw.github.com/gist/509761/org-html5presentation.el"))
 (org-impress-js status "installed" recipe
                 (:name org-impress-js :description "impress.js export for Org-mode" :type github :pkgname "kinjo/org-impress-js.el" :features org-impress-js))
 (org-mode status "installed" recipe
           (:name org-mode :website "http://orgmode.org/" :description "Org-mode is for keeping notes, maintaining ToDo lists, doing project planning, and authoring with a fast and effective plain-text system." :type git :url "git://orgmode.org/org-mode.git" :info "doc" :build/berkeley-unix `,(mapcar
                                                                                                                                                                                                                                                                                                       (lambda
                                                                                                                                                                                                                                                                                                         (target)
                                                                                                                                                                                                                                                                                                         (list "gmake" target
                                                                                                                                                                                                                                                                                                               (concat "EMACS="
                                                                                                                                                                                                                                                                                                                       (shell-quote-argument el-get-emacs))))
                                                                                                                                                                                                                                                                                                       '("oldorg"))
                  :build `,(mapcar
                            (lambda
                              (target)
                              (list "make" target
                                    (concat "EMACS="
                                            (shell-quote-argument el-get-emacs))))
                            '("oldorg"))
                  :load-path
                  ("." "lisp" "contrib/lisp")))
 (org-s5 status "installed" recipe
         (:name org-s5 :type github :pkgname "eschulte/org-S5" :description "Org-mode html export of S5 slideshow presentations"))
 (org-sync status "installed" recipe
           (:name org-sync :website "http://orgmode.org/worg/org-contrib/gsoc2012/student-projects/org-sync/" :description "Org-sync is a tool to synchronize Org-mode documents with bugtracking tools such as Bugzilla, Github or Google Code and other TODO-list services such as Remember the Milk." :type git :url "git://orgmode.org/org-sync.git" :prepare
                  (progn
                    (autoload 'os "os" "Sync org-mode files with different online services" t)
                    (autoload 'os-import "os" "Import information to sync with org-mode from different online services" t)
                    (autoload 'os-sync "os" "Sync current org-mode file with service it is bound to" t))))
 (package status "installed" recipe
          (:name package :description "ELPA implementation (\"package.el\") from Emacs 24" :builtin 24 :type http :url "http://repo.or.cz/w/emacs.git/blob_plain/1a0a666f941c99882093d7bd08ced15033bc3f0c:/lisp/emacs-lisp/package.el" :shallow nil :features package :post-init
                 (progn
                   (setq package-user-dir
                         (expand-file-name
                          (convert-standard-filename
                           (concat
                            (file-name-as-directory default-directory)
                            "elpa")))
                         package-directory-list
                         (list
                          (file-name-as-directory package-user-dir)
                          "/usr/share/emacs/site-lisp/elpa/"))
                   (make-directory package-user-dir t)
                   (unless
                       (boundp 'package-subdirectory-regexp)
                     (defconst package-subdirectory-regexp "^\\([^.].*\\)-\\([0-9]+\\(?:[.][0-9]+\\)*\\)$" "Regular expression matching the name of\n a package subdirectory. The first subexpression is the package\n name. The second subexpression is the version string."))
                   (setq package-archives
                         '(("ELPA" . "http://tromey.com/elpa/")
                           ("gnu" . "http://elpa.gnu.org/packages/")
                           ("marmalade" . "http://marmalade-repo.org/packages/")
                           ("SC" . "http://joseito.republika.pl/sunrise-commander/"))))))
 (php-mode-improved status "installed" recipe
                    (:name php-mode-improved :description "Major mode for editing PHP code. This is a version of the php-mode from http://php-mode.sourceforge.net that fixes a few bugs which make using php-mode much more palatable" :type emacswiki :load
                           ("php-mode-improved.el")
                           :features php-mode))
 (popup status "installed" recipe
        (:name popup :website "https://github.com/auto-complete/popup-el" :description "Visual Popup Interface Library for Emacs" :type github :pkgname "auto-complete/popup-el"))
 (powerline status "installed" recipe
            (:name powerline :website "https://github.com/jonathanchu/emacs-powerline" :description "Powerline for Emacs" :type github :pkgname "jonathanchu/emacs-powerline" :features powerline))
 (profile-dotemacs status "installed" recipe
                   (:name profile-dotemacs :type http :url "http://www.randomsample.de/profile-dotemacs.el" :description "profiles your .emacs" :autoloads t))
 (projectile status "installed" recipe
             (:name projectile :description "Project navigation and management library for Emacs" :type github :pkgname "bbatsov/projectile" :depends s :features projectile))
 (puppet-mode status "installed" recipe
              (:name puppet-mode :description "A simple mode for editing puppet manifests" :type http :url "https://raw.github.com/puppetlabs/puppet/master/ext/emacs/puppet-mode.el" :prepare
                     (progn
                       (autoload 'puppet-mode "puppet-mode" "Major mode for editing puppet manifests" t)
                       (add-to-list 'auto-mode-alist
                                    '("\\.pp$" . puppet-mode)))))
 (python status "installed" recipe
         (:name python :description "Python's flying circus support for Emacs" :type github :pkgname "fgallina/python.el"))
 (rainbow-mode status "installed" recipe
               (:name rainbow-mode :description "Colorize color names in buffers" :minimum-emacs-version 24 :type elpa))
 (request status "installed" recipe
          (:name request :description "Easy HTTP request for Emacs Lisp" :type github :submodule nil :pkgname "tkf/emacs-request"))
 (rhtml-mode status "installed" recipe
             (:name rhtml-mode :description "Major mode for editing RHTML files" :type github :pkgname "eschulte/rhtml" :prepare
                    (progn
                      (autoload 'rhtml-mode "rhtml-mode" nil t)
                      (add-to-list 'auto-mode-alist
                                   '("\\.html.erb$" . rhtml-mode)))))
 (rinari status "installed" recipe
         (:name rinari :description "Rinari Is Not A Rails IDE" :type github :pkgname "eschulte/rinari" :load-path
                ("." "util" "util/jump")
                :compile
                ("\\.el$" "util")
                :build
                ("rake doc:install_info")
                :info "doc" :features rinari))
 (rspec-mode status "installed" recipe
             (:name rspec-mode :description "Enhance ruby-mode for RSpec" :type github :pkgname "pezra/rspec-mode" :features rspec-mode))
 (ruby-compilation status "installed" recipe
                   (:name ruby-compilation :description "Run a ruby process in a compilation buffer" :type elpa))
 (ruby-electric status "removed" recipe nil)
 (ruby-end status "installed" recipe
           (:name ruby-end :description "Emacs minor mode for automatic insertion of end blocks for Ruby" :type http :url "https://github.com/rejeep/ruby-end/raw/master/ruby-end.el" :features ruby-end))
 (ruby-mode status "installed" recipe
            (:name ruby-mode :description "Major mode for editing Ruby files. RubyMode provides font-locking, indentation support, and navigation for Ruby code." :type elpa))
 (ruby-test-mode status "installed" recipe
                 (:name ruby-test-mode :type github :pkgname "r0man/ruby-test-mode" :description "Emacs minor mode for Behaviour and Test Driven Development in Ruby" :load "ruby-test-mode.el" :compile
                        ("ruby-test-mode.el")))
 (s status "installed" recipe
    (:name s :description "The long lost Emacs string manipulation library." :type github :pkgname "magnars/s.el" :features s))
 (sass-mode status "installed" recipe
            (:name sass-mode :description "Major mode for editing Sass files" :type github :pkgname "nex3/sass-mode" :depends haml-mode :post-init
                   (add-to-list 'auto-mode-alist
                                '("\\.scss$" . sass-mode))))
 (scala-mode status "installed" recipe
             (:name scala-mode :description "Major mode for editing Scala code." :type svn :url "http://lampsvn.epfl.ch/svn-repos/scala/scala-tool-support/trunk/src/emacs/" :build
                    ("make")
                    :load-path
                    (".")
                    :features scala-mode-auto))
 (slime status "installed" recipe
        (:name slime :description "Superior Lisp Interaction Mode for Emacs" :type github :features slime-autoloads :info "doc" :pkgname "nablaone/slime" :load-path
               ("." "contrib")
               :compile
               (".")
               :build
               ("make -C doc slime.info")
               :post-init
               (slime-setup)))
 (slime-clj status "installed" recipe
            (:name slime-clj :auto-generated t :type elpa :description "slime extensions for swank-clj"))
 (slime-repl status "installed" recipe
             (:name slime-repl :auto-generated t :type elpa :description "Read-Eval-Print Loop written in Emacs Lisp"))
 (smart-forward status "installed" recipe
                (:name smart-forward :auto-generated t :type elpa :depends
                       (expand-region)
                       :description "Semantic navigatioin"))
 (smart-mode-line status "installed" recipe
                  (:name smart-mode-line :auto-generated t :type elpa :description "A color coded smart mode-line."))
 (smex status "installed" recipe
       (:name smex :description "M-x interface with Ido-style fuzzy matching." :type github :pkgname "nonsequitur/smex" :features smex :post-init
              (smex-initialize)))
 (swank-clojure status "installed" recipe
                (:name swank-clojure :website "https://github.com/technomancy/swank-clojure" :description "Slime adapter for clojure" :type github :pkgname "technomancy/swank-clojure"))
 (tern status "installed" recipe
       (:name tern :description "Tern JS" :website "https://github.com/marijnh/tern" :type github :pkgname "marijnh/tern" :build
              ("npm install")
              :load-path
              ("emacs")
              :submodule nil :post-init
              (autoload 'tern-mode "tern.el" nil t)))
 (undo-tree status "installed" recipe
            (:name undo-tree :description "Treat undo history as a tree" :type git :url "http://www.dr-qubit.org/git/undo-tree.git" :prepare
                   (progn
                     (autoload 'undo-tree-mode "undo-tree.el" "Undo tree mode; see undo-tree.el for details" t)
                     (autoload 'global-undo-tree-mode "undo-tree.el" "Global undo tree mode" t))))
 (websocket status "installed" recipe
            (:name websocket :description "A websocket implementation in elisp, for emacs." :type github :pkgname "ahyatt/emacs-websocket"))
 (wrap-region status "installed" recipe
              (:name wrap-region :description "Wrap text with punctation or tag" :type elpa :prepare
                     (progn
                       (autoload 'wrap-region-mode "wrap-region" nil t)
                       (autoload 'turn-on-wrap-region-mode "wrap-region" nil t)
                       (autoload 'turn-off-wrap-region-mode "wrap-region" nil t)
                       (autoload 'wrap-region-global-mode "wrap-region" nil t))))
 (yaml-mode status "installed" recipe
            (:name yaml-mode :description "Simple major mode to edit YAML file for emacs" :type github :pkgname "yoshiki/yaml-mode"))
 (yasnippet status "installed" recipe
            (:name yasnippet :website "https://github.com/capitaomorte/yasnippet.git" :description "YASnippet is a template system for Emacs." :type github :pkgname "capitaomorte/yasnippet" :features "yasnippet" :pre-init
                   (unless
                       (or
                        (boundp 'yas/snippet-dirs)
                        (get 'yas/snippet-dirs 'customized-value))
                     (setq yas/snippet-dirs
                           (list
                            (concat el-get-dir
                                    (file-name-as-directory "yasnippet")
                                    "snippets"))))
                   :post-init
                   (put 'yas/snippet-dirs 'standard-value
                        (list
                         (list 'quote
                               (list
                                (concat el-get-dir
                                        (file-name-as-directory "yasnippet")
                                        "snippets")))))
                   :compile nil :submodule nil))
 (zenburn-theme status "installed" recipe
                (:name zenburn-theme :description "Zenburn theme for Emacs" :type http :url "https://raw.github.com/djcb/elisp/master/themes/zenburn-theme.el" :post-init
                       (add-to-list 'custom-theme-load-path default-directory))))
