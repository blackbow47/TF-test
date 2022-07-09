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
                sh 'apk add sudo'
                sh 'wget https://releases.hashicorp.com/terraform/0.12.21/terraform_0.12.21_linux_amd64.zip'
                sh 'unzip terraform_0.12.21_linux_amd64.zip && rm terraform_0.12.21_linux_amd64.zip'
                sh 'sudo mv terraform /usr/bin/terraform'
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