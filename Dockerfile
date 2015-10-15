# lappsgrid/evaluation
#
# This image extends the tomcat7 image and adds the Lapps services running
# on the Vassar node.

FROM lappsgrid/tomcat7

ENV TERM=xterm

USER root
ADD ./EvaluationServices.war /var/lib/tomcat7/webapps/EvaluationServices.war

ADD ./startup.sh /usr/bin/startup

RUN chmod ug+x /usr/bin/startup
	
CMD ["/usr/bin/startup"]
