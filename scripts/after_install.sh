#!/bin/bash
# Navigate to app directory
cd /var/www/simple-app

# Install dependencies
npm install --production

# Check if app is already running with PM2
if pm2 list | grep -q "simple-app"; then
  echo "Application already running, stopping it first"
  pm2 stop simple-app
fi
