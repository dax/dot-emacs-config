((ac-R status "installed" recipe
       (:name ac-R :description "Auto-completion-mode support for R" :type git :url "https://github.com/mlf176f2/ac-R"))
 (ac-dabbrev status "installed" recipe
             (:name ac-dabbrev :type emacswiki :description "Emacs auto-complete plugin for Dynamic Abbreviations"))
 (ac-python status "installed" recipe
            (:name ac-python :description "Simple Python Completion Source for Auto-Complete" :type http :url "http://chrispoole.com/downloads/ac-python.el" :features ac-python))
 (ac-slime status "installed" recipe
           (:name ac-slime :website "https://github.com/purcell/ac-slime" :description "Emacs auto-complete plugin for Slime symbols" :type github :pkgname "purcell/ac-slime"))
 (ace-jump-mode status "installed" recipe
                (:name ace-jump-mode :website "https://github.com/winterTTr/ace-jump-mode/wiki" :description "A quick cursor location minor mode for emacs" :type github :pkgname "winterTTr/ace-jump-mode" :features ace-jump-mode))
 (actionscript-mode status "installed" recipe
                    (:name actionscript-mode :type http :url "http://www.emacswiki.org/emacs/download/actionscript-mode-connors.el" :feature actionscript-mode :after
                           (progn
                             (autoload 'actionscript-mode "actionscript-mode-connors")
                             (add-to-list 'auto-mode-alist
                                          '("\\.as\\'" . actionscript-mode)))))
 (ansi-color status "removed" recipe nil)
 (auto-complete status "installed" recipe
                (:name auto-complete :website "http://cx4a.org/software/auto-complete/" :description "The most intelligent auto-completion extension." :type github :pkgname "auto-complete/auto-complete" :depends
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
 (auto-indent-mode status "installed" recipe
                   (:name auto-indent-mode :website "https://github.com/mlf176f2/auto-indent-mode.el" :description "Automatically Indent  when pressing return, pasting, and other customizable features." :type github :pkgname "mlf176f2/auto-indent-mode.el"))
 (auto-java-complete status "removed" recipe nil)
 (auto-pair-plus status "installed" recipe
                 (:name auto-pair-plus :description "Autopair handler to extend Autopair behavior." :type github :pkgname "emacsmirror/auto-pair-plus" :autoloads nil :depends autopair))
 (autopair status "installed" recipe
           (:name autopair :website "https://github.com/capitaomorte/autopair" :description "Autopair is an extension to the Emacs text editor that automatically pairs braces and quotes." :type github :pkgname "capitaomorte/autopair" :features autopair))
 (breadcrumb status "installed" recipe
             (:name breadcrumb :website "http://breadcrumbemacs.sourceforge.net/" :description "Breadcrumb is an add-on module for Emacs that allows you to set a series of quick bookmarks in the file buffers, and jump back to them quickly." :type http :url "http://downloads.sourceforge.net/project/breadcrumbemacs/Breadcrumb%20for%20Emacs/1.1.3/breadcrumb-1.1.3.zip" :build
                    ("unzip breadcrumb-1.1.3.zip")))
 (camelcase-mode status "installed" recipe
                 (:name camelcase-mode :description "Camel case support for Emacs" :type http :url "http://www.eecs.ucf.edu/~leavens/emacs/camelCase/camelCase-mode.el"))
 (caml-mode status "removed" recipe nil)
 (cedet-trunk status "installed" recipe
              (:name cedet-trunk :website "http://cedet.sourceforge.net/" :description "CEDET is a Collection of Emacs Development Environment Tools written with the end goal of creating an advanced development environment in Emacs." :type bzr :url "bzr://cedet.bzr.sourceforge.net/bzrroot/cedet/code/trunk" :build
                     `(("sh" "-c" "touch `find . -name Makefile`")
                       ("make" ,(format "EMACS=%s"
                                        (shell-quote-argument el-get-emacs))
                        "clean-all")
                       ("make" ,(format "EMACS=%s"
                                        (shell-quote-argument el-get-emacs))))
                     :build/berkeley-unix
                     `(("sh" "-c" "touch `find . -name Makefile`")
                       ("gmake" ,(format "EMACS=%s"
                                         (shell-quote-argument el-get-emacs))
                        "clean-all")
                       ("gmake" ,(format "EMACS=%s"
                                         (shell-quote-argument el-get-emacs))))
                     :build/windows-nt
                     ("echo #!/bin/sh > tmp.sh & echo touch `/usr/bin/find . -name Makefile` >> tmp.sh & echo make FIND=/usr/bin/find >> tmp.sh" "sed 's/^M$//' tmp.sh > tmp2.sh" "sh ./tmp2.sh" "rm ./tmp.sh ./tmp2.sh")
                     :features nil :lazy nil :post-init
                     (unless
                         (featurep 'cedet-devel-load)
                       (load
                        (expand-file-name "cedet-devel-load.el" pdir)))))
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
 (deft status "installed" recipe
   (:name deft :type git :url "git://jblevins.org/git/deft.git" :feature deft :after
          (lambda nil
            (require 'deft))))
 (diminish status "installed" recipe
           (:name diminish :description "An Emacs package that diminishes the amount of space taken on the mode line by the names of minor modes." :type http :url "http://www.eskimo.com/~seldon/diminish.el" :features diminish))
 (dired+ status "installed" recipe
         (:name dired+ :description "Extensions to Dired" :type emacswiki :features dired+))
 (drag-stuff status "installed" recipe
             (:name drag-stuff :website "https://github.com/rejeep/drag-stuff#readme" :description "Drag Stuff is a minor mode for Emacs that makes it possible to drag stuff, such as words, region and lines, around in Emacs." :features drag-stuff :type http :url "https://github.com/rejeep/drag-stuff/raw/master/drag-stuff.el"))
 (ecb status "installed" recipe
      (:name ecb :description "Emacs Code Browser" :type cvs :module "ecb" :url ":pserver:anonymous@ecb.cvs.sourceforge.net:/cvsroot/ecb" :build
             `(("make" "CEDET=" ,(concat "EMACS="
                                         (shell-quote-argument el-get-emacs))))))
 (eclim status "removed" recipe nil)
 (ein status "installed" recipe
      (:name ein :description "IPython notebook client in Emacs" :type github :pkgname "tkf/emacs-ipython-notebook" :depends
             (websocket nxhtml)
             :load-path
             ("lisp")
             :submodule nil :features ein))
 (el-get status "installed" recipe
         (:name el-get :website "https://github.com/dimitri/el-get#readme" :description "Manage the external elisp bits and pieces you depend upon." :type github :branch "4.stable" :pkgname "dimitri/el-get" :features el-get :info "." :load "el-get.el"))
 (emacs-rails status "removed" recipe nil)
 (emacs-w3m status "removed" recipe nil)
 (ensime status "installed" recipe
         (:name ensime :description "ENhanced Scala Interaction Mode for Emacs" :type github :pkgname "aemoncannon/ensime" :build
                ("sbt update stage")
                :depends scala-mode :features ensime :load-path
                ("./src/main/elisp")
                :post-init
                (progn
                  (require 'ensime)
                  (require 'scala-mode-auto)
                  (add-hook 'scala-mode-hook 'ensime-scala-mode-hook))))
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
                (:name expand-region :type git :url "git://github.com/magnars/expand-region.el.git" :feature expand-region))
 (filladapt status "installed" recipe
            (:name filladapt :description "Filladapt enhances the behavior of Emacs' fill functions by guessing the proper fill prefix in many contexts. Emacs has a built-in adaptive fill mode but Filladapt is much better." :type http :url "http://www.wonderworks.com/download/filladapt.el"))
 (flymake-fringe-icons status "installed" recipe
                       (:name flymake-fringe-icons :description "Add icons in the fringe, for flymake" :depends fringe-helper :type http :url "https://gist.github.com/raw/759130/a85ebbc6bfc5fbab54677f4236e902b2da7bf41f/flymake-fringe-icons.el" :features flymake-fringe-icons))
 (flymake-point status "installed" recipe
                (:name flymake-point :description "Show flymake errors under the point in the minibuffer" :type http :url "https://bitbucket.org/brodie/dotfiles/raw/tip/.emacs.d/plugins/flymake-point.el" :features flymake-point))
 (flymake-ruby status "installed" recipe
               (:name flymake-ruby :description "Steve Purcell's Ruby Flymake support, with stricter warnings." :type http :url "https://gist.github.com/raw/758976/b4562bca1645a5567d02e97f04b1909401caa1ed/flymake-ruby.el" :features flymake-ruby :post-init
                      (add-hook 'ruby-mode-hook 'flymake-ruby-load)))
 (fringe-helper status "installed" recipe
                (:name fringe-helper :description "Helper functions for fringe bitmaps." :type http :url "http://nschum.de/src/emacs/fringe-helper/fringe-helper.el" :features fringe-helper))
 (fuzzy status "installed" recipe
        (:name fuzzy :website "https://github.com/auto-complete/fuzzy-el" :description "Fuzzy matching utilities for GNU Emacs" :type github :pkgname "auto-complete/fuzzy-el"))
 (google-contacts status "installed" recipe
                  (:name google-contacts :type git :url "git://git.naquadah.org/google-contacts.el.git" :feature google-contacts))
 (groovy-mode status "installed" recipe
              (:name groovy-mode :type bzr :url "lp:groovy-emacs-mode"))
 (haml-mode status "installed" recipe
            (:name haml-mode :description "Major mode for editing Haml files" :type github :pkgname "nex3/haml-mode"))
 (haskell-mode status "installed" recipe
               (:name haskell-mode :description "A Haskell editing mode" :type github :pkgname "haskell/haskell-mode" :load "haskell-site-file.el" :post-init
                      (progn
                        (add-hook 'haskell-mode-hook 'turn-on-haskell-doc-mode)
                        (add-hook 'haskell-mode-hook 'turn-on-haskell-indentation))))
 (helm status "installed" recipe
       (:name helm :description "Emacs incremental and narrowing framework" :type github :pkgname "emacs-helm/helm" :features helm-config))
 (highlight-parentheses status "installed" recipe
                        (:name highlight-parentheses :description "Highlight the matching parentheses surrounding point." :type http :url "http://nschum.de/src/emacs/highlight-parentheses/highlight-parentheses.el" :features highlight-parentheses))
 (hl-sexp status "installed" recipe
          (:name hl-sexp :description "Highlight the current sexp" :type http :url "http://edward.oconnor.cx/elisp/hl-sexp.el" :features hl-sexp))
 (ido-ubiquitous status "installed" recipe
                 (:name ido-ubiquitous :description "Use ido (nearly) everywhere" :type elpa))
 (ido-yes-or-no status "installed" recipe
                (:name ido-yes-or-no :description "Use Ido to answer yes-or-no questions" :type elpa))
 (idomenu status "removed" recipe nil)
 (inf-ruby status "installed" recipe
           (:name inf-ruby :description "Inferior Ruby Mode" :features inf-ruby :type elpa))
 (js-comint status "installed" recipe
            (:name js-comint :description "Run javascript in an inferior process window." :type http :url "http://downloads.sourceforge.net/js-comint-el/js-comint.el"))
 (js3-mode status "installed" recipe
           (:name js3-mode :type git :url "git://github.com/thomblake/js3-mode.git" :feature js3-mode))
 (json status "installed" recipe
       (:name json :description "JavaScript Object Notation parser / generator" :type http :url "http://edward.oconnor.cx/elisp/json.el" :features json))
 (lintnode status "installed" recipe
           (:name lintnode :type git :url "git://github.com/davidmiller/lintnode.git" :feature lintnode :build
                  ("npm install")))
 (list-processes+ status "removed" recipe nil)
 (lua-mode status "installed" recipe
           (:name lua-mode :description "A major mode for editing Lua scripts." :website "https://github.com/immerrr/lua-mode" :description "A major mode for editing Lua scripts." :type git :url "https://github.com/immerrr/lua-mode"))
 (magit status "installed" recipe
        (:name magit :website "https://github.com/magit/magit#readme" :description "It's Magit! An Emacs mode for Git." :type github :pkgname "magit/magit" :info "." :autoloads
               ("50magit")
               :build
               (("make" "all"))
               :build/darwin
               `(,(concat "make EMACS=" el-get-emacs " all"))))
 (mark-multiple status "removed" recipe nil)
 (markdown-mode status "installed" recipe
                (:name markdown-mode :description "Major mode to edit Markdown files in Emacs" :type git :url "git://jblevins.org/git/markdown-mode.git" :post-init
                       (add-to-list 'auto-mode-alist
                                    '("\\.\\(md\\|mdown\\|markdown\\)\\'" . markdown-mode))))
 (mode-compile status "installed" recipe
               (:name mode-compile :description "Smart command for compiling files according to major-mode." :type http :url "http://perso.tls.cena.fr/boubaker/distrib/mode-compile.el" :load-path
                      (".")))
 (multiple-cursors status "installed" recipe
                   (:name multiple-cursors :description "An experiment in adding multiple cursors to emacs" :type github :pkgname "magnars/multiple-cursors.el" :features multiple-cursors))
 (nognus status "installed" recipe
         (:name nognus :description "A newsreader for GNU Emacs" :type git :url "http://git.gnus.org/gnus.git" :build
                `(("./configure" ,(concat "--with-emacs="
                                          (shell-quote-argument el-get-emacs)))
                  ("make"))
                :build/windows-nt
                `(,(concat "\"make.bat " invocation-directory "\""))
                :info "texi" :load-path
                ("lisp")
                :autoloads nil :features gnus-load))
 (nxhtml status "installed" recipe
         (:type github :username "emacsmirror" :name nxhtml :type emacsmirror :description "An addon for Emacs mainly for web development." :build
                (list
                 (concat el-get-emacs " -batch -q -no-site-file -L . -l nxhtmlmaint.el -f nxhtmlmaint-start-byte-compilation"))
                :load "autostart.el"))
 (oauth2 status "installed" recipe
         (:name oauth2 :description "OAuth 2.0 Authorization Protocol" :type elpa))
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
                  ("." "lisp" "contrib/lisp")
                  :autoloads nil :features org-install))
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
 (popup status "installed" recipe
        (:name popup :website "https://github.com/m2ym/popup-el" :description "Visual Popup Interface Library for Emacs" :type github :pkgname "auto-complete/popup-el"))
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
               (:name rainbow-mode :description "Colorize color names in buffers" :type elpa))
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
 (smex status "installed" recipe
       (:name smex :description "M-x interface with Ido-style fuzzy matching." :type github :pkgname "nonsequitur/smex" :features smex :post-init
              (smex-initialize)))
 (swank-js status "installed" recipe
           (:name swank-js :description "SLIME REPL and other development tools for in-browser JavaScript and Node.JS" :website "https://github.com/fukamachi/swank-js" :type github :pkgname "fukamachi/swank-js" :features nil))
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
            (:name yaml-mode :description "Simple major mode to edit YAML file for emacs" :type github :pkgname "yoshiki/yaml-mode" :prepare
                   (progn
                     (autoload 'yaml-mode "yaml-mode" nil t)
                     (add-to-list 'auto-mode-alist
                                  '("\\.ya?ml\\'" . yaml-mode)))))
 (yasnippet status "removed" recipe nil)
 (yasnippet-update status "installed" recipe
                   (:name yasnippet-update :type git :url "https://github.com/dax/yasnippet" :branch "0.6" :features "yasnippet" :prepare
                          (progn
                            (unless
                                (or
                                 (boundp 'yas/snippet-dirs)
                                 (get 'yas/snippet-dirs 'customized-value))
                              (setq yas/snippet-dirs
                                    (list
                                     (concat el-get-dir
                                             (file-name-as-directory "yasnippet")
                                             "snippets")))))
                          :post-init
                          (progn
                            (put 'yas/snippet-dirs 'standard-value
                                 (list
                                  (list 'quote
                                        (list
                                         (concat el-get-dir
                                                 (file-name-as-directory "yasnippet")
                                                 "snippets"))))))))
 (zenburn-theme status "installed" recipe
                (:name zenburn-theme :description "Zenburn theme for Emacs" :type http :url "https://raw.github.com/djcb/elisp/master/themes/zenburn-theme.el" :post-init
                       (add-to-list 'custom-theme-load-path default-directory))))
