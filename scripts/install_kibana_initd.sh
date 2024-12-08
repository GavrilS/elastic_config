#!/bin/bash

# Install a specific version
while getopts v: value
do
    case "${value}"
        in
        v)version=${OPTARG};;
    esac
done
echo "$version"
if [[ ! -z "$version" ]]
then
    apt install kibana=$version
else
    apt install kibana
fi

# Start Kibana service
/etc/init.d/kibana start

# Show kibana status
/etc/init.d/kibana status
