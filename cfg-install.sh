mkdir -p ~/.config
rm -f ~/.zshrc
rm -f ~/.Xdefaults
rm -f ~/.vimrc
rm -rf ~/.vim
rm -rf ~/.config/tint2
rm -rf ~/.config/openbox
rm -rf ~/scripts
rm -rf ~/.ctags.d
ln -s /home/daniel/dotfiles/.zshrc ~/.zshrc
ln -s /home/daniel/dotfiles/.Xdefaults ~/.Xdefaults
ln -s /home/daniel/dotfiles/vim/.vimrc ~/.vimrc
ln -s /home/daniel/dotfiles/vim/.vim ~/.vim
ln -s /home/daniel/dotfiles/.ctags.d ~/.ctags.d
ln -s /home/daniel/dotfiles/.config/tint2 ~/.config/tint2
ln -s /home/daniel/dotfiles/.config/openbox ~/.config/openbox
ln -s /home/daniel/dotfiles/scripts ~/scripts
