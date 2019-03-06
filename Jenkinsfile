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
                sh 'pwd'
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
        
        stage('Post build action') {
            steps {
               sh ' aws deploy update-deployment-group --application-name MQTTS-SREE --current-deployment-group-name produc-sree --ec2-tag-filters Key=TODAY,Value=NEWSERVER2019,Type=KEY_AND_VALUE --region us-east-1 --profile default'
            } 
            
        }
    }
}
