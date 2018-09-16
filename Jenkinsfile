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
                sh 'sudo rm -r *'
                sh 'sudo git clone https://github.com/grafana2018/terra.git'
            }
        }
        stage('terraform init') {
            steps {
                sh 'sudo /var/lib/jenkins/workspace/terraform/terraform init ./jenkins'
            }
        }
        stage('terraform plan') {
            steps {
                sh 'ls ./jenkins; sudo /var/lib/jenkins/workspace/terraform/terraform plan ./jenkins'
            }
        }
        stage('terraform ended') {
            steps {
                sh 'echo "Ended....!!"'
            }
        }

        
    }
}
