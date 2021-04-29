#!/bin/bash

sudo apt-get update
sudo apt install cmake openjdk-11-jdk-headless vim python3 pip3 npm nodejs golang build-essential python3-pip ripgrep agrep ctags curl python3-venv -y
cp vimrc ~/.vimrc
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
sudo pip3 install black
vim -E -s -u ~/.vimrc +PlugInstall +qall
cd ~/.vim/plugged/YouCompleteMe 
python3 install.py --all 
