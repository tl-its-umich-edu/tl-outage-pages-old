FROM httpd:2.4

EXPOSE 443
#EXPOSE 80

RUN rm /usr/local/apache2/htdocs/index.html

COPY content/ /usr/local/apache2/htdocs/

### Start script incorporates config files and sends logs to stdout ###
COPY start.sh .
RUN chmod +x start.sh

CMD /usr/local/apache2/start.sh