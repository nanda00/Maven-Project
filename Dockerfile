FROM tomcat:8
COPY /var/lib/jenkins/workspace/pipeline/webapp/target/*.war /usr/local/tomcat/webapps
