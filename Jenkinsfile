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
                     sh '/home/alex/apache-maven-3.8.8/mvn install'
                   }
            }
            stage(deploy){
                   steps{
                     sh 'cp target/demo_project.war /home/alex/apache-tomcat-9.0.93/webapps'
                   }
            }
        }
}
