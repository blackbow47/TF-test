pipeline {
  agent {
    docker { image 'node:16-alpine' }
  }
    // tools {
    //    terraform 'TF'
    // }
    stages {
        stage('Git checkout') {
           steps{
                git branch: 'main', credentialsId: 'Github', url: 'https://github.com/blackbow47/TF-test.git'
            }
        }
        stage('terraform format check') {
            steps{
                sh 'terraform fmt'
            }
        }
        stage('terraform Init') {
            steps{
                sh 'terraform init'
            }
        }
        
        stage('terraform apply') {
            steps{
                sh 'terraform apply --auto-approve'
            }
        }
/*
        stage('terraform destroy') {
            steps{
                sh 'terraform destroy --auto-approve'
            }
        }
*/        

    }
}    