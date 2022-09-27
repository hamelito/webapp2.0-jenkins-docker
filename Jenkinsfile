pipeline {
    agent {
        docker
    }

    options {
        skipStagesAfterUnstable()
    }

    stages {

        stage('Clone repository') { 
            steps { 
                script{
                checkout scm
                }
            }
        }

        stage('Build') { 
            steps { 
                script{
                 app = docker.build('webapp.image:2.0')
                }
            }
        }

        stage('Image') { 
            steps { 
                script{
                 sh 'docker images'
                }
            }
        }

        stage('Run') {
            steps {
                script{
                  app = docker.image('webapp.image:2.0').withRun('-it -d -p 80:80') { c ->
                  sh 'docker ps' 
                  }
                }
            }    
        }
    }    
}