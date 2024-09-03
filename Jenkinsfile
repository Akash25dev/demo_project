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
            stage('slackintegration'){
                   steps{
                     slackSend baseUrl: 'https://hooks.slack.com/services/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/', channel: '#jenkins-channel', color: 'good', message: 'Slack integration on Jenkins', teamDomain: 'grras', tokenCredentialId: 'bdec049d-d7de-499b-8ad1-e6c96e9fb1a6'
                   }
            }
        }
}
