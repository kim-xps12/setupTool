#!/bin/sh
echo "Start Setup ubunut for koumei"
sudo apt-get update -y
sudo apt-get upgrade -y

#add themes repository
echo "add themes repository"
sudo add-apt-repository ppa:noobslab/macbuntu -y
sudo apt-get update -y
sudo apt-get install macbuntu-os-icons-lts-v7 -y
sudo apt-get install macbuntu-os-ithemes-lts-v7 -y
sudo apt-get install unity-tweak-tool -y

#install slingscloud (launchpad)
echo "install slingcloud (launchpad)"
sudo add-apt-repository ppa:noobslab/apps -y
sudo apt-get update -y
sudo apt-get install slingscold -y

#install search-indicator
echo "install search-indicator"
sudo apt-get install indicator-synapse -y

#install docky (dock)
echo "install docky (dock)"
sudo add-apt-repository ppa:docky-core/ppa -y
sudo apt-get update -y
sudo apt-get install docky -y

#install tools
echo "install vim"
sudo apt-get install vim-gtk -y
echo "install git"
sudo apt-get install git -y
echo "install sl"
sudo apt-get install sl -y

#download dotfiles
echo "download dotfiles from github"
git clone https://github.com/kim-xps12/dotfiles.git
git clone https://github.com/kim-xps12/.vim.git

#set desktop title
echo "set desktop title"
wget -O ~/Mac.po http://drive.noobslab.com/data/Mac-14.10/change-name-on-panel/mac.po
sudo msgfmt -o /usr/share/locale/ja/LC_MESSAGES/unity.mo ~/Mac.po

#set boot screen
echo "set boot screen"
sudo apt-get install macbuntu-os-bscreen-lts-v7 -y

#set login window
echo "set login window"
sudo apt-get install macbuntu-os-lightdm-lts-v7 -y

