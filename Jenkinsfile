pipeline{
   agent{
    label 'slave-lable'
   }
         stages{
            stage(clone){
                   steps{
                     git 'https://github.com/Akash25dev/demo_project.git'
                   }
            }
            stage(build){
                   steps{
                     sh 'JAVA_HOME=/home/alex/jdk-11.0.24 /home/alex/apache-maven-3.8.8/bin/mvn install'
                   }
            }
            stage(deploy){
                   steps{
                     sh 'cp target/demo_project.war /home/alex/apache-tomcat-9.0.93/webapps'
                   }
            }
        }
}
