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
        stage('terraform init') {
            steps {
                sh 'sudo terraform init ./terra/'
            }
        }
        stage('terraform plan') {
            steps {
                sh 'sudo terraform plan ./terra/'
            }
        }
        
         stage('terraform apply') {
            steps {
                sh 'sudo terraform apply ./terra/'
            }
        }
        
        stage('terraform ended') {
            steps {
                sh 'echo "Ended....!!"'
            }
        }

        
    }
}
