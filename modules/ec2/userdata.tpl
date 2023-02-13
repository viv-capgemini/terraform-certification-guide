#!/bin/bash
sudo apt update -y &&
sudo apt install -y nginx
echo "<h1>Hello Terraform World on aws from a module</h1>" > /var/www/html/index.html