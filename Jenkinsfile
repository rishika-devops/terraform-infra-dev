pipeline {
    agent {
        node {
            label 'Agent-1'
        }
    }
    options {
        ansiColor('xterm')
    }
    stages {
        stage('vpc') { 
            steps {
                sh """
                  cd 01-vpc
                  terraform init -reconfigure
                  terraform apply -auto-approve
                """  
            }
        }
        stage('sg') { 
            steps {
                sh """
                  cd 02-vpc
                  terraform init -reconfigure
                  terraform apply -auto-approve
                """  
            }
        }
        stage('vpn') { 
            steps {
                sh """
                  cd 03-vpc
                  terraform init -reconfigure
                  terraform apply -auto-approve
                """  
            }
        }
        stage('db alb') { 
            parallel{
                stage('db'){
                  steps {
                sh """
                  cd 04-databases
                  terraform init -reconfigure
                  terraform apply -auto-approve
                """  
                   }
                }
                stage('alb'){
                  steps {
                sh """
                  cd 05-app-alb
                  terraform init -reconfigure
                  terraform apply -auto-approve
                """  
            }
        }
        
        }
        }
    }
    post {
        always {
            echo " i will always say hello again"
        }
        failure {
            echo " this runs when pipeline is failed , used generally to send some alerts"
        }
        success {
            echo " i will say hello when pipeline is success"
        }
    }
}


