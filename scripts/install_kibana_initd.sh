#!/bin/bash

# Install Kibana
apt install kibana

# Start Kibana service
/etc/init.d/kibana start

# Show kibana status
/etc/init.d/kibana status
