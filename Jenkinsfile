pipeline {
    environment {
        registry = "premdocker1990/project20"
        registryCredential = dockercred
        dockerDevImage = ''
        dockerProdImage = ''
    }
    agent any 
    stages {
        stage('Cloning Git') {
            steps {
                git 'https://github.com/prem2806/testproject.git'
            }    
        }
        stage('Building Development Image') {
            steps {
                script {
                    dockerDevImage = docker.build registry
                }
            }    
        }
        stage('Building Production Image') {
            steps {
                script {
                    dockerProdImage = docker.build registry
                }
            }    
        }
        stage('Test Build') {
                agent {
                docker { image 'premdocker1990/project20' }
            }
        }
        stage('Deploy Image') {
            steps {
                script {
                    docker.withRegistry('', registryCredential) {
                    dockerDevImaage.push('Development')
                    dockerProdImage.push('production')
                    }
                }  
            }
        }
    }
}
