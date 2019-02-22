pipeline {
    agent {
        node {
            label 'master'
        }
    }

    stages {

        stage('terraform started') {
            steps {
                sh 'echo "Started...!" '
            }
        }
        stage('git clone') {
            steps {
                sh 'sudo rm -r *;sudo git clone https://github.com/grafana2018/terra.git'
            }
        }
        stage('tfsvars create'){
            steps {
                sh 'sudo cp /var/lib/jenkins/workspace/vars.tf ./terra/'
            }
        }
        stage('terraform init') {
            steps {
                sh 'sudo terraform init ./terra'
            }
        }
        stage('terraform plan') {
            steps {
                sh 'ls ./jenkins; sudo terraform plan ./terra'
            }
        }
        stage('terraform ended') {
            steps {
                sh 'echo "Ended....!!"'
            }
        }

        
    }
}
