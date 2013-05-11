package "python-rope"
package "clang"
package "mercurial"
package "bzr"
package "cvs"
package "subversion"
if platform?("debian")
  package "texlive"
  execute "Update APT" do
    command "apt-get update"
    action :nothing
  end
  file "/etc/apt/sources.list.d/emacs-snapshot.list" do
    content "deb http://emacs.naquadah.org/ unstable/"
    notifies :run, "execute[Update APT]"
  end
  execute "install emacs-snapshot APT key" do
    command "wget -q http://emacs.naquadah.org/key.gpg -O - | apt-key add -"
    only_if "! (apt-key list | grep \"jd's apt repository <acid@debian.org>\")"
    notifies :run, "execute[Update APT]", :immediately
  end
  package "emacs-snapshot"
  package "texinfo"
  package "texlive-latex-extra"
else
  package "emacs"
  package "texlive-core"
  package "sbt"
end
package "exuberant-ctags"
