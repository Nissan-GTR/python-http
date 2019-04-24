# Pull base image
From tomcat:8.0

# Maintainer
MAINTAINER "Balu clever.gtr@gmail.com"

# Copy to images tomcat path
ADD tomcat-users.xml /usr/local/tomcat/conf/
ADD ./target/OPSWebappGT.war /usr/local/tomcat/webapps/
