#!/bin/bash
# Update package list and install Apache
sudo apt-get update
sudo apt-get install -y apache2

# Get the hostname of the VM
hostname=$(hostname)

# Create an HTML file with the hostname
echo "<html><body><h1>$hostname</h1></body></html>" | sudo tee /var/www/html/index.html

# Restart Apache to apply changes
sudo systemctl restart apache2