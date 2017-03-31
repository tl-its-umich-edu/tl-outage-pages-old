#!/bin/bash
# run_local_docker will set up local environment so that we can run the same
# Dockerfile locally and on OpenShift.  Resources required locally are
# put in the external directory.

#set -x
# Make a common image tag for the build and the run.
TAG=outage_a

# Use this local file copy instead of the OpenShift secret so can run
# on localhost 8080.
cp $(pwd)/external/httpd.conf.8080 $(pwd)/external/httpd.conf

# Build the image, mount the local file, and set up the ports to expose.
# (Expose in the docker file is a suggestion and is overridden here.)
docker build -t ${TAG} . \
    && docker run -v $(pwd)/external:/tmp/apache-conf -p 8080:8080 ${TAG}

#end
