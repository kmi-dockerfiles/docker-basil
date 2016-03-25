FROM java:8

ENV BASIL_VERSION 0.3.2

ADD basil.ini db.sql log4j2.xml mysql-check.sh /basil/
WORKDIR /basil/
RUN apt-get -y update \
	&& apt-get install -y mysql-client \
	&& curl -SL "https://github.com/the-open-university/basil/releases/download/v$BASIL_VERSION/basil-server-$BASIL_VERSION.jar" -o basil-server.jar 

EXPOSE 8080

CMD ls \
	&& echo "Waiting for Mysql startup..." \
	&& sleep 7 \
	&& /bin/bash mysql-check.sh \
	&& java -jar -Dbasil.configurationFile=basil.ini -Dlog4j.configurationFile=log4j2.xml basil-server.jar -p 8080 

