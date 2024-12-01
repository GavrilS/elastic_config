#!/bin/bash

# Enable Elasticsearch if first time running
if [[ $1 = "enable" ]]
then
    systemctl enable elasticsearch
fi

# Start Elasticsearch with systemctl
systemctl start elasticsearch

# Test elasticsearch is running
echo "=========================="
echo "=========================="
echo "=========================="
echo "Elasticsearch service status"
systemctl status elasticsearch
echo "=========================="
echo "=========================="
echo "=========================="
read -p "Enter Elasticsearch endpoint or [localhost:9200] will be used:" endpoint
endpoint=${endpoint:-localhost:9200}
curl -X GET $endpoint
