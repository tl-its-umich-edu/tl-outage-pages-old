#!/bin/bash
# run_local_docker will set up local environment so that we can run the same
# Dockerfile locally and on OpenShift.  Resources required locally are
# put in the external directory.

#set -x
# Make a common image tag for the build and the run.
TAG=outage_a

# Use this local file copy instead of the OpenShift secret so can run
# on localhost 8080.  This file is customized to run on a local docker
# instance.

# if no httpd.conf file exists create one.
if [[ ! -e $(pwd)/external/httpd.conf ]]; then
    cp $(pwd)/external/httpd.conf.local.8080 $(pwd)/external/httpd.conf
fi

# if the provided one is newer than the local httpd.conf copy over the local one.
 if [[ $(pwd)/external/httpd.conf.local.8080 -nt $(pwd)/external/httpd.conf ]]; then
     cp $(pwd)/external/httpd.conf.local.8080 $(pwd)/external/httpd.conf
 fi
 
# Build the image, mount the local file, and set up the ports to expose.
# (Expose in the docker file is a suggestion and is overridden here.)
#docker build -t ${TAG} . \
#    && docker run -v $(pwd)/external:/tmp/apache-conf -p 8080:8080 ${TAG}

#end
