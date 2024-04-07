#!/bin/bash
# Use this for your user data (script from top to bottom)
# install httpd (Linux 2023 AMI version)
sudo yum update - y 
sudo yum install -y httpd
sudo systemctl start httpd
sudo systemctl enable httpd
sudo sudo sh -c 'echo "<h1>Hello World from $(hostname -f)</h1>" > /var/www/html/index.html'
