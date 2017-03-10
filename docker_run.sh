#!/bin/bash
set -x
docker build -t outage_a . \
    && docker run -v $(PWD)/external:/tmp/apache-conf -p 8080:8080 outage_a 
#    && docker run -v $(PWD)/external:/tmp/apache-conf -p 443:543 outage_a 
#end
