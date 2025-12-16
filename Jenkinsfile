pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                sh 'rm -rf java-maven || true'
                sh 'git clone https://github.com/simoks/java-maven.git'
            }
        }

        stage('Build') {
            steps {
                script {
                    def currentDir = pwd()
                    echo "Current directory: ${currentDir}"
                    dir('java-maven/maven') {
                        sh 'mvn clean test package'
                        sh 'java -jar target/maven-0.0.1-SNAPSHOT.jar'
                    }
                }
            }
        }
    }
}