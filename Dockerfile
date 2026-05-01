FROM tomcat:9.0-jdk17
WORKDIR /usr/local/tomcat/webapps
COPY target/myweb.war ROOT.war
EXPOSE 8080
CMD ["catalina.sh", "run"]
