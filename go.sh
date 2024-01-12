#!/bin/bash
echo "Starting custom Linux setup script by Travis M.  This will update your system, and add useful programs to your Debian (Ubuntu, Kali, etc) Linux Distributions.  Choose yes to all questions!"
echo "----------------------------------"
echo "alias dir='ls -alF'" >> ~/.bash_aliases
echo "alias update='./update.sh'" >> ~/.bash_aliases

# Ensure update.sh is executable
chmod +x ./update.sh

echo "Adding Fish shell PPA and installing Fish"
sudo add-apt-repository ppa:fish-shell/release-3
sudo apt-get update
sudo apt-get install fish

# Set Fish as the default shell
chsh -s /usr/bin/fish

echo "Updating Repositories"
sudo apt-get update
echo "Updating OS - Choose yes to questions"
sudo apt-get upgrade -y
echo "Installing programs"
sudo apt-get install -y gedit

# Download Chrome only if it's not already installed
if ! dpkg -l | grep -q google-chrome-stable; then
    wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
    sudo dpkg -i google-chrome-stable_current_amd64.deb
    sudo apt-get install -f
fi

# Source .bash_aliases to apply changes immediately
source ~/.bash_aliases

# Restart the shell
exec bash
