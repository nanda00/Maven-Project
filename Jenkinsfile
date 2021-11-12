node('master'){
   def
      JAVA_HOME='/usr/lib/jvm/java-1.8.0-openjdk'
      M2_HOME='/opt/apache-maven'
   stage('Download'){
      git'https://github.com/yoganandamarupudi/Maven-Project.git'
   }
   stage('Build'){
      sh"${M2_HOME}/bin/mvn package"
   }
   stage('Copy artifact to S3'){
      withCredentials([[
         $class: 'AmazonWebServicesCredentialsBinding', 
         credentialsId: 'AWS Cred'
      ]]){
            sh 'aws s3 cp /var/lib/jenkins/workspace/pipeline/webapp/target/webapp.war s3://yoga59builds'
         }
   }
}
