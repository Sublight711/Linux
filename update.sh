#!/bin/bash
echo "Starting custom Linux UPDATE script by Travis M."
echo "----------------------------------"

# Check if Git is installed
if ! command -v git &> /dev/null; then
    echo "Git is not installed. Installing..."
    sudo apt-get install -y git
fi

# Change to the script's directory
cd "$(dirname "$0")" || exit

# Update the script
git pull origin

echo "Updating Repositories"
sudo apt-get update
echo "Updating OS - Choose yes to questions"
sudo apt-get upgrade -y
sudo apt upgrade -y google-chrome-stable
