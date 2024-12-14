#!/bin/bash

# Install a specific version
while getopts v: value
do
    case "${value}"
        in
        v)version=${OPTARG};;
    esac
done
echo "Logstash version=$version"

if [[ ! -z "$version" ]]
then
    apt install logstash=$version
else
    apt install logstash
fi
