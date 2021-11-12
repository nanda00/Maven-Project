FROM tomcat:8
COPY /var/lib/jenkins/workspace/pipeline/webapp/target/. /usr/local/tomcat/webapps/.
