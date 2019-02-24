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
                sh 'sudo cp /opt/vars.tf ./terra/'
            }
        }
        stage('terraform init') {
            steps {
                sh 'sudo /usr/bin/terraform init ./terra'
            }
        }
        stage('terraform plan') {
            steps {
                sh 'ls ./terra; sudo /usr/bin/terraform plan ./jenkins'
            }
        }
        stage('terraform ended') {
            steps {
                sh 'echo "Ended....!!"'
            }
        }

        
    }
}
