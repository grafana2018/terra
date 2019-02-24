pipeline {
    agent {
        node {
            label 'master'
        }
    }

    stages {

        stage('TF started') {
            steps {
                sh 'echo "Started...!" '
            }
        }
        stage('SCM checkout') {
            steps {
                sh 'sudo rm -r *;sudo git clone https://github.com/grafana2018/terra.git'
            }
        }
        stage('TF init') {
            steps {
                sh 'sudo /usr/bin/terraform init ./terra'
            }
        }
        stage('TF plan') {
            steps {
                sh 'ls ./terra; sudo /usr/bin/terraform plan ./terra'
            }
        }
        stage('TF apply') {
            steps {
                sh 'ls ./terra; sudo /usr/bin/terraform apply -auto-approve ./terra'
            }
        }
        stage('TF ended') {
            steps {
                sh 'echo "Ended....!!"'
            }
        }  
    }
}
