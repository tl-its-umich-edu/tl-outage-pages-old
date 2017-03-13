#!/bin/bash
# Script to build and run using local docker.
# Needs to supply things that OpenShift would normally supply.
# By convention the "staging" directory is used to temporarily hold
# items that the local docker build may require.

TAG=outage_a

EXTERNAL_VOLUMES=" -v $(PWD)/staging:/tmp/apache-conf "
PORTS=" -p 8080:8080 "

#set -x
#docker build -t outage_a . \
    #    && docker run -v $(PWD)/external:/tmp/apache-conf -p 8080:8080 outage_a

docker build -t ${TAG} . \
    && docker run ${EXTERNAL_VOLUMES} ${PORTS} ${TAG}
#end
