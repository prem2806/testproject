pipeline {
    agent any 
    stages {
        stage('Development') {
            steps {
                sh 'docker build .'
            }    
        }
        stage('Production') {
            steps {
                sh 'docker-compose -f docker-compose-prod.yml up -d'
                sh 'docker ps'
                sh 'docker images'
            }    
        }
    }
}