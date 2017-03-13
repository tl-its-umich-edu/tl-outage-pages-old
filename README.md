Server for static pages for UMich T&L applications
==================================

This project servers up static pages via apache for Univerity of
Michigan Teaching and Learning projects.

The pages are referenced as:
<code> https://&lt;host&gt;/outage/&lt;name&gt;.html</code>

The project can be run in a local docker using the <code>run\_local\_docker.sh</code>
script.  This script arranges to supply items that are made available
by OpenShift but aren't supplied directly by docker.  By convention
the resources that must be supplied are placed in the _staging_
directory. The local pages are available with a url like
[http://localhost:8080/outage/cpm-outage.html](http://localhost:8080/outage/cpm-outage.html)

