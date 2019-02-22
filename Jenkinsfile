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
       
        stage('tfsvars create'){
            steps {
                sh 'sudo cp vars.tf ./terra/'
            }
        } 
        stage('terraform init') {
            steps {
                sh 'pwd'
                sh 'sudo terraform init ./terra/'
            }
        }
        stage('terraform plan') {
            steps {
                sh 'sudo terraform plan ./terra/'
            }
        }
        stage('terraform ended') {
            steps {
                sh 'echo "Ended....!!"'
            }
        }

        
    }
}
