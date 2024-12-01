#!/bin/bash

# Start Elasticsearch with systemctl
systemctl start elasticsearch

# Enable Elasticsearch if first time running
if [[ $1 = "enable" ]]
then
    systemctl enable elasticsearch
fi

# Test elasticsearch is running
read -p "Enter Elasticsearch endpoint or [localhost:9200] will be used:" endpoint
endpoint=${endpoint:-localhost:9200}
curl -X GET $endpoint
