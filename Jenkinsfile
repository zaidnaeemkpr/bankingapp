pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                echo "Cloning repository..."
                checkout scm
            }
        }

        stage('Build') {
            steps {
                echo "Simulating build step..."
                bat 'echo Building BankingApp && dir'
            }
        }

        stage('Test') {
            steps {
                echo "Running test step..."
                bat 'echo Running PowerShell test && powershell -File tests/test-index.ps1'
            }
        }

        stage('Deploy') {
            steps {
                echo "Simulating deploy step..."
                bat 'echo Deploying BankingApp to localhost'
            }
        }
    }
}
