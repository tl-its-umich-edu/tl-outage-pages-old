Server for static pages for UMich T&L applications

To build run:
  docker build -t <tag> .

To run locally use:
  docker run <tag>


TTD:
Need to make  httpd available in container.  That may differ in OS
and Docker but the docker file should remain the same.

find httd config file in external for docker build
