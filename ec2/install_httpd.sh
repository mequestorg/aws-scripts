#!/bin/bash
# Use this for your user data (script from top to bottom)
# install httpd (Linux 2023 AMI version)

# Update the package repositories
sudo yum update -y

# Install Apache HTTP Server (httpd)
sudo yum install -y httpd

# Start and enable httpd service
sudo systemctl start httpd
sudo systemctl enable httpd

# Create index.html file with some content
sudo sh -c 'echo "<h1>Hello World from $(hostname -f)</h1>" > /var/www/html/index.html'
