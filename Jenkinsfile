pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                sh 'make' 
                archiveArtifacts artifacts: '**/Jenkinsfile.groovy', fingerprint: true 
            }
        }
    }
}
