pipeline {
    agent any
       triggers {
        pollSCM "* * *"
       }
    stages {
        stage('Provisioning EC2 Instance') { 
            steps {
                echo '=== Provisioning EC2 Instance ==='
                ./ec2.tf
            }
        }
        stage('Installing Ansible') {
            steps {
                echo '=== Installing Ansible ==='
            }
        }
        stage('Installing wget with Ansible') {
            steps {
                echo '=== Installing wget with Ansible ==='
            }
        }
	 }
}
