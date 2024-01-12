#!/bin/bash
echo "Starting custom Linux setup script by Travis M.  This will update your system, and add useful programs to your Debian (Ubuntu, Kali, etc) Linux Distributions.  Choose yes to all questions!"
echo "----------------------------------"
echo "alias dir='ls -alF'" >> .bash_aliases
echo "alias dir='ls -alF'" >> sudo apt-
echo "Updating Repositories"
sudo apt-get update
echo "Updating OS - Choose yes to questions"
sudo apt-get upgrade
echo "Installing programs"
sudo apt-get install gedit
sudo apt-get install fish
