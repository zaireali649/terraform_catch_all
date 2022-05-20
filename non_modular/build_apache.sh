#! /bin/bash
sudo apt-get update -y
sudo apt-get install -y apache2
sudo systemctl start apache2
sudo systemctl enable apache2
echo "<h1>Deployed via Terraform</h1><p>Demo CircleCI</p>" | sudo tee /var/www/html/index.html