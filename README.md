Server for outage pages for UMich T&L applications
==================================

This project serves up static outage pages for University of
Michigan Teaching and Learning projects via apache.

The pages are referenced as:
<code> https://&lt;host&gt;/&lt;name&gt;.html</code>

Since the pages are meant to be used when the system is not available
they must be available on a separate server and must be
self-contained.

The project can be run in a local docker using the <code>run\_local\_docker.sh</code>
script.  This script arranges to make available resources that are
handled by OpenShift but aren't supplied directly by docker.  By convention
the resources that must be supplied are placed in the _external_
directory. The  pages servered by Docker are available with a url like
[http://localhost:8080/cpm-outage.html](http://localhost:8080/outage/cpm-outage.html)

