#!/bin/sh
echo "Start Setup ubunut for koumei"
sudo apt-get update -y
sudo apt-get upgrade -y

#install tools
echo "install vim"
sudo apt-get install vim-gtk -y
echo "install git"
sudo apt-get install git -y
echo "install sl"
sudo apt-get install sl -y
echo "install tmux"
sudo apt-get install tmux -y
echo "install completion"
sudo apt install bash-completion -y
source /etc/bash_completion

#download dotfiles
echo "download dotfiles from github"
git clone https://github.com/kim-xps12/dotfiles.git
git clone https://github.com/kim-xps12/.vim.git

