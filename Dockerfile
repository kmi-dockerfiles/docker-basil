FROM java:8
RUN mkdir /basil 
COPY basil.ini db.sql log4j2.xml run.sh basil-server-0.3.2.jar /basil/
WORKDIR /basil/
RUN apt-get -y update && apt-get install -y mysql-client 
CMD ["/run.sh"]
