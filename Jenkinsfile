pipeline {
    agent {
        node {
            label 'default'
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
                sh 'cd terra'
                sh 'terraform --version'
                sh 'which terraform'
                sh 'sudo /var/lib/jenkins/workspace/terraform/terraform init ./terra'
            }
        }
        stage('terraform plan') {
            steps {
                sh 'ls ./jenkins; sudo /var/lib/jenkins/workspace/terraform/terraform plan ./terra'
            }
        }
        stage('terraform ended') {
            steps {
                sh 'echo "Ended....!!"'
            }
        }

        
    }
}
