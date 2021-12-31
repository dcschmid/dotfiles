mkdir -p ~/.config
rm -f ~/.zshrc
rm -f ~/.Xdefaults
rm -rf ~/.config/nvim
rm -rf ~/.ctags.d
ln -s /home/daniel/dotfiles/.zshrc ~/.zshrc
ln -s /home/daniel/dotfiles/.Xdefaults ~/.Xdefaults
ln -s /home/daniel/dotfiles/.ctags.d ~/.ctags.d
ln -s /home/daniel/dotfiles/.config/nvim ~/.config/nvim
