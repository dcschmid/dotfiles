rm .zshrc
ln -s ~/dotfiles/.zshrc .zshrc
ln -s ~/dotfiles/.Xdefaults .Xdefaults
ln -s ~/dotfiles/.vimrc .vimrc
ln -s /home/daniel/dotfiles/.vim .vim
ln -s /home/daniel/dotfiles/.ctags.d .ctags.d
curl --create-dirs -o $HOME/.config/gotham/gotham.sh https://raw.githubusercontent.com/whatyouhide/gotham-contrib/master/shell/gotham.sh
