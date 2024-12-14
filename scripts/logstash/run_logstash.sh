#!/bin/bash

if [[ $1 = "test" ]]
then
    -u logstash /usr/share/logstash/bin/logstash --path.settings /etc/logstash -t
fi
