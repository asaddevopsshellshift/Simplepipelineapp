#!/bin/bash
# Create application directory if it doesn't exist
sudo mkdir -p /var/www/simple-app
sudo chown -R ubuntu:ubuntu /var/www/simple-app

# Install Node.js and npm if not already installed
if ! command -v node &> /dev/null
then
    # Install Node.js 18.x
    curl -fsSL https://deb.nodesource.com/setup_18.x | sudo -E bash -
    sudo apt-get install -y nodejs
fi

# Install PM2 globally if not already installed
if ! command -v pm2 &> /dev/null
then
    sudo npm install pm2 -g
fi
