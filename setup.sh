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
