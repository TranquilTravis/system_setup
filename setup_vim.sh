# install python3.8 https://stackoverflow.com/questions/62830862/how-to-install-python3-8-on-debian-10
# install vim8.2 either by brew install or make install from git repo
# if install vim from git, make sure install git with ruby support by:
# ./configure --with-features=huge \
#    --enable-multibyte \
#    --enable-rubyinterp=yes \
#    --enable-python3interp=yes \
#    --enable-perlinterp=yes \
#    --with-python3-command=python3.8 && make && sudo make install
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k
echo 'prompt_context() {}' &>> ~/.oh-my-zsh/custom/themes/powerlevel9k/powerlevel9k.zsh-theme
# install pathogen : https://github.com/tpope/vim-pathogen (used for command-t)
cd ~/.vim/bundle/YouCompleteMe
python3 install.py --all
brew install silversearcher-ag
brew install ripgrep
