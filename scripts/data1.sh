#!/bin/bash
sudo apt update
sudo apt install git -y
sudo apt install nginx -y
sudo systemctl start nginx
sudo systemctl enable nginx
git clone -b master https://github.com/shiva270597/house-maakan.git
sudo cp -r /home/ubuntu/house-maakan/* /var/www/html/
sudo systemctl restart nginx