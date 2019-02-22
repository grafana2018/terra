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
                sh 'rm -rf *'
                sh 'git clone https://github.com/grafana2018/terra.git'
            }
        }
 
        stage('terraform init') {
            steps {
                sh 'pwd'
                sh 'cd terra'
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
