#!/bin/bash
cp vimrc ~/.vimrc
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
sudo pip3 install black
vim -E -s -u ~/.vimrc +PlugInstall +qall
cd ~/.vim/plugged/YouCompleteMe 
python3 install.py --all 
