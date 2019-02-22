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
                sh 'sudo rm -r *;sudo git clone https://github.com/grafana2018/terra.git'
            }
        }
      #  stage('tfsvars create'){
      #      steps {
      #          sh 'pwd'
      #          sh 'sudo cp /home/ec2-user/vars.tf ./jenkins/'
      #      }
      #  }
        stage('terraform init') {
            steps {
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
