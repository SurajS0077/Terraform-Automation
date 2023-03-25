pipeline {
    agent any

    stages {
        stage("Checkout") {
            steps {
               checkout scmGit(branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/SurajS0077/Terraform-Automation.git']])
            }
        }
    
        stage ("terraform init") {
            steps {
                sh ('terraform init') 
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
