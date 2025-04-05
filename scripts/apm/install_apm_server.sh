#!/bin/bash

# 1. Download and install public signing key
wget -qO - https://artifacts.elastic.co/GPG-KEY-elasticsearch | sudo apt-key add -

# 2. Install apt-transport-https package on Debian
sudo apt-get install apt-transport-https

# 3. Save the repository definition
echo "deb https://artifacts.elastic.co/packages/6.x/apt stable main" | sudo tee -a /etc/apt/sources.list.d/elastic-6.x.list

# 4. Run update and install apm
sudo apt-get update && sudo apt-get install apm-server

# 5. Configure automatic start
# sudo update-rc.d apm-server defaults 95 10