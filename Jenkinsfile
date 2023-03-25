pipeline {
    agent any

    stages {
        stage("checkout Terraform Project") {
            steps {
                checkout scmGit(branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/SurajS0077/Terraform-Automation.git']])
            }
        }
    
        stage ("terraform init") {
            steps {
                sh ('terraform init -reconfigure') 
            }
        }
        
        stage ("plan") {
            steps {
                sh ('terraform plan') 
            }
        }

        stage (" Action") {
            steps {
                echo "Terraform action is --> ${action}"
                sh ('terraform ${action} --auto-approve') 
           }
        }
    }
}
