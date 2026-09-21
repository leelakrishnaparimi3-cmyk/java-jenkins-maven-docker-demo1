pipeline {
    agent any

    stages {

        stage('Build with Maven') {
            steps {
                bat 'mvn clean package'
            }
        }

        stage('Build Docker Image') {
            steps {
                bat 'docker build -t java-jenkins-maven-docker-demo .'
            }
        }

        stage('Run Docker Container') {
            steps {
                bat 'docker rm -f java-demo || true'
                bat 'docker run --name java-demo java-jenkins-maven-docker-demo'
            }
        }
    }
}