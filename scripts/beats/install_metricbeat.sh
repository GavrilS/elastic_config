#!/bin/bash

# Install a specific version
while getopts v: value
do
    case "${value}"
        in
        v)version=${OPTARG};;
    esac
done
echo "Metricbeat version=$version"

if [[ -z "$version" ]]
then
    echo "No version was specified. Rerun the script with the -v flag set to the metricbeat version you want to install"
else
    curl -L -O https://artifacts.elastic.co/downloads/beats/metricbeat/metricbeat-$version-linux-x86_64.tar.gz
    tar xzvf metricbeat-$version-linux-x86_64.tar.gz
    rm metricbeat-$version-linux-x86_64.tar.gz
    mv metricbeat-$version-linux-x86_64 /etc/metricbeat
fi
