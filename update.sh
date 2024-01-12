#!/bin/bash
echo "Starting custom Linux UPDATE script by Travis M."
echo "----------------------------------"

# Fix missing packages in the update
sudo apt-get update --fix-missing

# Update the script
git pull origin

echo "Updating Repositories"
sudo apt-get update
echo "Updating OS - Choose yes to questions"
sudo apt-get upgrade -y

# Additional update or upgrade commands if needed
# ...

# Restart the shell
exec bash
