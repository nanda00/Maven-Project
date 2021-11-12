FROM tomcat:8
COPY /var/lib/jenkins/workspace/pipeline/webapp/target/webapp.war /usr/local/tomcat/webapps/webapp.war
