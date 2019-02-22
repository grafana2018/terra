pipeline {
    agent {
        node {
            label 'master'
        }
    }

    stages {

        stage('terraform started') {
            steps {
                sh 'pwd'
                sh 'echo "Started...!" '
            }
        }
        stage('git clone') {
            steps {
                sh 'pwd'
                sh 'whoami'
                sh 'sudo rm -r *;sudo git clone https://github.com/grafana2018/terra.git'
                sh 'pwd'
            }
        }
 
        stage('terraform init') {
            steps {
                sh 'pwd'
                sh 'cd /var/lib/jenkins/workspace/Terraform/terra'
                sh 'pwd'
                sh 'sudo terraform init'
            }
        }
        stage('terraform plan') {
            steps {
                sh 'sudo terraform plan'
            }
        }
        stage('terraform ended') {
            steps {
                sh 'echo "Ended....!!"'
            }
        }

        
    }
}
