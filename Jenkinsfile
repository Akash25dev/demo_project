pipeline{
   agent any
         stages{
            stage(clone){
                   steps{
                     git 'https://github.com/Akash25dev/demo_project.git'
                   }
            }
            stage(build){
                   steps{
                     sh 'mvn install'
                   }
            }
            stage(deploy){
                   steps{
                     sh 'cp target/demo_project.war /home/akash/Documents/Maven/apache-tomcat-9.0.93/webapps'
                   }
            }
        }
}
