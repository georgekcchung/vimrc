#!/bin/bash

sudo apt-get update
sudo apt install openjdk-11-jdk-headless vim python3 python3-pip python3-venv golang build-essential cmake autoconf automake gdb git libffi-dev zlib1g-dev libssl-dev ripgrep agrep ctags curl -y
cp vimrc ~/.vimrc
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
pip3 install black
vim -E -s -u ~/.vimrc +PlugInstall +qall
cd ~/.vim/plugged/YouCompleteMe 
python3 install.py --all 
