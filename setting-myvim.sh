#!/bin/sh

curl https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh > install.sh
sh ./install.sh
apt-get update
apt-get install git
apt-get install vim
git clone https://github.com/kentaojapi/my-vimrc.git ~/my-vimrc
sudo cp ./my-vimrc/vimrc ~/.vimrc
