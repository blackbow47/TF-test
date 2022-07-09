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
                sh 'apt-get update && sudo apt-get install -y gnupg software-properties-common curl'
                sh 'curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add -'
                sh 'apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main"'
                sh 'apt-get update && sudo apt-get install terraform'

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