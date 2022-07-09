pipeline {
    // tools {
    //    terraform 'TF'
    // }
    agent none
    stages {
        // stage("Fix the permission issue") {
        //     agent {
        //         node {
        //             label 'master'
        //         }
        //     }
        //     steps {
        //         sh "sudo chown root:ubuntu /run/docker.sock"
        //     }
        // }
        stage('Git checkout') {
             agent {
                docker { 
                    image 'node:16-alpine'
                    reuseNode true
                }
            } 
           steps {
                git branch: 'Testing_container', credentialsId: 'Github', url: 'https://github.com/blackbow47/TF-test.git'
                // docker: exec -it --user root $CONTAINER_ID sh
                // sh 'apk add sudo'
                sh 'mkdir new_dir'
                sh 'cd new_dir'
                sh 'touch anewfile'
                sh 'ls -alh'
                sh 'echo hello-world'
                sh 'pwd'
                // sh 'wget https://releases.hashicorp.com/terraform/0.12.21/terraform_0.12.21_linux_amd64.zip'
                // sh 'unzip -o terraform_0.12.21_linux_amd64.zip && rm terraform_0.12.21_linux_amd64.zip'
                // sh 'mv terraform /usr/bin/terraform'
                // sh 'terraform fmt'
                // sh 'terraform init'
                // sh 'terraform apply --auto-approve'
            }
        }
        // stage('terraform format check') {
        //     steps{
        //         sh 'terraform fmt'
        //     }
        // }
        // stage('terraform Init') {
        //     steps{
        //         sh 'terraform init'
        //     }
        // }
        
        // stage('terraform apply') {
        //     steps{
        //         sh 'terraform apply --auto-approve'
        //     }
        // }
/*
        stage('terraform destroy') {
            steps{
                sh 'terraform destroy --auto-approve'
            }
        }
*/        

    }
}    