pipeline {
    agent any 
    stages {
        stage('Development') {
            steps {
                sh 'docker build -t sample .'
                sh 'docker ps'
                sh 'docker run sample'
            }    
        }
        stage('Production') {
            steps {
                sh 'docker-compose up -d'
                sh 'docker images'
            }    
        }
    }
}
