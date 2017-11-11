#!/bin/sh
echo "Start Setup ubunut for koumei"

#add themes repository
echo "add themes repository"
sudo add-apt-repository ppa:noobslab/themes
sudo apt-get update
sudo apt-get install mbuntu-y-ithemes-v4
sudo apt-get install mbuntu-y-icons-v4
sudo apt-get install unity-tweak-tool

#install slingscloud (launchpad)
echo "install slingcloud (launchpad)"
sudo add-apt-repository ppa:noobslab/apps
sudo apt-get update
sudo apt-get install slingscold

#install search-indicator
echo "install search-indicator"
sudo apt-get install indicator-synapse

#install docky (dock)
echo "install docky (dock)"
sudo add-apt-repository ppa:docky-core/ppa
sudo apt-get update
sudo apt-get install docky
sudo apt-get install mbuntu-y-docky-skins-v4

#install tools
echo "install vim"
sudo apt-get install vim
echo "install git"
sudo apt-get install git
echo "install sl"
sudo apt-get install sl

#download dotfiles
echo "download dotfiles from github"
git clone https://github.com/kim-xps12/dotfiles.git

#set desktop title
echo "set desktop title"
wget -O ~/Mac.po http://drive.noobslab.com/data/Mac-14.10/change-name-on-panel/mac.po
sudo msgfmt -o /usr/share/locale/ja/LC_MESSAGES/unity.mo ~/Mac.po

#set boot screen
echo "set boot screen"
sudo apt-get install mbuntu-y-bscreen-v4

#set login window
echo "set login window"
sudo apt-get install mbuntu-y-lightdm-v4



