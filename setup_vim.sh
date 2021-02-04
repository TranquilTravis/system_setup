# plugin management: https://github.com/junegunn/vim-plug
# change default shell: https://unix.stackexchange.com/questions/136423/making-zsh-default-shell-without-root-access
# install python3.8 https://stackoverflow.com/questions/62830862/how-to-install-python3-8-on-debian-10
# or https://www.bobbydurrettdba.com/2020/02/11/python-3-8-1-linux-install-without-root/
# install vim8.2 either by brew install or make install from git repo
# https://blog.csdn.net/toyijiu/article/details/77197231 install vim without root
# if install vim from git, make sure install git with ruby support by:
# ./configure --with-features=huge \
#    --enable-multibyte \
#    --enable-rubyinterp=yes \
#    --enable-python3interp=yes \
#    --enable-perlinterp=yes \
#    --with-python3-command=python3.8 && make && sudo make install
# if you need -xterm_clipboard enabled, recompile vim with:
# ./configure --with-features=huge \
#    --enable-multibyte \
#    --enable-rubyinterp=yes \
#    --enable-python3interp=yes \
#    --enable-perlinterp=yes \
#    --enable-cscope \
#    --enable-gui=auto \
#    --enable-gtk2-check \
#    --enable-gnome-check \
#    --with-features=huge \
#    --with-x \
#    --with-python3-command=python3.8 && make && sudo make install
# if error with no X11 header files can be found
# install with: sudo apt-get install libxt-dev
# if you need to delete cache: find . -name config.cache -delete
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k
echo 'prompt_context() {}' &>> ~/.oh-my-zsh/custom/themes/powerlevel9k/powerlevel9k.zsh-theme
# install pathogen : https://github.com/tpope/vim-pathogen (used for command-t)
cd ~/.vim/bundle/YouCompleteMe
python3 install.py --all
brew install silversearcher-ag
brew install ripgrep
