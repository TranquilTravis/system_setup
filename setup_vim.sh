# install vim8.2 either by brew install or make install from git repo
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k
echo 'prompt_context() {}' &>> ~/.oh-my-zsh/custom/themes/powerlevel9k/powerlevel9k.zsh-theme
cd ~/.vim/bundle/youcompleteme
python3 install.py --all
brew install silversearcher-ag
brew install ripgrep
