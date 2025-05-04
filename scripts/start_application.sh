#!/bin/bash
# Navigate to app directory
cd /var/www/simple-app

# Start the application with PM2
pm2 start app.js --name "simple-app" || pm2 restart simple-app

# Save PM2 process list to ensure app restarts on server reboot
pm2 save

# Make PM2 startup on system boot (for Ubuntu)
sudo env PATH=$PATH:/usr/bin pm2 startup systemd -u ubuntu --hp /home/ubuntu
sudo systemctl enable pm2-ubuntu
