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
                sh 'cd terra'
                sh 'terraform --version'
                sh 'sudo /var/lib/jenkins/worstage('terraform plan') {
            steps {
                sh 'ls ./jenkins; sudo /var/lib/jenkins/workspace/terraform/terraform plan ./terra'
            }
        }
        stage('terraform ended') {
            steps {
                sh 'echo "Ended....!!"'
            }
        }kspace/terraform/terraform init ./terra'
                
            }
        }
        

        
    }
}
