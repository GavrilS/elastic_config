#!/bin/bash

# Import Elasticsearch public GPG key into APT
curl -fsSL https://artifacts.elastic.co/GPG-KEY-elasticsearch | sudo apt-key add -

# Add Elastic source list to the 'source.list.d' directory, where APT will search for new sources
echo "deb https://artifacts.elastic.co/packages/7.x/apt stable main" | sudo tee -a /etc/apt/sources.list.d/elastic-7.x.list

# Update the package list so APT will read the new Elastic source
apt update

# Install Elastic
apt install elasticsearch
