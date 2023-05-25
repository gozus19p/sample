pipeline {
    agent { dockerfile true }
    stages {
        stage('build') {
            steps {
                sh 'poetry --version'
            }
        }
    }
}