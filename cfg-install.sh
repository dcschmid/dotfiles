mkdir -p ~/.config
rm -f ~/.zshrc
rm -f ~/.Xdefaults
rm -f ~/.vimrc
rm -rf ~/.vim
rm -rf ~/.ctags
rm -rf ~/.config/tint2
rm -rf ~/.config/openbox
rm -rf ~/scripts
rm -rf ~/.config/nvim
ln -s /home/daniel/dotfiles/.zshrc ~/.zshrc
ln -s /home/daniel/dotfiles/.Xdefaults ~/.Xdefaults
ln -s /home/daniel/dotfiles/.vimrc ~/.vimrc
ln -s /home/daniel/dotfiles/.vim ~/.vim
ln -s /home/daniel/dotfiles/.ctags ~/.ctags
ln -s /home/daniel/dotfiles/.config/tint2 ~/.config/tint2
ln -s /home/daniel/dotfiles/.config/openbox ~/.config/openbox
ln -s /home/daniel/dotfiles/scripts ~/scripts
ln -s /home/daniel/dotfiles/.config/nvim ~/.config/nvim
