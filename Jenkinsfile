node{
    checkout scm
    def app

        stage('Build image') {
          app = docker.build("webapp:2.0")
        }   

        stage('Run image') {
          docker.image("webapp:2.0").withRun('-p 80:80') { c ->
          sh 'docker ps'
          sh 'curl localhost'

        }

        }
    
}