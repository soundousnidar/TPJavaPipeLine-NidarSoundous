pipeline {
    agent {
        docker {
            image 'my-maven-git:latest'
            args '-v $HOME/.m2:/root/.m2'
        }
    }

    stages {
        stage('Checkout') {
            steps {
                echo 'Code already checked out by Jenkins from GitHub'
            }
        }

        stage('Build') {
            steps {
                script {
                    def currentDir = pwd()
                    echo "Current directory: ${currentDir}"
                    
                    dir('java-maven') {
                        sh 'mvn clean test package'
                        sh 'java -jar target/java-maven-1.0-SNAPSHOT.jar'
                    }
                }
            }
        }
    }
}