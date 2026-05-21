pipeline {
    agent any

    triggers {
        cron('*/2 * * * *')
    }

    stages {

        stage('Clone') {
            steps {
                git 'https://github.com/yourusername/repository.git'
            }
        }

        stage('Build') {
            steps {
                sh 'mvn clean package'
            }
        }

        stage('Docker Build') {
            steps {
                sh 'docker build -t java-maven-app .'
            }
        }

        stage('Run Container') {
            steps {
                sh 'docker stop java-container || true'
                sh 'docker rm java-container || true'
                sh 'docker run -d -p 8080:8080 --name java-container java-maven-app'
            }
        }
    }
}
