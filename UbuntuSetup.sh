#!/bin/bash
echo "Setting up Ubuntu environment..."

echo "add-apt-repository"
sudo add-apt-repository "deb http://cran.fhcrc.org/bin/linux/ubuntu precise/"
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E084DAB9
sudo add-apt-repository "deb http://repo.steampowered.com/steam/ precise"
sudo add-apt-repository ppa:webupd8team/sublime-text-2

sudo apt-get update

echo "Basic apps"
sudo apt-get install ubuntu-restricted-extras gnome-terminal gedit 
sudo apt-get install synaptic dpkg nano chromium-browser

echo "Remote apps"
sudo apt-get install remmina

echo "Dev packages"
sudo apt-get install r-base ipython ipython-notebook
sudo apt-get install sublime-text
sudo apt-get install pandoc

echo "Game Packages"
sudo apt-get install wine steam 