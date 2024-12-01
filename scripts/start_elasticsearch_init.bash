#!/bin/bash

# Start Elasticsearch with systemctl
/etc/init.d/elasticsearch start

# Test elasticsearch is running
echo "=========================="
echo "=========================="
echo "=========================="
echo "Elasticsearch service status"
/etc/init.d/elasticsearch status
echo "=========================="
echo "=========================="
echo "=========================="
read -p "Enter Elasticsearch endpoint or [localhost:9200] will be used:" endpoint
endpoint=${endpoint:-localhost:9200}
# echo $endpoint
curl -X GET $endpoint
