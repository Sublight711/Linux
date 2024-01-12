#!/bin/bash
echo "Starting custom Linux setup script by Travis M.  This will update your system, and add useful programs to your Debian (Ubuntu, Kali, etc) Linux Distributions.  Choose yes to all questions!"
echo "----------------------------------"
echo "alias dir='ls -alF'" >> .bash_aliases
echo "alias update='./update.sh'" >> .bash_aliases
sudo chmod 770 update.sh
echo "Updating Repositories"
sudo apt-get update
echo "Updating OS - Choose yes to questions"
sudo apt-get upgrade
echo "Installing programs"
sudo apt-get install gedit
sudo apt-get install fish
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
sudo apt-get install -f
