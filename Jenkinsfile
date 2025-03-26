pipeline {
    agent any

    stages {
        stage('Clone Repo') {
            steps {
                git 'https://github.com/yourusername/jagadesh-ci-cd.git'
            }
        }

        stage('Build') {
            steps {
                sh 'mvn clean package'
            }
        }

        stage('Code Quality Check') {
            steps {
                sh 'mvn sonar:sonar -Dsonar.projectKey=jagadesh-app'
            }
        }

        stage('Push to Nexus') {
            steps {
                sh 'mvn deploy'
            }
        }

        stage('Docker Build & Push') {
            steps {
                sh 'docker build -t your-dockerhub-username/myapp:latest .'
                sh 'docker push your-dockerhub-username/myapp:latest'
            }
        }

        stage('Deploy to Kubernetes') {
            steps {
                sh 'kubectl apply -f k8s/'
            }
        }
    }
}

