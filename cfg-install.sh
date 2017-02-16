git clone --bare https://bitbucket.org/dschmid/dotfiles $HOME/.cfg

alias configdot='/usr/local/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

mkdir -p .config-backup
configdot checkout
if [ $? = 0 ]; then
  echo "Checked out config.";
  else
    echo "Backing up pre-existing dot files.";
    configdot checkout 2>&1 | egrep "\s+\." | awk {'print $1'} | xargs -I{} mv {} .config-backup/{}
fi;
configdot checkout
configdot config status.showUntrackedFiles no