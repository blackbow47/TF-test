pipeline {
  agent {
    docker { image 'node:16-alpine' }
  }
    // tools {
    //    terraform 'TF'
    // }
    stages {
        stage("Fix the permission issue") {

            agent any

            steps {
                sh "sudo chown root:jenkins /run/docker.sock"
            }

        }
        stage('Git checkout') {
           steps{
                git branch: 'Testing_container', credentialsId: 'Github', url: 'https://github.com/blackbow47/TF-test.git'
                // docker: exec -it --user root $CONTAINER_ID sh
                // sh 'apk add sudo'
                sh 'wget https://releases.hashicorp.com/terraform/0.12.21/terraform_0.12.21_linux_amd64.zip'
                sh 'unzip terraform_0.12.21_linux_amd64.zip && rm terraform_0.12.21_linux_amd64.zip'
                sh 'mv terraform /usr/bin/terraform'
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