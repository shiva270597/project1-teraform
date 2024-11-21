#!/bin/bash
sudo apt update
sudo apt install nginx -y
sudo systemctl start nginx
sudo systemctl enable nginx
sudo echo "<h1>yes, i have done it</h1>" | sudo tee /var/www/html/index.html
sudo systemctl restart nginx