pipeline {
    agent any

    stages {

        stage('Build with Maven') {
            steps {
                sh 'mvn clean package'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t java-jenkins-maven-docker-demo .'
            }
        }

        stage('Run Docker Container') {
            steps {
                sh 'docker rm -f java-demo || true'
                sh 'docker run --name java-demo java-jenkins-maven-docker-demo'
            }
        }
    }
}