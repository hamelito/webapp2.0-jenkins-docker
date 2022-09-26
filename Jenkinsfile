pipeline {
    agent {
        docker {
            def app

                stage('Clone') {
                  checkout scm
                }
 
                stage('Build image') {
                   app = docker.build("webapp:2.0")
                }

                stage('Run image') {
                   docker.image('webapp:2.0').withRun('-p 80:80') { c ->
                }
                }
                

        }
    }         
}    

